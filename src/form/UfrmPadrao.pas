unit UfrmPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB;

type
  TfrmPadrao = class(TForm)
    Panel1: TPanel;
    btnCon: TSpeedButton;
    btnCan: TSpeedButton;
    dts: TDataSource;
    procedure btnConClick(Sender: TObject);
    procedure btnCanClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure DefinirModoCds();
  protected
    bNew: Boolean;
    iCodigo: Integer;

    procedure CarregarDados(); virtual; abstract;
    procedure SalvarDados(); virtual;
  public
    { Public declarations }
    class function Execute(iCodigo: Integer = 0; bNew: Boolean = true): Boolean; virtual;
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

class function TfrmPadrao.Execute(iCodigo: Integer; bNew: Boolean): Boolean;
var
  objForm: TForm;
begin
  objForm := self.Create(nil);

  try
   TfrmPadrao(objForm).bNew := bNew;
   TfrmPadrao(objForm).iCodigo := iCodigo;

   TfrmPadrao(objForm).DefinirModoCds;

   Result := objForm.ShowModal = mrOK;
  finally
   objForm.Free;
  end;
end;

procedure TfrmPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssShift]) and (Key = VK_UP) then
  begin
    {$IFDEF DEBUG}
    ShowMessage(Name);
    {$ENDIF}
  end;
end;

procedure TfrmPadrao.btnCanClick(Sender: TObject);
begin
   Self.Close
end;

procedure TfrmPadrao.btnConClick(Sender: TObject);
var resp : integer;
begin
   resp := application.messagebox('Deseja Salvar?','Confirma',mb_iconquestion+MB_YESNO);
   case resp of
      idyes : SalvarDados();
      idno : ; //showmessage('Nao');
      idcancel : ;//showmessage('Cancela');
   end;

   Self.Close;
   ModalResult := mrOK;
end;

procedure TfrmPadrao.DefinirModoCds;
begin
  if (dts.DataSet <> nil) and (not dts.DataSet.Active) then  
   CarregarDados();

  if bNew then
   begin
    dts.DataSet.Active;
    dts.DataSet.Append;
   end else
   begin
    CarregarDados();
    dts.DataSet.Edit;
   end;
end;

procedure TfrmPadrao.SalvarDados;
begin
  dts.DataSet.Post;
end;

end.
