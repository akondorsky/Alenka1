unit Unit_sprav_tovgr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TForm_TovGr = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_TovGr: TForm_TovGr;

implementation
uses main,dmunit;

{$R *.dfm}

procedure TForm_TovGr.DBGridEh1DblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

end.
