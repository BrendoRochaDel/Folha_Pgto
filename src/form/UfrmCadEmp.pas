unit UfrmCadEmp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UdmDataModule;

type
  TfrmCadEmp = class(TfrmPadrao)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    edtIns: TDBEdit;
    cdsEmp: TFDQuery;
    cdsEmpCODEMP: TIntegerField;
    cdsEmpDSCEMP: TStringField;
    cdsEmpINSCEMP: TStringField;
    cdsEmpSITEMP: TIntegerField;
    edtNom: TDBEdit;
    drgSit: TDBRadioGroup;
  private
    { Private declarations }
    procedure CarregarDados(); override;
  public
    { Public declarations }
  end;

var
  frmCadEmp: TfrmCadEmp;

implementation

{$R *.dfm}

{ TfrmCadEmp }

procedure TfrmCadEmp.CarregarDados();
begin
  cdsEmp.ParamByName('iCodEmp').AsInteger := iCodigo;
  cdsEmp.Open();

  inherited;
end;

end.
