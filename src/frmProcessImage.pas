unit frmProcessImage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scGPControls, Vcl.StdCtrls, scControls, Vcl.ExtCtrls,
  ieview, imageenview, ievect, uFunction, uConst, System.JSON.Writers, JSON.Types,
  System.StrUtils, uFileProc, System.JSON.Readers, System.JSON, XMLDoc, XMLIntf, jpeg;

type
  TProcImage = class(TForm)
    scPanel1: TscPanel;
    btnNext: TscGPButton;
    btnPrev: TscGPButton;
    Edit1: TEdit;
    btnLoad: TscGPGlyphButton;
    scPanel2: TscPanel;
    ievImage: TImageEnVect;
    lblMousePoint: TLabel;
    btnRect: TscGPGlyphButton;
    btnDelete: TscGPGlyphButton;
    btnSelect: TscGPGlyphButton;
    btnExport: TscGPGlyphButton;
    lblCount: TscGPLabel;
    procedure FormCreate(Sender: TObject);
    procedure scGPButtonClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure ievImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ievImageNewObject(Sender: TObject; hobj: Integer);
    procedure ievImageObjectClick(Sender: TObject; hobj: Integer);
    procedure btnRectClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ievImageObjectMoveResize(Sender: TObject; hobj, Grip: Integer;
      var OffsetX, OffsetY: Integer);
    procedure btnExportClick(Sender: TObject);
    procedure ievImageKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure InitComp;
    procedure CreateButtons(aName: string);
    procedure ReleaseButtons;
    function LoadJson(JsonString: string; var Pictures: TSavedPictureArray): Boolean;
    function IsNewPicture(Pictures: TSavedPictureArray;  CurrentFile: string; var CurIndex: Integer): Boolean;
    procedure MakeJson(Pictures: TSavedPictureArray);
    procedure MakeJsonBoxes(Picture: TSavedPicture; var Writer: TJsonTextWriter;
      var inputTag: string);
    function SetSelObjColor(Sender: TObject): Boolean; overload;
    function SetSelObjColor(hobj: Integer = -1): Boolean; overload;
    function SetTagList(TagList: TStringList; var BoxList: TBoxInfoArray): Boolean;
    function SetButtonAsTagList(var TagList: TStringList; BoxList: TBoxInfoArray; hobj: Integer): Boolean;
    procedure SaveJson;
    { Private declarations }
  public
    { Public declarations }
    currentFile: string;
    btnDyn: array of TscGPButton;
    baBoxes, baBoxesOld: TBoxInfoArray;
    tagList: TStringList;
    savedPictures: TSavedPictureArray;
  end;

var
  ProcImage: TProcImage;
  FIDNum, FFrameNum: Integer;
  FFolderName: string;
  FImageFileList: TStringList;
  FCurrentIndex: Integer;

implementation

uses
  frmMain;

{$R *.dfm}

procedure TProcImage.FormCreate(Sender: TObject);
begin
  LoadObjColorListFromFile(ExtractFilePath(Application.ExeName) + 'ObjColorList.ini', FObjColorArray);

  CreateButtons('btnDyn');
  SetLength(baBoxes, 0);
  SetLength(savedPictures, 0);
  TagList := TStringList.Create;
  FImageFileList := TStringList.Create;

  FIDNum := 0;
  FFrameNum := 0;
end;

procedure TProcImage.FormDestroy(Sender: TObject);
begin
  if Assigned(TagList) then FreeAndNil(TagList);
  if Assigned(FImageFileList) then FreeAndNil(FImageFileList);
  ReleaseButtons;
end;

{$REGION 'Click Events'}
procedure TProcImage.scGPButtonClick(Sender: TObject);
var
  i, compcnt: Integer;
begin
  if TscGPButton(Sender).Tag = 0  then
  begin
    TscGPButton(Sender).Tag := 1;
    // Tag에 추가하여 나중에 박스정보에 태그 종류 추가
    TagList.Add(TscGPButton(Sender).Caption);
  end
  else
  begin
    TscGPButton(Sender).Tag := 0;
    // Tag삭제
    TagList.Delete(TagList.IndexOf(TscGPButton(Sender).Caption));
  end;
  SetscGPButtonColor(Sender);
  SetSelObjColor(Sender);
  SetTagList(TagList, baBoxes);
end;

procedure TProcImage.btnExportClick(Sender: TObject);
var
  i, j: Integer;
  OutputFolderName, jpgFileName, fileNameOnly: string;
  pbtxtFile: TextFile;
  slPbtxt, slValFileName, slTrainFile, slValFile: TStringList;
  xdSoft : TXMLDocument;
  xnRoot  : IXMLNode;
  xnChild : IXMLNode;
  xnGrandchild : IXMLNode;
  xnGrandchild2 : IXMLNode;
  tmpStr, tagName: string;
  valArray: array of Integer;
  iSizeOfValArray: Integer;
  jpg: TJPEGImage;
begin
  if not FileExists(FFolderName + '.json') then Exit;
  if Length(SavedPictures) = 0 then Exit;

  OutputFolderName := FFolderName+'_output';

  if not DirectoryExists(OutputFolderName) then
    CreateDir(OutputFolderName);
  if not DirectoryExists(OutputFolderName + PathDelim + FOLDER_ANNOTATION) then
    CreateDir(OutputFolderName + PathDelim + FOLDER_ANNOTATION);
  if not DirectoryExists(OutputFolderName + PathDelim + FOLDER_IMAGESET) then
    CreateDir(OutputFolderName + PathDelim + FOLDER_IMAGESET);
  if not DirectoryExists(OutputFolderName + PathDelim + FOLDER_JPEGIMAGE) then
    CreateDir(OutputFolderName + PathDelim + FOLDER_JPEGIMAGE);

  slPbtxt := TStringList.Create;
  // create pbtxt file
  try
    for i := 0 to Length(FObjColorArray)-1 do
    begin
      slPbtxt.Add('item {');
      slPbtxt.Add(' id: ' + IntToStr(i+1));
      slPbtxt.Add(' name: ' + FObjColorArray[i].ObjName);
      slPbtxt.Add('}');
    end;
    slPbtxt.SaveToFile(OutputFolderName + PathDelim + 'pascal_label_map.pbtxt');
  finally
    slPbtxt.Free;
  end;

  // Validation 을 위한 10% 랜덤목록
  slValFileName := TStringList.Create;
  slTrainFile := TStringList.Create;
  slValFile := TStringList.Create;
  jpg := TJPEGImage.Create;

  try
    iSizeOfValArray := Length(SavedPictures);
    SetLength(valArray, Trunc(iSizeOfValArray/10));
    Randomize;
    i := 0;
    while i < Trunc(iSizeOfValArray/10) do
    begin
      j := Random(iSizeOfValArray);
      if Pos(SavedPictures[j].PictureFilePath, slValFileName.Text) > 0 then Continue;
      slValFileName.Add(SavedPictures[j].PictureFilePath);
      Inc(i);
    end;

    // XML // JPEGImages
    for i := 0 to Length(SavedPictures)-1 do
    begin
      jpg.LoadFromFile(SavedPictures[i].PictureFilePath);
      jpgFileName := ExtractFileName(SavedPictures[i].PictureFilePath);
      fileNameOnly := ChangeFileExt(jpgFileName, '');

      CopyFile(PChar(SavedPictures[i].PictureFilePath), PChar(OutputFolderName + PathDelim + FOLDER_JPEGIMAGE + PathDelim + jpgFileName), False);
      Application.ProcessMessages;

      // XML Document 만들기
      xdSoft := TXMLDocument.Create(Application);
      xdSoft.Active := True;

      // 루트 노드 만들기
      xnRoot := xdSoft.AddChild('annotation');
      // 노드에 속성 설정
      xnRoot.Attributes['verified'] := 'yes';

      //###################################################################### //
      // 노드 밑에 노드 만들기
      xnChild := xnRoot.AddChild('folder');
      xnChild.NodeValue := 'Annotation';

      xnChild := xnRoot.AddChild('filename');
      xnChild.NodeValue := fileNameOnly;

      xnChild := xnRoot.AddChild('path');
      xnChild.NodeValue := OutputFolderName + PathDelim + FOLDER_JPEGIMAGE + PathDelim + jpgFileName;

      xnChild := xnRoot.AddChild('source');
      xnGrandchild := xnChild.AddChild('database');
      xnGrandchild.NodeValue := 'Unknown';

      xnChild := xnRoot.AddChild('size');
      xnGrandchild := xnChild.AddChild('width');
//      xnGrandchild.NodeValue := SavedPictures[i].Width;
      xnGrandchild.NodeValue := jpg.Width;
      xnGrandchild := xnChild.AddChild('height');
//      xnGrandchild.NodeValue := SavedPictures[i].Height;
      xnGrandchild.NodeValue := jpg.Height;
      xnGrandchild := xnChild.AddChild('depth');
      xnGrandchild.NodeValue := 3;

      xnChild := xnRoot.AddChild('segmented');
      xnChild.NodeValue := 0;

      for j := 0 to Length(SavedPictures[i].BoxInfo)-1 do
      begin
        xnChild := xnRoot.AddChild('object');
        xnGrandchild := xnChild.AddChild('name');
        tagName := StringReplace(SavedPictures[i].BoxInfo[j].TagList, #13#10, ',', [rfReplaceAll]);
        tagName := IfThen(tagName.Substring(Length(tagName)-1, 1) = ',', tagName.Substring(0, Length(tagName)-1), tagName);
        xnGrandchild.NodeValue := IfThen(tagName.Contains(','), tagName.Substring(0, tagName.IndexOf(',')), tagName);

        xnGrandchild := xnChild.AddChild('pose');
        xnGrandchild.NodeValue := 'Unspecified';

        xnGrandchild := xnChild.AddChild('truncated');
        xnGrandchild.NodeValue := 0;

        xnGrandchild := xnChild.AddChild('difficult');
        xnGrandchild.NodeValue := 0;

        xnGrandchild := xnChild.AddChild('bndbox');
        xnGrandchild2 := xnGrandchild.AddChild('xmin');
        xnGrandchild2.NodeValue := SavedPictures[i].BoxInfo[j].BeginPoint.X;
//        xnGrandchild2.NodeValue := SavedPictures[i].BoxInfo[j].BeginPoint.X * SavedPictures[i].Width / ievImage.Bitmap.Width;
//        xnGrandchild2.NodeValue := StrToFloat(FormatFloat('#.#',SavedPictures[i].BoxInfo[j].BeginPoint.X * SavedPictures[i].Width / ievImage.Bitmap.Width));
        xnGrandchild2 := xnGrandchild.AddChild('ymin');
        xnGrandchild2.NodeValue := SavedPictures[i].BoxInfo[j].BeginPoint.Y;
//        xnGrandchild2.NodeValue := SavedPictures[i].BoxInfo[j].BeginPoint.Y * SavedPictures[i].Height / ievImage.Bitmap.Height;
//        xnGrandchild2.NodeValue := StrToFloat(FormatFloat('#.#',SavedPictures[i].BoxInfo[j].BeginPoint.Y * SavedPictures[i].Height / ievImage.Bitmap.Height));
        xnGrandchild2 := xnGrandchild.AddChild('xmax');
        xnGrandchild2.NodeValue := SavedPictures[i].BoxInfo[j].EndPoint.X;
//        xnGrandchild2.NodeValue := SavedPictures[i].BoxInfo[j].EndPoint.X * SavedPictures[i].Width / ievImage.Bitmap.Width;
//        xnGrandchild2.NodeValue := StrToFloat(FormatFloat('#.#',SavedPictures[i].BoxInfo[j].EndPoint.X * SavedPictures[i].Width / ievImage.Bitmap.Width));
        xnGrandchild2 := xnGrandchild.AddChild('ymax');
        xnGrandchild2.NodeValue := SavedPictures[i].BoxInfo[j].EndPoint.Y;
//        xnGrandchild2.NodeValue := SavedPictures[i].BoxInfo[j].EndPoint.Y * SavedPictures[i].Height / ievImage.Bitmap.Height;
//        xnGrandchild2.NodeValue := StrToFloat(FormatFloat('#.#',SavedPictures[i].BoxInfo[j].EndPoint.Y * SavedPictures[i].Height / ievImage.Bitmap.Height));
      end;
      // ###################################################################### //

      // Box를 전부 다 돌고 마지막 tagName 에있는것을 이용하여 txt파일생성
      tmpStr := IfThen(tagName.Contains(','), tagName.Substring(0, tagName.IndexOf(',')), tagName);
      if Pos(fileNameOnly, slValFileName.Text) > 0 then
        slValFile.Add(fileNameOnly+','+tmpStr)
      else
        slTrainFile.Add(fileNameOnly+','+tmpStr);

      // XML Document 저장하기
      xdSoft.SaveToFile(OutputFolderName + PathDelim + FOLDER_ANNOTATION + PathDelim + fileNameOnly + '.xml');
      xdSoft.Free;

      Main.SetProgress(Length(SavedPictures)-1,i);
    end;

    // ImageSets
    slTrainFile.SaveToFile(OutputFolderName + PathDelim + FOLDER_IMAGESET + PathDelim + 'trainval_' + FFolderName + '.txt');
    slValFile.SaveToFile(OutputFolderName + PathDelim + FOLDER_IMAGESET + PathDelim + 'test_' + FFolderName + '.txt');
  finally
    slTrainFile.Free;
    slValFile.Free;
    slValFileName.Free;
    jpg.Free;
  end;
end;

procedure TProcImage.btnLoadClick(Sender: TObject);
var
  slAllFiles: TStringList;
  slTargetPaths: TStringList;
  i: Integer;
  jsonString: string;
begin
  with TFileOpenDialog.Create(nil) do
  try
    Title := 'Select Directory';
    Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem]; // YMMV
    if FFolderName <> '' then
      DefaultFolder := FFolderName
    else
      DefaultFolder := GetCurrentDir;
    FileName := DefaultFolder;
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
    lblCount.Caption := '0/' + IntToStr(FImageFileList.Count);
    FCurrentIndex := -1;
  finally
    FreeAndNil(slTargetPaths);
    FreeAndNil(slAllFiles);
  end;

  InitComp;

  // Json 파일이 있을때  SavedPicture 와 baBoxes 구조체 데이터 로드
  if FileExists(FFolderName + '.json') then
  begin
    jsonString := GetStringFromFile(FFolderName + '.json');
    LoadJson(jsonString, savedPictures);
  end;
end;

procedure TProcImage.btnNextClick(Sender: TObject);
var
  i, curIndex: Integer;
  tmpBeginX, tmpBeginY, tmpEndX, tmpEndY: Integer;
  imgPiece, imgLoad: TImage;
  jpg: TJPEGImage;
  bmp: TBitmap;
begin
  if FCurrentIndex = FImageFileList.Count-1 then Exit;
  if currentFile <> '' then SaveJson;

  Inc(FCurrentIndex);
  currentFile := FImageFileList[FCurrentIndex];
  Edit1.Text := FImageFileList[FCurrentIndex];
  lblCount.Caption := IntToStr(FCurrentIndex+1) + '/' + IntToStr(FImageFileList.Count);
  // load image
  ievImage.RemoveAllObjects;
  ievImage.IO.LoadFromFile(FImageFileList[FCurrentIndex]);
  ievImage.Fit;
  // load annotations
  ievImage.IO.Params.ImagingAnnot.CopyToTImageEnVect(ievImage);

  InitComp;

  if not IsNewPicture(savedPictures, currentFile, curIndex) then
  begin
    ievImage.ObjPenWidth[-1] := 2;
    ievImage.ObjBoxHighlight[-1] := false;
    ievImage.ObjBrushStyle[-1] := bsClear;
    ievImage.ObjMemoCharsBrushStyle[-1] := bsClear;

    for i := 0 to Length(savedPictures[curIndex].BoxInfo)-1 do
    begin
      tmpBeginX := savedPictures[curIndex].BoxInfo[i].BeginPoint.X;
      tmpBeginY := savedPictures[curIndex].BoxInfo[i].BeginPoint.Y;
      tmpEndX := savedPictures[curIndex].BoxInfo[i].EndPoint.X;
      tmpEndY := savedPictures[curIndex].BoxInfo[i].EndPoint.Y;

//      tmpBeginX := Round(savedPictures[curIndex].BoxInfo[i].BeginPoint.X * ievImage.Bitmap.Width / savedPictures[curIndex].Width);
//      tmpBeginY := Round(savedPictures[curIndex].BoxInfo[i].BeginPoint.Y * ievImage.Bitmap.Height / savedPictures[curIndex].Height);
//      tmpEndX := Round(savedPictures[curIndex].BoxInfo[i].EndPoint.X * ievImage.Bitmap.Width / savedPictures[curIndex].Width);
//      tmpEndY := Round(savedPictures[curIndex].BoxInfo[i].EndPoint.Y * ievImage.Bitmap.Height / savedPictures[curIndex].Height);

      ievImage.AddNewObject(iekBOX, TRect.Create(tmpBeginX, tmpBeginY, tmpEndX, tmpEndY),
      GetObjColor(FObjColorArray, savedPictures[curIndex].BoxInfo[i].TagList));
      SetLength(baBoxes, 0);
      SetLength(baBoxes, Length(savedPictures[curIndex].BoxInfo));
      baBoxes := savedPictures[curIndex].BoxInfo;

      imgPiece := TImage.Create(nil);
      imgLoad := TImage.Create(nil);
      jpg := TJPEGImage.Create;
      bmp := TBitmap.Create;
      try
        if ExtractFileExt(CurrentFile).Contains('jpg') then
        begin
          jpg.LoadFromFile(CurrentFile);
          JPG2BMP(jpg, bmp);
        end
        else
        begin
          bmp.LoadFromFile(CurrentFile);
        end;

        imgLoad.Picture.Bitmap.Assign(bmp);
        with SavedPictures[curIndex].BoxInfo[i] do
        begin
          imgPiece.Canvas.CopyRect(Rect(0,0,EndPoint.X - BeginPoint.X, EndPoint.Y - BeginPoint.Y), imgLoad.Canvas, Rect(BeginPoint.X, BeginPoint.Y, EndPoint.X, EndPoint.Y));
          imgPiece.Picture.Bitmap.Width := EndPoint.X - BeginPoint.X;
          imgPiece.Picture.Bitmap.Height := EndPoint.Y - BeginPoint.Y;
        end;

        imgPiece.Picture.Bitmap.SaveToFile(ExtractFilePath(CurrentFile) + 'Object' + IntToStr(i) + ChangeFileExt(ExtractFileName(CurrentFile), '.bmp'));
      finally
        jpg.Free;
        imgPiece.Free;
        imgLoad.Free;
      end;
    end;
  end;

  ievImage.MouseInteractVt := [miObjectSelect];
end;

procedure TProcImage.btnPrevClick(Sender: TObject);
var
  i, curIndex: Integer;
  tmpBeginX, tmpBeginY, tmpEndX, tmpEndY: Integer;
begin
  if FCurrentIndex <= 0 then Exit;
  if currentFile <> '' then SaveJson;

  Dec(FCurrentIndex);
  currentFile := FImageFileList[FCurrentIndex];
  Edit1.Text := FImageFileList[FCurrentIndex];
  lblCount.Caption := IntToStr(FCurrentIndex+1) + '/' + IntToStr(FImageFileList.Count);
  // load image
  ievImage.IO.LoadFromFile(FImageFileList[FCurrentIndex]);
  ievImage.Fit;
  // load annotations
  ievImage.RemoveAllObjects;
  ievImage.IO.Params.ImagingAnnot.CopyToTImageEnVect(ievImage);

  InitComp;

  if not IsNewPicture(savedPictures, currentFile, curIndex) then
  begin
    ievImage.ObjPenWidth[-1] := 2;
    ievImage.ObjBoxHighlight[-1] := false;
    ievImage.ObjBrushStyle[-1] := bsClear;
    ievImage.ObjMemoCharsBrushStyle[-1] := bsClear;

    for i := 0 to Length(savedPictures[curIndex].BoxInfo)-1 do
    begin
      tmpBeginX := savedPictures[curIndex].BoxInfo[i].BeginPoint.X;
      tmpBeginY := savedPictures[curIndex].BoxInfo[i].BeginPoint.Y;
      tmpEndX := savedPictures[curIndex].BoxInfo[i].EndPoint.X;
      tmpEndY := savedPictures[curIndex].BoxInfo[i].EndPoint.Y;

//      tmpBeginX := Round(savedPictures[curIndex].BoxInfo[i].BeginPoint.X * ievImage.Bitmap.Width / savedPictures[curIndex].Width);
//      tmpBeginY := Round(savedPictures[curIndex].BoxInfo[i].BeginPoint.Y * ievImage.Bitmap.Height / savedPictures[curIndex].Height);
//      tmpEndX := Round(savedPictures[curIndex].BoxInfo[i].EndPoint.X * ievImage.Bitmap.Width / savedPictures[curIndex].Width);
//      tmpEndY := Round(savedPictures[curIndex].BoxInfo[i].EndPoint.Y * ievImage.Bitmap.Height / savedPictures[curIndex].Height);

      ievImage.AddNewObject(iekBOX, TRect.Create(tmpBeginX, tmpBeginY, tmpEndX, tmpEndY),
      GetObjColor(FObjColorArray, savedPictures[curIndex].BoxInfo[i].TagList));
      SetLength(baBoxes, 0);
      SetLength(baBoxes, Length(savedPictures[curIndex].BoxInfo));
      baBoxes := savedPictures[curIndex].BoxInfo;
    end;
  end;

  ievImage.MouseInteractVt := [miObjectSelect];
end;

procedure TProcImage.ievImageKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    49: btnRect.OnClick(nil);
    VK_DELETE, 50:
      begin
        if ievImage.SelObjectsCount > 0 then
          btnDeleteClick(nil);
      end;
    51: btnSelect.OnClick(nil);
    VK_LEFT, 65: btnPrev.OnClick(nil);
    VK_RIGHT, 68: btnNext.OnClick(nil);
    81:
      begin
        if Assigned(btnDyn[0]) then
          scGPButtonClick(btnDyn[0]);
      end;
    87:
      begin
        if Assigned(btnDyn[1]) then
          scGPButtonClick(btnDyn[1]);
      end;
  end;
end;

procedure TProcImage.ievImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lblMousePoint.Caption := Format('Point : (%d, %d)', [X, Y]);
end;

procedure TProcImage.ievImageNewObject(Sender: TObject; hobj: Integer);
begin
  ievImage.MouseInteractVt := [miObjectSelect];
end;

procedure TProcImage.ievImageObjectClick(Sender: TObject; hobj: Integer);
var
  i, compcnt: Integer;
begin
  if SetButtonAsTagList(TagList, baBoxes, hobj) then
  begin
    for compcnt := 0 to ComponentCount-1 do
    begin
      if Components[compcnt].ClassType = TscGPButton then
      begin
        if (Pos('btnDyn', TscGPButton(Components[compcnt]).Name) > 0) then
        begin
          TscGPButton(Components[compcnt]).Tag := 0;
          for i := 0 to TagList.Count-1 do
            if TscGPButton(Components[compcnt]).Caption = TagList[i] then
              TscGPButton(Components[compcnt]).Tag := 1;
          SetscGPButtonColor(TscGPButton(Components[compcnt]));
        end;
      end;
    end;
  end
  else
  begin
    SetSelObjColor(hobj);

    SetLength(baBoxes, Length(baBoxes) + 1);
    baBoxes[Length(baBoxes) - 1].hobj := hobj;
    baBoxes[Length(baBoxes) - 1].BeginPoint := Point(ievImage.ObjLeft[hobj], ievImage.ObjTop[hobj]);
    baBoxes[Length(baBoxes) - 1].EndPoint := Point(ievImage.ObjLeft[hobj]+ievImage.ObjWidth[hobj], ievImage.ObjTop[hobj]+ievImage.ObjHeight[hobj]);
    baBoxes[Length(baBoxes) - 1].TagList := TagList.Text;
  end;
end;

procedure TProcImage.ievImageObjectMoveResize(Sender: TObject; hobj,
  Grip: Integer; var OffsetX, OffsetY: Integer);
var
  i: Integer;
begin
  for i := 0 to Length(baBoxes)-1 do
    if baBoxes[i].hobj = hobj then
      Break;

  baBoxes[i].BeginPoint := Point(ievImage.ObjLeft[hobj], ievImage.ObjTop[hobj]);
  baBoxes[i].EndPoint := Point(ievImage.ObjLeft[hobj]+ievImage.ObjWidth[hobj], ievImage.ObjTop[hobj]+ievImage.ObjHeight[hobj]);
  baBoxes[i].TagList := TagList.Text;
end;

procedure TProcImage.btnRectClick(Sender: TObject);
begin
  ievImage.ObjPenWidth[-1] := 2;
  ievImage.ObjBoxHighlight[-1] := false;
  ievImage.ObjBrushStyle[-1] := bsClear;
  ievImage.ObjMemoCharsBrushStyle[-1] := bsClear;
  ievImage.MouseInteractVt := [miPutBox];
end;

procedure TProcImage.btnSelectClick(Sender: TObject);
begin
  ievImage.MouseInteractVt := [miObjectSelect];
end;

procedure TProcImage.btnDeleteClick(Sender: TObject);
var
  i, j: integer;
begin
  for i := ievImage.SelObjectsCount - 1 downto 0 do
    ievImage.RemoveObject(ievImage.SelObjects[i]);

  SetLength(baBoxesOld, Length(baBoxes));
  baBoxesOld := baBoxes;
  SetLength(baBoxes, 0);
  for i := 0 to ievImage.ObjectsCount-1 do
  begin
    SetLength(baBoxes, Length(baBoxes) + 1);
    baBoxes[Length(baBoxes) - 1].hobj := ievImage.GetObjFromIndex(i);
    baBoxes[Length(baBoxes) - 1].BeginPoint := Point(ievImage.ObjLeft[ievImage.GetObjFromIndex(i)], ievImage.ObjTop[ievImage.GetObjFromIndex(i)]);
    baBoxes[Length(baBoxes) - 1].EndPoint := Point(ievImage.ObjLeft[ievImage.GetObjFromIndex(i)]+ievImage.ObjWidth[ievImage.GetObjFromIndex(i)], ievImage.ObjTop[ievImage.GetObjFromIndex(i)]+ievImage.ObjHeight[ievImage.GetObjFromIndex(i)]);
    for j := 0 to Length(baBoxesOld)-1 do
    begin
      if baBoxes[Length(baBoxes) - 1].hobj = baBoxesOld[j].hobj then
      begin
        baBoxes[Length(baBoxes) - 1].TagList := baBoxesOld[j].TagList;
        Continue;
      end;
    end;
  end;
end;

{$ENDREGION}

{$REGION 'Functions'}
procedure TProcImage.InitComp;
var
  compcnt: Integer;
begin
  SetLength(baBoxes, 0);
  TagList.Clear;
  for compcnt := 0 to ComponentCount-1 do
  begin
    if Components[compcnt].ClassType = TscGPButton then
    begin
      if (Pos('btnDyn', TscGPButton(Components[compcnt]).Name) > 0) then
      begin
        TscGPButton(Components[compcnt]).Tag := 0;
        SetscGPButtonColor(TscGPButton(Components[compcnt]));
      end;
    end;
  end;
end;

procedure TProcImage.CreateButtons(aName: string);
var
  i: Integer;
  nextPosLeft, nextPosTop: Integer;
begin
  SetLength(btnDyn, Length(FObjColorArray));
  nextPosTop := POS_Y1 - (BTN_HEIGHT + 2);
  for i := 0 to Length(FObjColorArray)-1 do
  begin
    if (i mod 3) = 0 then
    begin
      ClientHeight := ClientHeight + BTN_HEIGHT;
      nextPosLeft := POS_X1;
      nextPosTop := nextPosTop + BTN_HEIGHT + 2;
    end;

    btnDyn[i] := TscGPButton.Create(Self);
    with btnDyn[i] do
    begin
      Parent := scPanel1;
      Width := BTN_WIDTH;
      Height := BTN_HEIGHT;
      Left := nextPosLeft;
      Top := nextPosTop;
      Name := Format(aName+'%d',[i]);
      Caption := FObjColorArray[i].ObjName;
      Options.ShapeStyle := scgpRoundedRect;
      ShowHint := True;
      OnClick := scGPButtonClick;
    end;
    nextPosLeft := nextPosLeft + BTN_WIDTH + 7;
  end;
  ClientHeight := ClientHeight + BTN_HEIGHT;
end;

procedure TProcImage.ReleaseButtons;
var
  i: Integer;
begin
  SetLength(btnDyn, Length(FObjColorArray));
  for i := Length(btnDyn)-1 downto 0 do
    btnDyn[i].Free;
end;

function TProcImage.LoadJson(JsonString: string; var Pictures: TSavedPictureArray): Boolean;
var
  LStringReader: TStringReader;
  LJsonTextReader: TJsonTextReader;
  curStates: TJsonProperty;
  minX, minY, maxX, maxY: Integer;
  i: Integer;
begin
  try
    LStringReader := TStringReader.Create(JsonString);
    LJsonTextReader := TJsonTextReader.Create(LStringReader);

    curStates := jpInit;
    FFrameNum := 0;
    FIDNum := 0;
    TagList.Clear;

    SetLength(Pictures, 0);
    SetLength(Pictures, FImageFileList.Count);
    for i := 0 to FImageFileList.Count-1 do
    begin
      Pictures[i].iFrame := i;
      Pictures[i].PictureFilePath := FImageFileList[i];
    end;

    while LJsonTextReader.read do
      case LJsonTextReader.TokenType of
        TJsonToken.PropertyName:
          begin
            case curStates of
              jpInit: if Pos('frames', LJsonTextReader.Value.AsString) > 0 then curStates := jpFrame;
              jpFrame:
                begin
                  SetLength(baBoxes, 0);
                  FFrameNum := StrToInt(LJsonTextReader.Value.AsString);
                end;
              jpBoxes: if Pos('x1', LJsonTextReader.Value.AsString) > 0 then curStates := jpMinX;
              jpMinX: if Pos('y1', LJsonTextReader.Value.AsString) > 0 then curStates := jpMinY;
              jpMinY: if Pos('x2', LJsonTextReader.Value.AsString) > 0 then curStates := jpMaxX;
              jpMaxX: if Pos('y2', LJsonTextReader.Value.AsString) > 0 then curStates := jpMaxY;
              jpMaxY: if Pos('id', LJsonTextReader.Value.AsString) > 0 then curStates := jpIDNum;
              jpIDNum: if Pos('width', LJsonTextReader.Value.AsString) > 0 then curStates := jpWidth;
              jpWidth: if Pos('height', LJsonTextReader.Value.AsString) > 0 then curStates := jpHeight;
              jpHeight: if Pos('tags', LJsonTextReader.Value.AsString) > 0 then curStates := jpTagList;
              jpTagList: if Pos('name', LJsonTextReader.Value.AsString) > 0 then curStates := jpName;
              jpInputTags: if Pos('visitedFrame', LJsonTextReader.Value.AsString) > 0 then curStates := jpVisitedFrames;
              jpVisitedFrames: ;
              jpTagColors: ;
            end;
          end;
        TJsonToken.String:
          begin
            case curStates of
              jpTagList: TagList.Add(LJsonTextReader.Value.AsString);
            end;
//              ShowMessage('String: ' + LJsonTextReader.Value.AsString);
          end;
        TJsonToken.Integer:
          begin
            case curStates of
              jpMinX: minX := LJsonTextReader.Value.AsInteger;
              jpMinY: minY := LJsonTextReader.Value.AsInteger;
              jpMaxX: maxX := LJsonTextReader.Value.AsInteger;
              jpMaxY:
                begin
                  maxY := LJsonTextReader.Value.AsInteger;
                  SetLength(baBoxes, Length(baBoxes) + 1);
                  baBoxes[Length(baBoxes) - 1].BeginPoint := Point(minX, minY);
                  baBoxes[Length(baBoxes) - 1].EndPoint := Point(maxX, maxY);
                end;
              jpIDNum: FIDNum := LJsonTextReader.Value.AsInteger;
              jpWidth: Pictures[FFrameNum].Width := LJsonTextReader.Value.AsInteger;
              jpHeight: Pictures[FFrameNum].Height := LJsonTextReader.Value.AsInteger;
              jpName: baBoxes[Length(baBoxes) - 1].hobj := LJsonTextReader.Value.AsInteger;
              jpInputTags: ;
              jpVisitedFrames: ;
              jpTagColors: ;
            end;
          end;
        TJsonToken.Float:
          begin
            case curStates of
              jpMinX: minX := Round(LJsonTextReader.Value.AsExtended);
              jpMinY: minY := Round(LJsonTextReader.Value.AsExtended);
              jpMaxX: maxX := Round(LJsonTextReader.Value.AsExtended);
              jpMaxY:
                begin
                  maxY := Round(LJsonTextReader.Value.AsExtended);
                  SetLength(baBoxes, Length(baBoxes) + 1);
                  baBoxes[Length(baBoxes) - 1].BeginPoint := Point(minX, minY);
                  baBoxes[Length(baBoxes) - 1].EndPoint := Point(maxX, maxY);
                end;
            end;
          end;
        TJsonToken.StartArray:
          begin
            case curStates of
              jpFrame: curStates := jpBoxes;
              jpTagList: TagList.Clear;
              jpName: ;
              jpInputTags: ;
              jpVisitedFrames: ;
              jpTagColors: ;
            end;
          end;
        TJsonToken.EndArray:
          begin
            case curStates of
              jpTagList: baBoxes[Length(baBoxes) - 1].TagList := TagList.Text;
              jpBoxes: curStates := jpFrame;
            end;
          end;
        TJsonToken.EndObject:
          begin
            case curStates of
              jpFrame: curStates := jpInputTags;
              jpName:
                begin
                  Pictures[FFrameNum].BoxInfo := baBoxes;
                  curStates := jpBoxes;
                end;
            end;
          end;
      end;
  finally

  end;
end;

function TProcImage.IsNewPicture(Pictures: TSavedPictureArray; CurrentFile: string; var CurIndex: Integer): Boolean;
var
  i: Integer;
begin
  Result := True;
  for i := 0 to Length(Pictures)-1 do
    if Pictures[i].PictureFilePath = CurrentFile then
    begin
      CurIndex := i;
      Result := False;
      Exit;
    end;
end;

procedure TProcImage.MakeJson(Pictures: TSavedPictureArray);
var
  StringWriter: TStringWriter;
  Writer: TJsonTextWriter;
  i,j: Integer;
  inputTag, visitedFrames: string;
  inputTags: string;
  txtFile: TextFile;
  tmp: TStringList;
begin
  StringWriter := TStringWriter.Create;
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  Writer.WriteStartObject;
  Writer.WritePropertyName('frames');
  Writer.WriteStartObject;
  visitedFrames := '';
  for i := 0 to Length(Pictures)-1 do
  begin
    visitedFrames := visitedFrames + IfThen(i=0,IntToStr(Pictures[i].iFrame),','+IntToStr(Pictures[i].iFrame));
    if Length(Pictures[i].BoxInfo) > 0 then
      MakeJsonBoxes(Pictures[i], Writer, inputTag);
  end;
  Writer.WriteEndObject;
  Writer.WritePropertyName('framerate');
  Writer.WriteValue('1');
  Writer.WritePropertyName('inputTags');
  inputTags := '';
  for i := 0 to Length(FObjColorArray)-1 do
    inputTags := inputTags + IfThen(i=0,FObjColorArray[i].ObjName,','+FObjColorArray[i].ObjName);
  Writer.WriteValue(inputTags);
  Writer.WritePropertyName('suggestiontype');
  Writer.WriteValue('track');
  Writer.WritePropertyName('scd');
  Writer.WriteValue(false);
  Writer.WritePropertyName('visitedFrames');
  Writer.WriteStartArray;

  tmp := TStringList.Create;
  try
    tmp.Delimiter := ',';
    tmp.DelimitedText := visitedFrames;
    for j := 0 to tmp.Count-1 do
      Writer.WriteValue(StrToInt(tmp[j]));
  finally
    tmp.Free;
  end;

  Writer.WriteEndArray;
  Writer.WritePropertyName('tag_colors');
  Writer.WriteStartArray;
  for i := 0 to Length(FObjColorArray)-1 do
    Writer.WriteValue('#'+TColorToHex(FObjColorArray[i].ObjColor));
  Writer.WriteEndArray;
  Writer.WriteEndObject;

  try
    try
      AssignFile(txtFile, ExtractFileDir(currentFile) + '.json');
      Rewrite(txtFile);
      Writeln(txtFile, StringWriter.ToString);
    except
    end;
  finally
    CloseFile(txtFile);
  end;
end;

procedure TProcImage.MakeJsonBoxes(Picture: TSavedPicture; var Writer: TJsonTextWriter; var inputTag: string);
var
  i,j: Integer;
  Splitted: TArray<string>;
begin
  Writer.WritePropertyName(IntToStr(Picture.iFrame));
  Writer.WriteStartArray;
  inputTag := '';
  for i := 0 to Length(Picture.BoxInfo)-1 do
  begin
    inputTag := StringReplace(Picture.BoxInfo[i].TagList, #13#10, ',', [rfReplaceAll]);
    inputTag := IfThen(inputTag.Substring(Length(inputTag)-1, 1) = ',', inputTag.Substring(0, Length(inputTag)-1), inputTag);

    Splitted := inputTag.Split([',']);
    Writer.WriteStartObject;
    Writer.WritePropertyName('x1');
    Writer.WriteValue(Picture.BoxInfo[i].BeginPoint.X);
//    Writer.WriteValue(Picture.BoxInfo[i].BeginPoint.X * Picture.Width / ievImage.Bitmap.Width);
//    Writer.WriteValue(StrToFloat(FormatFloat('#.#',Picture.BoxInfo[i].BeginPoint.X * Picture.Width / ievImage.Bitmap.Width)));
    Writer.WritePropertyName('y1');
    Writer.WriteValue(Picture.BoxInfo[i].BeginPoint.Y);
//    Writer.WriteValue(Picture.BoxInfo[i].BeginPoint.Y * Picture.Height / ievImage.Bitmap.Height);
//    Writer.WriteValue(StrToFloat(FormatFloat('#.#',Picture.BoxInfo[i].BeginPoint.Y * Picture.Height / ievImage.Bitmap.Height)));
    Writer.WritePropertyName('x2');
    Writer.WriteValue(Picture.BoxInfo[i].EndPoint.X);
//    Writer.WriteValue(Picture.BoxInfo[i].EndPoint.X * Picture.Width / ievImage.Bitmap.Width);
//    Writer.WriteValue(StrToFloat(FormatFloat('#.#',Picture.BoxInfo[i].EndPoint.X * Picture.Width / ievImage.Bitmap.Width)));
    Writer.WritePropertyName('y2');
    Writer.WriteValue(Picture.BoxInfo[i].EndPoint.Y);
//    Writer.WriteValue(Picture.BoxInfo[i].EndPoint.Y * Picture.Height / ievImage.Bitmap.Height);
//    Writer.WriteValue(StrToFloat(FormatFloat('#.#',Picture.BoxInfo[i].EndPoint.Y * Picture.Height / ievImage.Bitmap.Height)));
    Writer.WritePropertyName('id');
    Writer.WriteValue(FIDNum);
    Inc(FIDNum);
    Writer.WritePropertyName('width');
    Writer.WriteValue(Picture.Width);
    Writer.WritePropertyName('height');
    Writer.WriteValue(Picture.Height);
    Writer.WritePropertyName('type');
    Writer.WriteValue('Rectangle');
    Writer.WritePropertyName('tags');
    Writer.WriteStartArray;
    for j := Low(Splitted) to High(Splitted) do
      Writer.WriteValue(Splitted[j]);
    Writer.WriteEndArray;
    Writer.WritePropertyName('name');
    Writer.WriteValue(Picture.BoxInfo[i].hobj);
    Writer.WriteEndObject;
  end;
  Writer.WriteEndArray;
end;

function TProcImage.SetSelObjColor(Sender: TObject): Boolean;
var
  compcnt, i: Integer;
  str: string;
begin
  Result := False;
  if Sender.ClassType <> TscGPButton then Exit;

  for i := 0 to ievImage.SelObjectsCount-1 do
  begin
    for compcnt := 0 to ComponentCount-1 do
    begin
      if Components[compcnt].ClassType = TscGPButton then
      begin
        if (Pos('btnDyn', TscGPButton(Components[compcnt]).Name) > 0) then
        begin
          if TscGPButton(Components[compcnt]).Tag = 0 then
          begin
            ievImage.ObjPenColor[ievImage.SelObjects[i]] := clBtnText;
          end
          else
          begin
            str := TscGPButton(Components[compcnt]).Caption;
            ievImage.ObjPenColor[ievImage.SelObjects[i]] := GetObjColor(FObjColorArray, str);
            Result := True;
            Exit;
          end;
        end;
      end;
    end;
  end;

  str := TscGPButton(Sender).Caption;
  if ievImage.SelObjectsCount = 0 then
  begin
    if TscGPButton(Sender).Tag = 0 then
      ievImage.ObjPenColor[-1] := clBtnText
    else
      ievImage.ObjPenColor[-1] := GetObjColor(FObjColorArray, str);
  end
  else
  begin
    for i := 0 to ievImage.SelObjectsCount-1 do
    begin
      if TscGPButton(Sender).Tag = 0 then
        ievImage.ObjPenColor[ievImage.SelObjects[i]] := clBtnText
      else
        ievImage.ObjPenColor[ievImage.SelObjects[i]] := GetObjColor(FObjColorArray, str);
    end;
  end;
  Result := True;
end;

function TProcImage.SetSelObjColor(hobj: Integer = -1): Boolean;
var
  compcnt, i: Integer;
  str: string;
begin
  Result := False;
  for compcnt := 0 to ComponentCount-1 do
  begin
    if Components[compcnt].ClassType = TscGPButton then
    begin
      if (Pos('btnDyn', TscGPButton(Components[compcnt]).Name) > 0) then
      begin
        if TscGPButton(Components[compcnt]).Tag = 0 then
        begin
          ievImage.ObjPenColor[hobj] := clBtnText;
        end
        else
        begin
          str := TscGPButton(Components[compcnt]).Caption;
          ievImage.ObjPenColor[hobj] := GetObjColor(FObjColorArray, str);
          Result := True;
          Exit;
        end;
      end;
    end;
  end;
end;

function TProcImage.SetTagList(TagList: TStringList; var BoxList: TBoxInfoArray): Boolean;
var
  i, j: Integer;
begin
  Result := False;
  for i := 0 to ievImage.SelObjectsCount-1 do
    for j := 0 to Length(BoxList)-1 do
      if ievImage.SelObjects[i] = BoxList[j].hobj then
      begin
        BoxList[j].TagList := TagList.Text;
        Result := True;
      end;
end;

function TProcImage.SetButtonAsTagList(var TagList: TStringList; BoxList: TBoxInfoArray; hobj: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
  //  ShowMessage(IntToStr(hobj));
  for i := 0 to Length(BoxList)-1 do
    if BoxList[i].hobj = hobj then
    begin
      TagList.Text := BoxList[i].TagList;
      Result := True;
      Exit;
    end;
end;

procedure TProcImage.SaveJson;
var
  i, CurIndex: Integer;
begin
  // Save Json File
  // SavedPictureArray Set
  if IsNewPicture(SavedPictures, CurrentFile, CurIndex) then
  begin
    SetLength(SavedPictures, Length(SavedPictures) + 1);
    SavedPictures[Length(SavedPictures)-1].iFrame := Length(SavedPictures)-1;
//    Inc(FFrameNum);
    SavedPictures[Length(SavedPictures)-1].PictureFilePath := CurrentFile;
//    SetLength(SavedPictures[Length(SavedPictures)-1].BoxInfo, Length(SavedPictures[Length(SavedPictures)-1].BoxInfo)+1);
    SavedPictures[Length(SavedPictures)-1].BoxInfo := baBoxes;
    SavedPictures[Length(SavedPictures)-1].Width := ievImage.Bitmap.Width;
    SavedPictures[Length(SavedPictures)-1].Height := ievImage.Bitmap.Height;
  end
  else
  begin
    SavedPictures[CurIndex].BoxInfo := baBoxes;
    SavedPictures[CurIndex].Width := ievImage.Bitmap.Width;
    SavedPictures[CurIndex].Height := ievImage.Bitmap.Height;
  end;

  MakeJson(SavedPictures);
end;
{$ENDREGION}

end.
