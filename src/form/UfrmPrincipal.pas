unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXPickers, Vcl.DBCtrls, UdmDataModule, DateUtils;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    header: TPanel;
    CloseForm: TPanel;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    dpMesAno: TDatePicker;
    Label2: TLabel;
    btnPrgEve: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnCalDecTer: TSpeedButton;
    lkpEmp: TDBLookupComboBox;
    pTeste: TPanel;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CloseFormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CloseFormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CloseFormMouseLeave(Sender: TObject);
    procedure CloseFormClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lkpEmpCloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExecuteForm(Form: TFormClass);
    procedure FecharForm();
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UfrmEmp, USistemaController, UfrmSelEmp;

{$R *.dfm}

{ TfrmPrincipal }


procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  Formulario: TfrmSelEmp;
begin
  try
    Formulario := TfrmSelEmp.Create(frmPrincipal);

    Formulario.Parent := frmPrincipal;
    Formulario.Top := 385;
    Formulario.Left := 84;
    Formulario.Width := 283;
    Formulario.Height := 217;
    frmPrincipal.Enabled := false;
    Formulario.Show;
  except
    // Tratar exceções, se houver
  end;
end;

procedure TfrmPrincipal.CloseFormClick(Sender: TObject);
begin
  FecharForm();
  header.Visible := false;
end;

procedure TfrmPrincipal.CloseFormMouseLeave(Sender: TObject);
begin
  CloseForm.Color := clBtnFace;
  CloseForm.Font.Color := clBlack;
end;

procedure TfrmPrincipal.CloseFormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  CloseForm.Color := clRed;
  CloseForm.Font.Color := clWhite;
end;

procedure TfrmPrincipal.CloseFormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CloseForm.Color := clRed;
  CloseForm.Font.Color := clWhite;
end;

procedure TfrmPrincipal.ExecuteForm(Form: TFormClass);
var
  Formulario: TForm;
begin
  try
    FecharForm();
    Formulario := Form.Create(frmPrincipal);

    if Formulario is TForm then
    begin
      TForm(Formulario).Parent := frmPrincipal;
      TForm(Formulario).Align := alClient;
      header.Visible := true;
      header.Caption := '   ' + TForm(Formulario).Caption;
      TForm(Formulario).Show;
    end
    else
      Formulario.Free;
  except
    // Tratar exceções, se houver
  end;
end;

procedure TfrmPrincipal.FecharForm();
var
  i: Integer;
begin
  for i := 0 to frmPrincipal.ComponentCount - 1 do
  begin
    if frmPrincipal.Components[i] is TForm then
    begin
      TForm(frmPrincipal.Components[i]).Close;
      FreeAndNil(TForm(frmPrincipal.Components[i]));
    end;
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  btnPrgEve.Caption := 'Programar' + #13 + 'Eventos';
end;

procedure TfrmPrincipal.lkpEmpCloseUp(Sender: TObject);
begin
  SistemaControle.CodigoEmpresaSelecionada := lkpEmp.KeyValue;
  SistemaControle.MesSelecionado := MonthOf(dpMesAno.Date);
  SistemaControle.AnoSelecionado := YearOf(dpMesAno.Date);
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  ExecuteForm(TfrmEmp);
end;

end.
