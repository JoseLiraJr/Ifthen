unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, StrUtils;

type
  TfrmIften = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtResultado: TEdit;
    btnTeste: TButton;
    edtTermo2: TEdit;
    edtTermo1: TEdit;
    lblValor1: TLabel;
    lblValor2: TLabel;
    lblExplicacao: TLabel;
    procedure btnTesteClick(Sender: TObject);
  private
    { Private declarations }
    function Falso : string;
    function Verdadeiro : string;
  public
    { Public declarations }
  end;

var
  frmIften: TfrmIften;

implementation

{$R *.dfm}

procedure TfrmIften.btnTesteClick(Sender: TObject);
begin
  edtResultado.Text := ifthen(StrToIntDef(edtTermo1.Text, 0) > StrToIntDef(edtTermo2.Text, 0), Verdadeiro, Falso);
end;

function TfrmIften.Falso: string;
begin
  ShowMessage('Passou pelo Verdadeiro');
  Result := 'False: Valor 2 é o maior';
end;

function TfrmIften.Verdadeiro: string;
begin
  ShowMessage('Passou pelo Falso');
  Result := 'Verdadeiro: Valor 1 é o maior';
end;

end.
