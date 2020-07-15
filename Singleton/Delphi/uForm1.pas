unit uForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uConfig, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    edtTeste: TEdit;
    lblConteudo: TLabel;
    Button1: TButton;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FConfig: TConfiguracoes;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  FConfig:= TConfiguracoes.GetInstance(self);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  FConfig.url:= edtTeste.Text;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  lblConteudo.Caption:= FConfig.url;
end;

end.
