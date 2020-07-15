unit uConfig;

interface
uses
  System.SysUtils,
  System.Classes;

type

  TConfiguracoes = class(TComponent)
  private
    class var _Configuracoes: TConfiguracoes;
    var
      FUrl: string;
  protected
    constructor CreateInstance(pOwner: TComponent);
  public
    constructor Create(AOwner: TComponent); override;
    class function GetInstance(pOwner: TComponent): TConfiguracoes;
    property url: string read FUrl write FUrl;
  end;

implementation

constructor TConfiguracoes.CreateInstance(pOwner: TComponent);
begin
  inherited Create(pOwner);
end;

constructor TConfiguracoes.Create(AOwner: TComponent);
begin
  inherited;
  raise Exception.Create('Erro ao instanciar a classe de Gerenciamente de Inatividade. Utilize a função GetInstance');
end;

class function TConfiguracoes.GetInstance(pOwner: TComponent): TConfiguracoes;
begin
  if not Assigned(_Configuracoes) then
  begin
    _Configuracoes := TConfiguracoes.CreateInstance(pOwner);
  end;

  Result := _Configuracoes;
end;

end.
