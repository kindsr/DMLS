program DMLS;

uses
  Vcl.Forms,
  frmMain in 'src\frmMain.pas' {Main},
  frmRegisterObject in 'src\frmRegisterObject.pas' {RegisterObject},
  uConst in 'src\uConst.pas',
  uFunction in 'src\uFunction.pas',
  uGDIUnit in 'src\uGDIUnit.pas',
  uHTTP in 'src\uHTTP.pas',
  uVersionInfo in 'src\uVersionInfo.pas',
  Vcl.Themes,
  Vcl.Styles,
  frmServerJob in 'src\frmServerJob.pas' {ServerJob},
  frmEvalAlgorithm in 'src\frmEvalAlgorithm.pas' {EvalAlgorithm},
  uFileProc in 'src\uFileProc.pas',
  frmProcessImage in 'src\frmProcessImage.pas' {ProcImage},
  frmEditImage in 'src\frmEditImage.pas' {EditImage};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Onyx Blue');
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
