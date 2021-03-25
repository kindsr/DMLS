unit uFileProc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, DateUtils,
  Dialogs, ExtCtrls, StdCtrls, Vcl.OleCtrls, SHDocVw;

{FileSearch}
procedure DoSearch(const Path: String; const FileExts: TStringList); overload;
procedure DoSearch(const Path: String; const FileExts: TStringList; var OutList: TStringList); overload;
procedure FindAllFiles(const Path, FileExt: String); overload;
procedure FindAllFiles(const Path, FileExt: String; var OutList: TStringList); overload;
function  IsFileinUse(FileName: TFileName): Boolean;

implementation

procedure DoSearch(const Path: String; const FileExts: TStringList);
var
  SR: TSearchRec;
  i: Integer;
begin
  Application.ProcessMessages;
  for i:=0 to FileExts.Count-1 do
  begin
    FindAllFiles(Path, '*.' + FileExts.Strings[i]);
  end;

  if FindFirst(Path + '*.*', faDirectory, SR) = 0 then
    try
      repeat
        if ((SR.Attr and faDirectory) <> 0) and (SR.Name[1] <> '.') then
        begin
          DoSearch(Path + SR.Name + '\', FileExts);
        end;
      until (FindNext(SR) <> 0);
    finally
      SysUtils.FindClose(SR);
    end;
end;

procedure DoSearch(const Path: String; const FileExts: TStringList; var OutList: TStringList);
var
  SR: TSearchRec;
  i: Integer;
begin
  Application.ProcessMessages;
  for i:=0 to FileExts.Count-1 do
  begin
    FindAllFiles(Path, '*.' + FileExts.Strings[i], OutList);
  end;

//  if FindFirst(Path + '*.*', faDirectory, SR) = 0 then
//    try
//      repeat
//        if ((SR.Attr and faDirectory) <> 0) and (SR.Name[1] <> '.') then
//        begin
//          DoSearch(Path + SR.Name + '\', FileExts, OutList);
//        end;
//      until (FindNext(SR) <> 0);
//    finally
//      SysUtils.FindClose(SR);
//    end;
end;

procedure FindAllFiles(const Path, FileExt: String);
var
  SR: TSearchRec;
begin
  if FindFirst(Path + FileExt, faArchive, SR) = 0 then
  begin
    try
      repeat
        if (FileExt <> '*.*') and ( LowerCase(FileExt) <> LowerCase('*' + ExtractFileExt(SR.Name)) ) then
          Continue;

        if IsFileinUse(Path + SR.Name) then Continue;

//        if (Path + SR.Name = Application.ExeName) or
//           (Path + SR.Name = 'c:\windows\system32\log.txt') then
//          continue;
//
//        if Path.Contains(ExtractFilePath(ParamStr(0))) or
//           Path.Contains('C:\fileupload') then
//          continue;

        Application.ProcessMessages;
//        showmessage(Path + SR.Name);
//        lvServer.Items.BeginUpdate;
//        with lvServer.Items.Add do
//        begin
//            Caption := SR.Name;
//            SubItems.Add(DateTimeToStr(FileDateToDateTime(FileAge(Path + SR.Name))));
//            SubItems.Add(Path);
//        end;
//        lvServer.Items.EndUpdate;
//
//        FileLogger.WriteLogMsg('|' + IntToStr(iSeq) + '|' + Path + SR.Name + '|' + DateTimeToStr(FileDateToDateTime(FileAge(Path + SR.Name))) + '|');
//        Inc(iSeq);
        // 처리할 내용
        Application.ProcessMessages;

      until (FindNext(SR) <> 0);
    finally
      SysUtils.FindClose(SR);
    end;
  end;
end;

procedure FindAllFiles(const Path, FileExt: String; var OutList: TStringList);
var
  SR: TSearchRec;
begin
  if FindFirst(Path + FileExt, faArchive, SR) = 0 then
  begin
    try
      repeat
        if (FileExt <> '*.*') and ( LowerCase(FileExt) <> LowerCase('*' + ExtractFileExt(SR.Name)) ) then
          Continue;

        if IsFileinUse(Path + SR.Name) then Continue;

        Application.ProcessMessages;
        // 처리할 내용
        OutList.Add(Path + SR.Name);
        Application.ProcessMessages;

      until (FindNext(SR) <> 0);
    finally
      SysUtils.FindClose(SR);
    end;
  end;
end;

function IsFileinUse(FileName: TFileName): Boolean;
var
  HFileRes: HFILE;
begin
  Result := FALSE;

  if not FileExists(FileName) then Exit;
  HFileRes := CreateFile(PChar(FileName), GENERIC_READ or GENERIC_WRITE, 0, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  Result := (HFileRes = INVALID_HANDLE_VALUE);

  if not Result then
    CloseHandle(HFileRes);
end;

end.
