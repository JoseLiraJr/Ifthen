program ifthen;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmIften};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmIften, frmIften);
  Application.Run;
end.
