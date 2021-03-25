unit frmRegisterObject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scGPExtControls, uFunction, uConst,
  scGPControls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, scColorDialog, System.IniFiles,
  AdvDropDown, AdvColorPickerDropDown, RzPanel, RzBorder, scAdvancedControls;

type
  TRegisterObject = class(TForm)
    btnAdd: TscGPButton;
    btnDelete: TscGPButton;
    lblName: TscGPLabel;
    edtName: TscGPEdit;
    lblColor: TscGPLabel;
    scColorDialog1: TscColorDialog;
    btnColorPicker: TscGPButton;
    Shape1: TShape;
    lbColorList: TListBox;
    procedure btnColorPickerClick(Sender: TObject);
    procedure lbColorListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure lbColorListClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function GetColor: TColor;
    procedure SetChangedColor(aColor: TColor);
    procedure AddColor(const aStr: String; const aColor: TColor);
    procedure SaveColorList(const aListBox: TListBox); overload;
    procedure SaveColorList(const aListBox: TListBox; var aArray: TObjectColorArray); overload;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegisterObject: TRegisterObject;
  FIni: TMemIniFile;

implementation

uses frmMain;

{$R *.dfm}

procedure TRegisterObject.btnAddClick(Sender: TObject);
begin
  if Trim(edtName.Text) = '' then
  begin
    ShowMessage('Input Object Name.');
    Exit;
  end;

  if (GetColor = clBtnFace) or (GetColor = clBlack) then
  begin
    ShowMessage('Select Object Color.');
    Exit;
  end;

  AddColor(edtName.Text, GetColor);
end;

procedure TRegisterObject.btnColorPickerClick(Sender: TObject);
begin
  Main.scStyledForm1.ShowClientInActiveEffect;
  if scColorDialog1.Execute then
  begin
    SetChangedColor(scColorDialog1.Color);
  end;
  Main.scStyledForm1.HideClientInActiveEffect;
end;

procedure TRegisterObject.btnDeleteClick(Sender: TObject);
begin
  lbColorList.DeleteSelected;
  SaveColorList(lbColorList);
end;

procedure TRegisterObject.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  SaveColorList(lbColorList, FObjColorArray);
  FIni.Free;
end;

procedure TRegisterObject.FormCreate(Sender: TObject);
var
  i: Integer;
  list: TStringList;
begin
  FIni := TMemIniFile.Create(ExtractFilePath(Application.ExeName) + 'ObjColorList.ini');
  list := TStringList.Create;
  try
    FIni.ReadSections(list);
    for i := 0 to list.Count-1 do
      AddColor(FIni.ReadString(list[i], 'OBJNAME', 'None'), StrToInt(FIni.ReadString(list[i], 'OBJCOLOR', '#FFFFFF')));
  finally
    list.Free;
    Tag := Tag + 1;
  end;
end;

procedure TRegisterObject.lbColorListClick(Sender: TObject);
begin
  if TListBox(Sender).ItemIndex = -1 then Exit;
  try
    edtName.Text := TListBox(Sender).Items[TListBox(Sender).ItemIndex];
//    SetChangedColor(TListBox(Sender).Canvas.Brush.Color);
    SetChangedColor(TListBox(Sender).Canvas.Font.Color);
  except
  end;
end;

procedure TRegisterObject.lbColorListDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  with Control as TListBox do
  begin
//    Canvas.Brush.Style := bsSolid;
//    Canvas.Brush.Color := TColor(Items.Objects[Index]);
//    Canvas.Pen.Style := psClear;
//    Canvas.FillRect(Rect);
    Canvas.Font.Color := TColor(Items.Objects[Index]);
    Canvas.TextOut(Rect.Left + 2, Rect.Top, Items[Index]);
  end;
end;

function TRegisterObject.GetColor: TColor;
begin
  Result := btnColorPicker.Options.NormalColor;
end;

procedure TRegisterObject.SetChangedColor(aColor: TColor);
begin
  btnColorPicker.Options.NormalColor := aColor;
  btnColorPicker.Options.HotColor := aColor;
  btnColorPicker.Options.FocusedColor := aColor;
end;

procedure TRegisterObject.AddColor(const aStr: String; const aColor: TColor);
var
  OldLine: Integer;
begin
  if lbColorList.Items.IndexOf(aStr) > -1 then
//  if FIni.SectionExists(aStr) then
  begin
    if lbColorList.ItemIndex = -1 then Exit;

    OldLine := lbColorList.ItemIndex;
    lbColorList.Items.Delete(OldLine);
    lbColorList.Items.InsertObject(OldLine, aStr, Pointer(aColor));
  end
  else
  begin
    lbColorList.Items.BeginUpdate;
    lbColorList.Items.AddObject(aStr, Pointer(aColor));
    lbColorList.Items.EndUpdate;
  end;

  if Tag <> 0 then
    SaveColorList(lbColorList);
end;

procedure TRegisterObject.SaveColorList(const aListBox: TListBox);
var
  i: Integer;
begin
  try
    FIni.Clear;
    for i := 0 to aListBox.Items.Count -1 do
    begin
      FIni.WriteString(aListBox.Items[i], 'OBJNAME', aListBox.Items[i]);
      FIni.WriteString(aListBox.Items[i], 'OBJCOLOR', Format('$%8.8x',[TColor(aListBox.Items.Objects[i])]));
    end;
  finally
    FIni.UpdateFile;
  end;
end;

procedure TRegisterObject.SaveColorList(const aListBox: TListBox; var aArray: TObjectColorArray);
var
  i: Integer;
begin
  SetLength(aArray, 0);

  for i := 0 to aListBox.Items.Count -1 do
  begin
    SetLength(aArray, Length(aArray)+1);
    aArray[Length(aArray)-1].ObjName := aListBox.Items[i];
    aArray[Length(aArray)-1].ObjColor := TColor(aListBox.Items.Objects[i]);
  end;
end;

end.
