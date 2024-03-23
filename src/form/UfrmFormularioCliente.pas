unit UfrmFormularioCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmFormularioCliente = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtNome: TDBEdit;
    edtInscricao: TDBEdit;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormularioCliente: TfrmFormularioCliente;

implementation

{$R *.dfm}

end.
