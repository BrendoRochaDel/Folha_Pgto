unit USistemaController;

interface

uses
  UEmpresa;

type
  TSistemaFolha = class
  private
    FCodigoEmpresaSelecionada: integer;
    FMesSelecionado: Integer;
    FAnoSelecionado: Integer;
    FEmpresa: TEmpresa;
  
  published
    property CodigoEmpresaSelecionada: integer read FCodigoEmpresaSelecionada write FCodigoEmpresaSelecionada;
    property MesSelecionado: Integer read FMesSelecionado write FMesSelecionado;
    property AnoSelecionado: Integer read FAnoSelecionado write FAnoSelecionado;
    property Empresa: TEmpresa read FEmpresa write FEmpresa;
  end;

  procedure CreateSistemaControle;
  var
    SistemaControle: TSistemaFolha;

implementation

procedure CreateSistemaControle();
begin
  if SistemaControle = nil then
    SistemaControle := TSistemaFolha.Create;
end;

end.
