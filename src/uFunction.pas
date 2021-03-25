unit uFunction;

interface

uses
  Windows, Classes, StrUtils, SysUtils, Vcl.Forms, Vcl.Graphics, jpeg, uConst,
  ShlObj, ShellAPI, Winapi.CommCtrl, Controls, Winapi.Messages, scGPControls,
  scControls, scGPVertPagers, IOUtils, System.IniFiles, Math, MRVCore, Soap.EncdDecd;

type
  TRGBArray = array[Word] of TRGBTriple;
  pRGBArray = ^TRGBArray;
  TDrawingTool = (dtLine, dtRectangle, dtEllipse, dtRoundRect);

function GetURL : string;

{Parse Logs From Deep Learning Server}
function ParsePicUrl(ResString: string) : string;
function ParseTextLogUrl(ResString: string) : string;
procedure ParseTextLog(Log: string; AOwner: TComponent; AParent: TWincontrol; AOnClick: TNotifyEvent; ABoxVisible: Boolean; var AObjInfoArray: TObjInfoArray);
function DelDoubleSpaces(OldText:String):string;

{Image Handling}
procedure SmoothResize(Src: TBitmap; Dst: TBitmap);
procedure ResizeBMP2JPG(const src: TMemoryStream; var des: TMemoryStream; const iWidth: Integer);
procedure JPG2BMP(jpg: TJPEGImage; var bmp: TBitmap);
procedure ResizeBitmapCanvas(var Bitmap: TBitmap; H, W: Integer; BackColor: TColor);
function Base64FromBitmap(Bitmap: TBitmap): string;
function BitmapFromBase64(const base64: string): TBitmap;
procedure DrawShape(ATarget:TCanvas; TopLeft, BottomRight: TPoint; ADrawingTool: TDrawingTool; AMode: TPenMode; APenColor: TColor = clRed);
function TColorToHex( Color : TColor ): string;
function HexToTColor( sColor : string ): TColor;

{Control}
procedure MakeButton(AOwner: TComponent; AParent: TWincontrol; AAlign: TAlign; AOnClick: TNotifyEvent; ACaption: string; AObjInfo: TObjInfo);
procedure MakeLabel(AOwner: TComponent; AParent: TWinControl; AOnClick: TNotifyEvent; ACaption: string; AObjInfo: TObjInfo);
procedure SetscGPButtonColor(Sender: TObject);

{Sleep}
procedure WaitSleep(sleepTime: Integer);

{Ini File}
procedure SaveConfig(const FileName: string; const rConfig: TConfigInfo);
procedure LoadConfig(const FileName: string; var rConfig: TConfigInfo);
procedure LoadObjColorListFromFile(const FileName: string; var aArray: TObjectColorArray);
function  GetObjColor(const aArray: TObjectColorArray; const aName: string): TColor;
function  GetStringFromFile(const FileName: string): AnsiString;

implementation

function GetURL : string;
var
  fileName: string;
  iniFile: TIniFile;
begin
  Result := '';
  fileName := ChangeFileExt(Application.ExeName,'.ini');

  if FileExists(fileName) then
  begin
    iniFile := TIniFile.Create(fileName);
    try
      Result := iniFile.ReadString('DLSERVER','URL','http://220.94.184.88:9480/');
    finally
      FreeAndNil(iniFile);
    end;
  end;
end;

{$REGION 'Parse Logs From Deep Learning Server'}
function ParsePicUrl(ResString: string) : string;
var
  Splitted: TArray<string>;
  i : Integer;
begin
  Result := '';

  Splitted := ResString.Split([^J]);
  for i := Low(Splitted) to High(Splitted) do
  begin
    if Pos('img src', LowerCase(Splitted[i])) > 0 then Break;
  end;

  Result := Splitted[i].Substring(Pos('img src="', Splitted[i])+8, Pos('.jpg', Splitted[i])+4 - Pos('img src="', Splitted[i]) - 9);
end;

function ParseTextLogUrl(ResString: string) : string;
var
  Splitted: TArray<string>;
  i : Integer;
begin
  Result := '';

  Splitted := ResString.Split([^J]);
  for i := Low(Splitted) to High(Splitted) do
  begin
    if Pos('txt', Splitted[i]) > 0 then Break;
  end;

  Result := Splitted[i].Substring(Pos('">', Splitted[i])+1, Pos('</', Splitted[i], 2) - Pos('">', Splitted[i]) - 2);
end;

procedure ParseTextLog(Log: string; AOwner: TComponent; AParent: TWincontrol; AOnClick: TNotifyEvent; ABoxVisible: Boolean; var AObjInfoArray: TObjInfoArray);
var
  SL: TStringList;
  Readable, bMakeResult: Boolean;
  i: Integer;
  Splitted: TArray<string>;
  CaptionString: string;
begin
  SL := TStringList.Create;
  try
    SL.Text := Log;
    SL.SaveToFile('test.txt');
    Readable := False;
    bMakeResult := False;
    Setlength(AObjInfoArray, 0);

    for i := 0 to SL.Count-1 do
    begin
      if Pos('3. Object Deteced Final Boxes List', SL[i]) > 0 then bMakeResult := True;
      if Pos('4. Object Deteced Summary', SL[i]) > 0 then
      begin
        Readable := True;
        bMakeResult := False;
      end;
      if Pos('5. Object Deteced Duration Time', SL[i]) > 0 then Readable := False;

      if bMakeResult then
      begin
        if Trim(SL[i]) = '' then Continue;
        if Pos('3. Object Deteced Final Boxes List', SL[i]) > 0 then Continue;
        if Pos('---', SL[i]) > 0 then Continue;
        if Pos('box_no', SL[i]) > 0 then Continue;
        Setlength(AObjInfoArray, Length(AObjInfoArray) + 1);
        Splitted := DelDoubleSpaces(Trim(SL[i])).Split([' ']);

        AObjInfoArray[Length(AObjInfoArray)-1].Seq := StrToInt(Splitted[0]);
        AObjInfoArray[Length(AObjInfoArray)-1].ClassName := Trim(Splitted[8]);
        AObjInfoArray[Length(AObjInfoArray)-1].ClassAccuracy := StrToInt(Splitted[9]);
        AObjInfoArray[Length(AObjInfoArray)-1].Xmin := StrToFloat(Trim(Splitted[1]));
        AObjInfoArray[Length(AObjInfoArray)-1].Ymin := StrToFloat(Trim(Splitted[2]));
        AObjInfoArray[Length(AObjInfoArray)-1].Xmax := StrToFloat(Trim(Splitted[3]));
        AObjInfoArray[Length(AObjInfoArray)-1].Ymax := StrToFloat(Trim(Splitted[4]));
        AObjInfoArray[Length(AObjInfoArray)-1].Score := StrToFloat(Trim(Splitted[5]));
        AObjInfoArray[Length(AObjInfoArray)-1].BoxVisible := ABoxVisible;
        AObjInfoArray[Length(AObjInfoArray)-1].IsNewObj := True;
        CaptionString := AObjInfoArray[Length(AObjInfoArray)-1].ClassName + '           ::    ' + IntToStr(AObjInfoArray[Length(AObjInfoArray)-1].ClassAccuracy) + '%';
        MakeButton(AOwner, AParent, alTop, AOnClick, CaptionString, AObjInfoArray[Length(AObjInfoArray)-1]);
      end;

      if Readable then
      begin
      end;
    end;
  finally
    SL.Free;
  end;
end;

function DelDoubleSpaces(OldText:String):string;
var i:integer;
     s:string;
begin
  if length(OldText) > 0 then
    s := OldText[1]
  else
    s := '';
  for i := 2 to length(OldText) do
  begin
    if OldText[i] = ' ' then
    begin
      if not (OldText[i-1] = ' ') then
        s := s + ' ';
    end
    else
    begin
      s := s + OldText[i];
    end;
  end;
  Result := s;
end;
{$ENDREGION}

procedure SmoothResize(Src: TBitmap; Dst: TBitmap);
var
  x, y: Integer;
  xP, yP: Integer;
  xP2, yP2: Integer;
  SrcLine1, SrcLine2: pRGBArray;
  t3: Integer;
  z, z2, iz2: Integer;
  DstLine: pRGBArray;
  DstGap: Integer;
  w1, w2, w3, w4: Integer;
begin
  Src.PixelFormat := pf24Bit;
  Dst.PixelFormat := pf24Bit;

  if (Src.Width = Dst.Width) and (Src.Height = Dst.Height) then
    Dst.Assign(Src)
  else
  begin
    DstLine := Dst.ScanLine[0];
    DstGap := Integer(Dst.ScanLine[1]) - Integer(DstLine);

    xP2 := MulDiv(pred(Src.Width), $10000, Dst.Width);
    yP2 := MulDiv(pred(Src.Height), $10000, Dst.Height);
    yP := 0;

    for y := 0 to pred(Dst.Height) do
    begin
      xP := 0;

      SrcLine1 := Src.ScanLine[yP shr 16];

      if (yP shr 16 < pred(Src.Height)) then
        SrcLine2 := Src.ScanLine[succ(yP shr 16)]
      else
        SrcLine2 := Src.ScanLine[yP shr 16];

      z2 := succ(yP and $FFFF);
      iz2 := succ((not yP) and $FFFF);
      for x := 0 to pred(Dst.Width) do
      begin
        t3 := xP shr 16;
        z := xP and $FFFF;
        w2 := MulDiv(z, iz2, $10000);
        w1 := iz2 - w2;
        w4 := MulDiv(z, z2, $10000);
        w3 := z2 - w4;
        DstLine[x].rgbtRed := (SrcLine1[t3].rgbtRed * w1 + SrcLine1[t3 + 1].rgbtRed * w2 + SrcLine2[t3].rgbtRed * w3 + SrcLine2[t3 + 1].rgbtRed * w4) shr 16;
        DstLine[x].rgbtGreen := (SrcLine1[t3].rgbtGreen * w1 + SrcLine1[t3 + 1].rgbtGreen * w2 + SrcLine2[t3].rgbtGreen * w3 + SrcLine2[t3 + 1].rgbtGreen * w4) shr 16;
        DstLine[x].rgbtBlue := (SrcLine1[t3].rgbtBlue * w1 + SrcLine1[t3 + 1].rgbtBlue * w2 + SrcLine2[t3].rgbtBlue * w3 + SrcLine2[t3 + 1].rgbtBlue * w4) shr 16;
        Inc(xP, xP2);
      end; {for}
      Inc(yP, yP2);
      DstLine := pRGBArray(Integer(DstLine) + DstGap);
    end; {for}
  end; {if}
end; {SmoothResize}

procedure ResizeBMP2JPG(const src: TMemoryStream; var des: TMemoryStream; const iWidth: Integer);
var
  OldBitmap: Vcl.Graphics.TBitmap;
  NewBitmap: Vcl.Graphics.TBitmap;
  jpg: TJPEGImage;
begin
  jpg := TJPEGImage.Create;
  OldBitmap := Vcl.Graphics.TBitmap.Create;
  try
    src.Position := 0;
    OldBitmap.LoadFromStream(src);

    if (OldBitmap.Width > iWidth) then
    begin
      NewBitmap := Vcl.Graphics.TBitmap.Create;
      try
        NewBitmap.Width := iWidth;
        NewBitmap.Height := MulDiv(iWidth, OldBitmap.Height, OldBitmap.Width);
        SmoothResize(OldBitmap, NewBitmap);
        jpg.Assign(NewBitmap);
        jpg.CompressionQuality := 75;
//        jpg.SaveToFile('.\ResizeJPG.jpg');
        des.Clear;
        des.Position := 0;
        jpg.SaveToStream(des);
      finally
        NewBitmap.Free;
      end; {try}
    end
    else
    begin
      jpg.Assign(OldBitmap);
      jpg.CompressionQuality := 75;
//        jpg.SaveToFile('.\ResizeJPG.jpg');
      des.Clear;
      des.Position := 0;
      jpg.SaveToStream(des);
    end; {if}
  finally
    FreeAndNil(OldBitmap);
    FreeAndNil(jpg);
  end; {try}
end; {ResizeImage}

procedure JPG2BMP(jpg: TJPEGImage; var bmp: TBitmap);
begin
  bmp.PixelFormat := pf32bit;
  bmp.Width := jpg.Width;
  bmp.Height := jpg.Height;
  bmp.Assign(jpg);
end;

procedure ResizeBitmapCanvas(var Bitmap: TBitmap; H, W: Integer; BackColor: TColor);
var
  Bmp: TBitmap;
  Source, Dest: TRect;
  Xshift, Yshift: Integer;
begin
  Xshift := (Bitmap.Width-W) div 2;
  Yshift := (Bitmap.Height-H) div 2;

  Source.Left := Max(0, Xshift);
  Source.Top := Max(0, Yshift);
  Source.Width := Min(W, Bitmap.Width);
  Source.Height := Min(H, Bitmap.Height);

  Dest.Left := Max(0, -Xshift);
  Dest.Top := Max(0, -Yshift);
  Dest.Width := Source.Width;
  Dest.Height := Source.Height;

  Bmp := TBitmap.Create;
  try
    Bmp.SetSize(W, H);
    Bmp.Canvas.Brush.Style := bsClear;
    Bmp.Canvas.Brush.Color := BackColor;
    Bmp.Canvas.FillRect(Rect(0, 0, W, H));
    Bmp.Canvas.CopyRect(Dest, Bitmap.Canvas, Source);
    Bitmap.Assign(Bmp);
  finally
    Bmp.Free;
  end;
end;

function Base64FromBitmap(Bitmap: TBitmap): string;
var
  Input: TBytesStream;
  Output: TStringStream;
begin
  Input := TBytesStream.Create;
  try
    Bitmap.SaveToStream(Input);
    Input.Position := 0;
    Output := TStringStream.Create('', TEncoding.ASCII);
    try
      Soap.EncdDecd.EncodeStream(Input, Output);
      Result := Output.DataString;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

function BitmapFromBase64(const base64: string): TBitmap;
var
  Input: TStringStream;
  Output: TBytesStream;
begin
  Input := TStringStream.Create(base64, TEncoding.ASCII);
  try
    Output := TBytesStream.Create;
    try
      Soap.EncdDecd.DecodeStream(Input, Output);
      Output.Position := 0;
      Result := TBitmap.Create;
      try
        Result.LoadFromStream(Output);
      except
        Result.Free;
        raise;
      end;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

procedure DrawShape(ATarget:TCanvas; TopLeft, BottomRight: TPoint; ADrawingTool: TDrawingTool; AMode: TPenMode; APenColor: TColor = clRed);
begin
  with ATarget do
  begin
    Pen.Mode := AMode;
    Pen.Color := APenColor;
    Pen.Style := psSolid;
    Pen.Width := 2;
    Brush.Style := bsClear;

    case ADrawingTool of
      dtLine:
        begin
          MoveTo(TopLeft.X, TopLeft.Y);
          LineTo(BottomRight.X, BottomRight.Y);
        end;
      dtRectangle:
        begin
          Rectangle(TopLeft.X, TopLeft.Y, BottomRight.X, BottomRight.Y);
        end;
      dtEllipse:
        Ellipse(TopLeft.X, TopLeft.Y, BottomRight.X, BottomRight.Y);
      dtRoundRect:
        RoundRect(TopLeft.X, TopLeft.Y, BottomRight.X, BottomRight.Y, (TopLeft.X - BottomRight.X) div 2, (TopLeft.Y - BottomRight.Y) div 2);
    end;
  end;
end;

// 2019-03-21 dyddyd  ::  Return TColor value in XXXXXX format (X being a hex digit)
function TColorToHex( Color : TColor ): string;
begin
  Result :=
    { red value }
    IntToHex( GetRValue( Color ), 2 ) +
    { green value }
    IntToHex( GetGValue( Color ), 2 ) +
    { blue value }
    IntToHex( GetBValue( Color ), 2 );
end;

// 2019-03-21 dyddyd  ::  sColor should be in XXXXXX format (X being a hex digit)
function HexToTColor( sColor : string ): TColor;
begin
  Result :=
    RGB(
      { get red value }
      StrToInt( '$'+Copy( sColor, 1, 2 ) ),
      { get green value }
      StrToInt( '$'+Copy( sColor, 3, 2 ) ),
      { get blue value }
      StrToInt( '$'+Copy( sColor, 5, 2 ) )
    );
end;

procedure MakeButton(AOwner: TComponent; AParent: TWincontrol; AAlign: TAlign; AOnClick: TNotifyEvent; ACaption: string; AObjInfo: TObjInfo);
begin
  with TscGPButton.Create(AOwner) do
  begin
    Name := 'btnObjInfo'+IntToStr(AObjInfo.Seq);
    Tag := AObjInfo.Seq;
    Parent := AParent;
    Align := AAlign;
    OnClick := AOnClick;
    Options.ShapeStyle := scgpRoundedRect;
    Caption := ACaption;
  end;
end;

procedure MakeLabel(AOwner: TComponent; AParent: TWinControl; AOnClick: TNotifyEvent; ACaption: string; AObjInfo: TObjInfo);
begin
  with TscGPLabel.Create(AOwner) do
  begin
    Name := 'lblObjInfo'+IntToStr(AObjInfo.Seq);
    Tag := AObjInfo.Seq;
    Parent := AParent;
    Left := Round(AParent.Width * AObjInfo.Xmin);
    Top := Round(AParent.Height * AObjInfo.Ymin - 10);
    OnClick := AOnClick;
    Caption := ACaption;
    AutoSize := True;
  end;
end;

procedure SetscGPButtonColor(Sender: TObject);
begin
  if TscGPButton(Sender).Tag = 0  then
  begin
    TscGPButton(Sender).Options.NormalColor := clBtnFace;
    TscGPButton(Sender).Options.FocusedColor := clBtnFace;
    TscGPButton(Sender).Options.HotColor := clBtnFace;
  end
  else
  begin
    TscGPButton(Sender).Options.NormalColor := clBtnShadow;
    TscGPButton(Sender).Options.FocusedColor := clBtnShadow;
    TscGPButton(Sender).Options.HotColor := clBtnShadow;
  end;
end;

{Sleep}
procedure WaitSleep(sleepTime: Integer);
var
  iStart: Integer;
begin
  iStart := GetTickCount;
  while GetTickCount - iStart < sleepTime do
  begin
    Sleep(1);
    Application.ProcessMessages;
  end;
end;

procedure SaveConfig(const FileName: string; const rConfig: TConfigInfo);
var
  ini: TMemIniFile;
begin
  ini := TMemIniFile.Create(FileName);
  try
    ini.WriteString('FORM', 'OverlayMode', IfThen(rConfig.OverlayMode, '1', '0'));
    ini.WriteString('FORM', 'Animation', IfThen(rConfig.Animation, '1', '0'));
    ini.WriteInteger('FORM', 'CompactWidth', rConfig.CompactWidth);
    ini.WriteInteger('FORM', 'SkinComboIndex', rConfig.SkinComboIndex);
    ini.WriteString('FORM', 'Maximize', IfThen(rConfig.Maximize, '1', '0'));
    ini.WriteString('FORM', 'Sizable', IfThen(rConfig.Sizable, '1', '0'));
    ini.WriteString('FORM', 'StayOnTop', IfThen(rConfig.StayOnTop, '1', '0'));
    ini.UpdateFile;
  finally
    ini.Free;
  end;
end; {SaveConfig}

procedure LoadConfig(const FileName: string; var rConfig: TConfigInfo);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(FileName);
  try
    if ini.ReadString('FORM', 'OverlayMode', '1') = '1' then rConfig.OverlayMode := True else rConfig.OverlayMode := False;
    if ini.ReadString('FORM', 'Animation', '1') = '1' then rConfig.Animation := True else rConfig.Animation := False;
    rConfig.CompactWidth := ini.ReadInteger('FORM', 'CompactWidth', 0);
    rConfig.SkinComboIndex := ini.ReadInteger('FORM', 'SkinComboIndex', 0);
    if ini.ReadString('FORM', 'Maximize', '1') = '1' then rConfig.Maximize := True else rConfig.Maximize := False;
    if ini.ReadString('FORM', 'Sizable', '1') = '1' then rConfig.Sizable := True else rConfig.Sizable := False;
    if ini.ReadString('FORM', 'StayOnTop', '1') = '1' then rConfig.StayOnTop := True else rConfig.StayOnTop := False;
  finally
    ini.Free;
  end;
end; {LoadConfig}

procedure LoadObjColorListFromFile(const FileName: string; var aArray: TObjectColorArray);
var
  ini: TIniFile;
  list: TStringList;
  i: Integer;
begin
  ini := TIniFile.Create(FileName);
  list := TStringList.Create;

  try
    SetLength(aArray, 0);

    ini.ReadSections(list);
    for i := 0 to list.Count-1 do
    begin
      SetLength(aArray, Length(aArray)+1);
      aArray[Length(aArray)-1].ObjName := ini.ReadString(list[i], 'OBJNAME', 'None');
      aArray[Length(aArray)-1].ObjColor := StrToInt(ini.ReadString(list[i], 'OBJCOLOR', '#FFFFFF'));
    end;
  finally
    list.Free;
    ini.Free;
  end;
end;

function GetObjColor(const aArray: TObjectColorArray; const aName: string): TColor;
var
  i: Integer;
begin
  Result := clBtnText;

  for i := 0 to Length(aArray)-1 do
    if Pos(aArray[i].ObjName, aName) > 0 then
    begin
      Result := aArray[i].ObjColor;
      Exit;
    end;
end;

function GetStringFromFile(const FileName: string): AnsiString;
var
  MS: TMemoryStream;
begin
  Result := '';
  MS := TMemoryStream.Create;
  try
    MS.LoadFromFile(FileName);
    SetString(Result, PAnsiChar(MS.Memory), MS.Size);
  finally
    MS.Free;
  end;
end;

end.
