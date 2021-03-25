unit frmEvalAlgorithm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHTTP, uFunction, Vcl.ExtCtrls, acImage, jpeg,
  scControls, scGPControls, uFileProc, IdMultipartFormData, System.IniFiles,
  System.JSON, Vcl.StdCtrls, Vcl.Mask, scGPExtControls, IdCoderMIME, uConst;

type
  TEvalAlgorithm = class(TForm)
    scPanel1: TscPanel;
    scPanel2: TscPanel;
    img: TsImage;
    btnNext: TscGPButton;
    edtTN: TscGPSpinEdit;
    edtFP: TscGPSpinEdit;
    lblTotalFileCount: TscGPLabel;
    lblTotal: TLabel;
    btnPrev: TscGPButton;
    scGPLabel1: TscGPLabel;
    lblCurrentIndex: TLabel;
    scGPLabel2: TscGPLabel;
    scGPLabel3: TscGPLabel;
    scGPLabel4: TscGPLabel;
    edtFN: TscGPSpinEdit;
    scGPLabel5: TscGPLabel;
    edtTP: TscGPSpinEdit;
    btnCalc: TscGPButton;
    scGPLabel6: TscGPLabel;
    lblSensitivity: TLabel;
    scGPLabel7: TscGPLabel;
    lblPrecision: TLabel;
    scGPLabel8: TscGPLabel;
    lblAccuracy: TLabel;
    scGPLabel9: TscGPLabel;
    lblFscore: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    edtIndex: TscEdit;
    btnLoad: TscGPGlyphButton;
    cbType: TscGPComboBox;
    procedure btnLoadClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure cbTypeChange(Sender: TObject);
  private
    function GetURL: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EvalAlgorithm: TEvalAlgorithm;
  FFolderName: string;
  FImageFileList: TStringList;
  FCurrentIndex: Integer;
  FOldTP, FOldTN, FOldFP, FOldFN: Integer;

implementation

{$R *.dfm}

procedure TEvalAlgorithm.btnLoadClick(Sender: TObject);
var
  slAllFiles: TStringList;
  slTargetPaths: TStringList;
  i: Integer;
begin
  with TFileOpenDialog.Create(nil) do
  try
    Title := 'Select Directory';
    Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem]; // YMMV
    DefaultFolder := GetCurrentDir;
    FileName := GetCurrentDir;
    if Execute then
    begin
      if TButton(Sender).Name = 'btnLoad' then
        FFolderName := FileName;
    end
    else
    begin
      Exit;
    end;
  finally
    Free;
  end;

  slAllFiles := TStringList.Create;
  slTargetPaths := TStringList.Create;
  try
    slAllFiles.Add('jpg');
    slAllFiles.Add('bmp');
    slAllFiles.Add('png');
//    slTargetPaths.Add(ExtractFilePath(Application.ExeName)+'testImg\');
    slTargetPaths.Add(FFolderName+'\');
    FImageFileList.Clear;
    try
      for i := 0 to slTargetPaths.Count - 1 do
      begin
        DoSearch(slTargetPaths.Strings[i], slAllFiles, FImageFileList);
      end;
    finally
    end;

    FCurrentIndex := -1;
    lblTotal.Caption := IntToStr(FImageFileList.Count);
    lblCurrentIndex.Caption := IntToStr(FCurrentIndex+1);

    // Image별 Fscore 계산용 배열
    SetLength(FEvalArray, FImageFileList.Count);
  finally
    FreeAndNil(slTargetPaths);
    FreeAndNil(slAllFiles);
  end;
end;

procedure TEvalAlgorithm.btnNextClick(Sender: TObject);
var
  bmp: TBitmap;
  jpg: TJPEGImage;
  ms: TMemoryStream;
  ResString: string;
  UriString, SubStr: string;
  i: Integer;
  PostStream: TIdMultiPartFormDataStream;
  obj: TJSONObject;
  rows, resImg, valWidth, valHeight, valCategory, valScore: TJSONValue;
  tmpTN: Double;
begin
  if lblTotal.Caption = '0' then Exit;
  if FCurrentIndex = FImageFileList.Count-1 then Exit;

  tmpTN := 0;

  // 현재 TP, TN, FP, FN, Precision, Recall, FScore
  if FCurrentIndex >= 0 then
  begin
    FEvalArray[FCurrentIndex].TP := edtTP.ValueAsInt;
    FEvalArray[FCurrentIndex].FP := edtFP.ValueAsInt;
    FEvalArray[FCurrentIndex].FN := edtFN.ValueAsInt;
    FEvalArray[FCurrentIndex].TN := edtTN.ValueAsInt;

    FEvalArray[FCurrentIndex].Precision := 0;
    FEvalArray[FCurrentIndex].Recall    := 0;
    FEvalArray[FCurrentIndex].Accuracy  := 0;
    FEvalArray[FCurrentIndex].FScore    := 0;

    if (edtTP.ValueAsInt > 0) or (edtFP.ValueAsInt > 0) then
      FEvalArray[FCurrentIndex].Precision := StrToFloat(FloatToStrF(edtTP.ValueAsInt / (edtTP.ValueAsInt + edtFP.ValueAsInt), ffNumber, 4, 2));
    if (edtTP.ValueAsInt > 0) or (edtFN.ValueAsInt > 0) then
      FEvalArray[FCurrentIndex].Recall    := StrToFloat(FloatToStrF(edtTP.ValueAsInt / (edtTP.ValueAsInt + edtFN.ValueAsInt), ffNumber, 4, 2));
    if (edtTP.ValueAsInt > 0) or (edtFP.ValueAsInt > 0) or (edtFN.ValueAsInt > 0) or (edtTN.ValueAsInt > 0) then
    begin
      tmpTN := (edtTP.ValueAsInt + edtTN.ValueAsInt) / (edtTP.ValueAsInt + edtFP.ValueAsInt + edtFN.ValueAsInt + edtTN.ValueAsInt);
      FEvalArray[FCurrentIndex].Accuracy  := StrToFloat(FloatToStrF(tmpTN, ffNumber, 4, 2));
    end;
    if (edtTP.ValueAsInt > 0) or (edtFP.ValueAsInt > 0) or (edtFN.ValueAsInt > 0) then
      FEvalArray[FCurrentIndex].FScore  := StrToFloat(FloatToStrF(2*edtTP.ValueAsInt / (2*edtTP.ValueAsInt + edtFP.ValueAsInt + edtFN.ValueAsInt), ffNumber, 4, 2));
  end;

  // Init
  edtTP.Value := 0; edtFP.Value := 0; edtFN.Value := 0; edtTN.Value := 0;

  UriString := GetURL;

  if (Trim(edtIndex.Text) <> '0') and (Trim(edtIndex.Text) <> '') then FCurrentIndex := StrToInt(edtIndex.Text)-1;

  Inc(FCurrentIndex);
  SubStr := FImageFileList[FCurrentIndex];
  Edit1.Text := ExtractFileName(SubStr);
  lblCurrentIndex.Caption := IntToStr(FCurrentIndex + 1);

  PostStream := TIdMultiPartFormDataStream.Create;
  bmp := TBitmap.Create;
  jpg := TJPEGImage.Create;
  ms := TMemoryStream.Create;

  try
    // 원본크롭
    PostStream.AddFormField('model','car_multi_sml_200000','',sContentTypeFormData);
    PostStream.AddFile('file',SubStr,sContentTypeFormData);
    // 전송하는 부분
    ResString := HTTPUploadFile(UriString, PostStream);

    try
      obj := TJSONObject.ParseJSONValue(ResString) as TJSONObject;
      if obj = nil then raise Exception.Create('Error parsing JSON');

      try
        resImg := obj.Get('frame').JsonValue;
        TIdDecoderMIME.DecodeStream(resImg.Value, ms);
        ms.Position := 0;
        img.Picture.LoadFromStream(ms);
      finally
        ms.Free;
      end;

      try
        valWidth := obj.Get('width').JsonValue;
        valHeight := obj.Get('height').JsonValue;
        rows := obj.Get('objs').JsonValue;
//        val := TJSONObject(TJSONArray(rows).Get(0)).Get('score').JsonValue;

        for i := 0 to TJSONArray(rows).Count - 1 do
        begin
          valCategory := TJSONObject(TJSONArray(rows).Get(i)).Get('category_name').JsonValue;
          valScore := TJSONObject(TJSONArray(rows).Get(i)).Get('score').JsonValue;

          FEvalArray[FCurrentIndex].Index := FCurrentIndex;
          FEvalArray[FCurrentIndex].FileName := ExtractFileName(SubStr);
        end;
//        edtTP.Value := StrToInt(edtTP.Text)+ TJSONArray(rows).Count;
        edtTP.Value := TJSONArray(rows).Count;
        edtFP.Value := 0;
        edtFN.Value := 0;
        if TJSONArray(rows).Count = 0 then
          edtTN.Value := 1
        else
          edtTN.Value := 0;
        FOldTP := TJSONArray(rows).Count;

      finally
        obj.Free;
      end;
    except
      on E : Exception do
      begin
        ShowMessage('Error' + sLineBreak + E.ClassName + sLineBreak + E.Message);
      end;
    end;
  finally
    jpg.Free;
    bmp.Free;
    PostStream.Free;
  end;
end;

procedure TEvalAlgorithm.btnPrevClick(Sender: TObject);
var
  bmp: TBitmap;
  jpg: TJPEGImage;
  ms: TMemoryStream;
  ResString: string;
  UriString, SubStr: string;
  i: Integer;
  PostStream: TIdMultiPartFormDataStream;
  obj: TJSONObject;
  rows, resImg, valWidth, valHeight, valCategory, valScore: TJSONValue;
begin
  if lblTotal.Caption = '0' then Exit;
  if FCurrentIndex <= 0 then Exit;
  
  UriString := GetURL;

//  edtTP.Value := edtTP.Value - FOldTP;
//  edtTP.Value := FOldTP;

  FCurrentIndex := FCurrentIndex - 1;
  SubStr := FImageFileList[FCurrentIndex];
  Edit1.Text := ExtractFileName(SubStr);
  lblCurrentIndex.Caption := IntToStr(FCurrentIndex + 1);
//  Inc(FCurrentIndex);

  PostStream := TIdMultiPartFormDataStream.Create;
  bmp := TBitmap.Create;
  jpg := TJPEGImage.Create;
  ms := TMemoryStream.Create;

  try
    // 원본크롭
    PostStream.AddFile('file',SubStr,sContentTypeFormData);
    // 전송하는 부분
    ResString := HTTPUploadFile(UriString, PostStream);

    try
      obj := TJSONObject.ParseJSONValue(ResString) as TJSONObject;
      if obj = nil then raise Exception.Create('Error parsing JSON');

      try
        resImg := obj.Get('frame').JsonValue;
        TIdDecoderMIME.DecodeStream(resImg.Value, ms);
        ms.Position := 0;
        img.Picture.LoadFromStream(ms);
      finally
        ms.Free;
      end;

      try
        valWidth := obj.Get('width').JsonValue;
        valHeight := obj.Get('height').JsonValue;
        rows := obj.Get('objs').JsonValue;
//        val := TJSONObject(TJSONArray(rows).Get(0)).Get('score').JsonValue;

        for i := 0 to TJSONArray(rows).Count - 1 do
        begin
          valCategory := TJSONObject(TJSONArray(rows).Get(i)).Get('category_name').JsonValue;
          valScore := TJSONObject(TJSONArray(rows).Get(i)).Get('score').JsonValue;
        end;
//        edtTP.Value := StrToInt(edtTP.Text)+ TJSONArray(rows).Count;
        edtTP.Value := TJSONArray(rows).Count;
        edtFP.Value := 0;
        edtFN.Value := 0;
        if TJSONArray(rows).Count = 0 then
          edtTN.Value := 1
        else
          edtTN.Value := 0;
      finally
        obj.Free;
      end;
    except
      on E : Exception do
      begin
        ShowMessage('Error' + sLineBreak + E.ClassName + sLineBreak + E.Message);
      end;
    end;
  finally
    jpg.Free;
    bmp.Free;
    PostStream.Free;
  end;
end;

procedure TEvalAlgorithm.cbTypeChange(Sender: TObject);
begin
  btnCalcClick(nil);
end;

procedure TEvalAlgorithm.FormCreate(Sender: TObject);
begin
  FImageFileList := TStringList.Create;
end;

function TEvalAlgorithm.GetURL : string;
var
  fileName: string;
  iniFile: TIniFile;
begin
  Result := '';
  fileName := ChangeFileExt(Application.ExeName,'.ini');

  iniFile := TIniFile.Create(fileName);
  try
    Result := iniFile.ReadString('DLSERVER','URL','http://59.8.199.154:6288/detect');
  finally
    FreeAndNil(iniFile);
  end;
end;

procedure TEvalAlgorithm.btnCalcClick(Sender: TObject);
var
  i, count: Integer;
  sumTP, sumFP, sumFN, sumTN: Integer;
  sumPrecision, sumRecall, sumAccuracy, sumFScore: Double;
  avrPrecision, avrRecall, avrAccuracy, avrFScore: Double;
  tmpTN: Double;
begin
  // Calculate
//  lblSensitivity.Caption := FloatToStrF(edtTP.Value / (edtTP.Value + edtFN.Value), ffNumber, 4, 2);
//  lblPrecision.Caption := FloatToStrF(edtTP.Value / (edtTP.Value + edtFP.Value), ffNumber, 4, 2);
//  lblAccuracy.Caption := FloatToStrF((edtTP.Value + edtTN.Value) / (edtTP.Value + edtFP.Value + edtFN.Value + edtTN.Value), ffNumber, 4, 2);
//  lblFscore.Caption := FloatToStrF(2*edtTP.Value / (2*edtTP.Value + edtFP.Value + edtFN.Value), ffNumber, 4, 2);
  count := 0; tmpTN := 0;
  sumTP := 0; sumFP := 0; sumFN := 0; sumTN := 0;
  sumPrecision := 0; sumRecall := 0; sumAccuracy := 0; sumFScore := 0;
  avrPrecision := 0; avrRecall := 0; avrAccuracy := 0; avrFScore := 0;

  if FCurrentIndex >= 0 then
  begin
    FEvalArray[FCurrentIndex].TP := edtTP.ValueAsInt;
    FEvalArray[FCurrentIndex].FP := edtFP.ValueAsInt;
    FEvalArray[FCurrentIndex].FN := edtFN.ValueAsInt;
    FEvalArray[FCurrentIndex].TN := edtTN.ValueAsInt;

    FEvalArray[FCurrentIndex].Precision := 0;
    FEvalArray[FCurrentIndex].Recall    := 0;
    FEvalArray[FCurrentIndex].Accuracy  := 0;
    FEvalArray[FCurrentIndex].FScore    := 0;

    if (edtTP.ValueAsInt > 0) or (edtFP.ValueAsInt > 0) then
      FEvalArray[FCurrentIndex].Precision := StrToFloat(FloatToStrF(edtTP.ValueAsInt / (edtTP.ValueAsInt + edtFP.ValueAsInt), ffNumber, 4, 2));
    if (edtTP.ValueAsInt > 0) or (edtFN.ValueAsInt > 0) then
      FEvalArray[FCurrentIndex].Recall    := StrToFloat(FloatToStrF(edtTP.ValueAsInt / (edtTP.ValueAsInt + edtFN.ValueAsInt), ffNumber, 4, 2));
    if (edtTP.ValueAsInt > 0) or (edtFP.ValueAsInt > 0) or (edtFN.ValueAsInt > 0) or (edtTN.ValueAsInt > 0) then
    begin
      tmpTN := (edtTP.ValueAsInt + edtTN.ValueAsInt) / (edtTP.ValueAsInt + edtFP.ValueAsInt + edtFN.ValueAsInt + edtTN.ValueAsInt);
      FEvalArray[FCurrentIndex].Accuracy  := StrToFloat(FloatToStrF(tmpTN, ffNumber, 4, 2));
    end;
    if (edtTP.ValueAsInt > 0) or (edtFP.ValueAsInt > 0) or (edtFN.ValueAsInt > 0) then
      FEvalArray[FCurrentIndex].FScore  := StrToFloat(FloatToStrF(2*edtTP.ValueAsInt / (2*edtTP.ValueAsInt + edtFP.ValueAsInt + edtFN.ValueAsInt), ffNumber, 4, 2));
  end;

  for i := 0 to Length(FEvalArray)-1 do
  begin
    if (FEvalArray[i].FileName = '') and (FEvalArray[i].TP = 0) and (FEvalArray[i].FP = 0) and (FEvalArray[i].FN = 0) then Continue;
    sumTP := sumTP + FEvalArray[i].TP;
    sumFP := sumFP + FEvalArray[i].FP;
    sumFN := sumFN + FEvalArray[i].FN;
    sumTN := sumTN + FEvalArray[i].TN;

    sumPrecision := sumPrecision + FEvalArray[i].Precision;
    sumRecall := sumRecall + FEvalArray[i].Recall;
    sumAccuracy := sumAccuracy + FEvalArray[i].Accuracy;
    sumFScore := sumFScore + FEvalArray[i].FScore;

    Inc(count);
  end;

  avrPrecision := sumPrecision / count;
  avrRecall := sumRecall / count;
  avrAccuracy := sumAccuracy / count;
  avrFScore := sumFScore / count;

  if cbType.ItemIndex = 0 then
  begin
    lblSensitivity.Caption := FloatToStrF(avrRecall, ffNumber, 4, 3);
    lblPrecision.Caption := FloatToStrF(avrPrecision, ffNumber, 4, 3);
    lblAccuracy.Caption := FloatToStrF(avrAccuracy, ffNumber, 4, 3);
    lblFscore.Caption := FloatToStrF(avrFScore, ffNumber, 4, 3);
  end
  else
  begin
    lblSensitivity.Caption := FloatToStrF(sumTP / (sumTP + sumFN), ffNumber, 4, 3);
    lblPrecision.Caption := FloatToStrF(sumTP / (sumTP + sumFP), ffNumber, 4, 3);
    tmpTN := (sumTP + sumTN) / (sumTP + sumFP + sumFN + sumTN);
    lblAccuracy.Caption  := FloatToStrF(tmpTN, ffNumber, 4, 3);
    lblFscore.Caption := FloatToStrF(2*sumTP / (2*sumTP + sumFP + sumFN), ffNumber, 4, 3);
  end;
end;

end.
