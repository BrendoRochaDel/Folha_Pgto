program Folha_Pgto;

uses
  Vcl.Forms,
  System.SysUtils,
  UfrmPrincipal in 'src\form\UfrmPrincipal.pas' {frmPrincipal},
  UfrmClientes in 'src\form\UfrmClientes.pas' {frmClientes},
  UdmDataModule in 'src\data\UdmDataModule.pas' {dmDataModule: TDataModule},
  UfrmPadraoGrid in 'src\form\UfrmPadraoGrid.pas' {frmPadraoGrid},
  UfrmPadrao in 'src\form\UfrmPadrao.pas' {frmPadrao},
  UfrmFormularioCliente in 'src\form\UfrmFormularioCliente.pas' {frmFormularioCliente},
  UfrmEmp in 'src\form\UfrmEmp.pas' {frmEmp},
  UfrmCadEmp in 'src\form\UfrmCadEmp.pas' {frmCadEmp},
  UEmpresa in 'src\model\UEmpresa.pas',
  USistemaController in 'src\controller\USistemaController.pas',
  UfrmCadEpg in 'src\form\UfrmCadEpg.pas' {frmPadrao1},
  UfrmSelEmp in 'src\form\UfrmSelEmp.pas' {frmSelEmp};

{$R *.res}

begin
  Application.Title  := 'Folha Pagamento';
  Application.Initialize;

  CreateSistemaControle;
  try
   Application.CreateForm(TdmDataModule, dmDataModule);
  if True then
    begin
     Application.CreateForm(TfrmPrincipal, frmPrincipal);
     frmPrincipal.Show;
    end;
  except
   on E: Exception do
    begin
     Application.Terminate;
    end;
  end;

  Application.Run;
end.
