unit uForm2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uConfig, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    edtTeste: TEdit;
    Button1: TButton;
    lblConteudo: TLabel;
    btnCreate: TButton;
    Timer1: TTimer;
    procedure btnCreateClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FConfig: TConfiguracoes;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnCreateClick(Sender: TObject);
begin
  FConfig:= TConfiguracoes.Create(self);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  FConfig:= TConfiguracoes.GetInstance(self);
  FConfig.url:= edtTeste.Text;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  if Assigned(FConfig) then
  lblConteudo.Caption:= FConfig.url;
end;

end.
