unit UfrmSelEmp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmSelEmp = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    procedure Panel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelEmp: TfrmSelEmp;

implementation

{$R *.dfm}

procedure TfrmSelEmp.FormShow(Sender: TObject);
begin
  Self.Enabled := True;
end;

procedure TfrmSelEmp.Panel2Click(Sender: TObject);
begin
  self.Close;
end;

end.
