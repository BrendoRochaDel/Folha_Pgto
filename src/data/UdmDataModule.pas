unit UdmDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, System.JSON;

type
  TdmDataModule = class(TDataModule)
    conexao: TFDConnection;
    qryEmp: TFDQuery;
    dtsEmp: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
   function CarregarConfigBanco: TJSONObject;
  public
    { Public declarations }
  end;

var
  dmDataModule: TdmDataModule;

implementation

uses
  Dialogs;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TdmDataModule.CarregarConfigBanco: TJSONObject;
var
  ArquivoConfig: TStringList;
  JSONString: string;
begin
  ArquivoConfig := TStringList.Create;
  try
    ArquivoConfig.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'config.json');
    JSONString := ArquivoConfig.Text;
    Result := TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  except
    on E: Exception do
    begin
     ShowMessage('Erro ao carregar as configurações do banco: ' + E.Message);
     ArquivoConfig.Free;
     Abort;
    end;
  end;

  ArquivoConfig.Free;
end;

procedure TdmDataModule.DataModuleCreate(Sender: TObject);
var
  ConfigJSON: TJSONObject;
begin
  ConfigJSON := CarregarConfigBanco;

  try
   conexao.Params.Values['Server']    := ConfigJSON.GetValue('Servidor').Value;
   conexao.Params.Values['Port']      := ConfigJSON.GetValue('Porta').Value;
   conexao.Params.Values['User_Name'] := ConfigJSON.GetValue('Usuario').Value;
   conexao.Params.Values['Password']  := ConfigJSON.GetValue('Senha').Value;
   conexao.Params.Values['DataBase']  := ConfigJSON.GetValue('PathDir').Value;
  finally
   ConfigJSON.Free;
  end;

  conexao.Connected;
end;

end.
