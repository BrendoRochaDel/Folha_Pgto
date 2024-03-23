unit UfrmPadraoGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, UdmDataModule;

type
  TfrmPadraoGrid = class(TForm)
    Panel1: TPanel;
    btnAdd: TSpeedButton;
    btnEdt: TSpeedButton;
    dbgGrid: TDBGrid;
    dts: TDataSource;
    btnDel: TSpeedButton;
    procedure btnDelClick(Sender: TObject);
    procedure btnEdtClick(Sender: TObject);
    procedure dbgGridDblClick(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure EditarItem(); virtual; abstract;
  public
    { Public declarations }
  end;

var
  frmPadraoGrid: TfrmPadraoGrid;

implementation

{$R *.dfm}

procedure TfrmPadraoGrid.btnDelClick(Sender: TObject);
var resp : integer;
begin
  if dts.DataSet <> nil then
   begin
    resp := application.messagebox('Deseja Remover?','Confirma',mb_iconquestion+MB_YESNO);
    case resp of
      idyes : dts.DataSet.Delete
    end;
   end;
end;

procedure TfrmPadraoGrid.btnEdtClick(Sender: TObject);
begin
  if (dts.DataSet <> nil) and (dts.DataSet.RecordCount > 0) then
   EditarItem();
end;

procedure TfrmPadraoGrid.dbgGridDblClick(Sender: TObject);
begin
  if (dts.DataSet <> nil) and (dts.DataSet.RecordCount > 0) then
   EditarItem();
end;

end.
