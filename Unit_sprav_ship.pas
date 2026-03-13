unit Unit_sprav_ship;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DBAxisGridsEh;

type
  TForm_Ship = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Ship: TForm_Ship;

implementation
uses main,dmunit;

{$R *.dfm}

procedure TForm_Ship.DBGridEh1DblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TForm_Ship.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// DBGridEh1.DataSource.DataSet.Close;
end;

procedure TForm_Ship.FormShow(Sender: TObject);
begin
 if not DBGridEh1.DataSource.DataSet.Active then DBGridEh1.DataSource.DataSet.Open;
end;

end.
