program Singleton;

uses
  Vcl.Forms,
  uForm2 in 'uForm2.pas' {Form2},
  uForm1 in 'uForm1.pas' {Form3},
  uConfig in 'uConfig.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Application.Run;
end.
