unit frmServerJob;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ieview, imageenview, ievect,
  scGPControls, Vcl.StdCtrls, scControls;

type
  TServerJob = class(TForm)
    scPanel1: TscPanel;
    lblMousePoint: TLabel;
    btnNext: TscGPButton;
    btnPrev: TscGPButton;
    Edit1: TEdit;
    btnLoad: TscGPGlyphButton;
    btnRect: TscGPGlyphButton;
    btnDelete: TscGPGlyphButton;
    btnSelect: TscGPGlyphButton;
    btnExport: TscGPGlyphButton;
    lblCount: TscGPLabel;
    scPanel2: TscPanel;
    ievImage: TImageEnVect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServerJob: TServerJob;

implementation

{$R *.dfm}

end.
