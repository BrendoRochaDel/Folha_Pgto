unit UfrmEmp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadraoGrid, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UdmDataModule;

type
  TfrmEmp = class(TfrmPadraoGrid)
    dtsEmp: TFDQuery;
    dtsEmpCODEMP: TIntegerField;
    dtsEmpDSCEMP: TStringField;
    dtsEmpSITEMP: TIntegerField;
    dtsEmpINSCEMP: TStringField;
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
    procedure EditarItem(); override;
  public
    { Public declarations }
  end;

var
  frmEmp: TfrmEmp;

implementation

{$R *.dfm}
uses
  UfrmCadEmp;

procedure TfrmEmp.btnAddClick(Sender: TObject);
begin
  inherited;
  if TfrmCadEmp.Execute() then
   dtsEmp.Refresh;
end;

procedure TfrmEmp.EditarItem;
begin
  inherited;
  if TfrmCadEmp.Execute(dtsEmp.FieldByName('CODEMP').AsInteger, false) then
   dtsEmp.Refresh;
end;

end.
