unit Unit_printnom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormPrintNom = class(TForm)
    Rg1: TRadioGroup;
    Rg2: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Ch1: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrintNom: TFormPrintNom;

implementation

{$R *.dfm}
uses DMUnit,Main;

procedure TFormPrintNom.BitBtn1Click(Sender: TObject);
var
 sql, sql_ord, sql_wh:String;
begin
sql:=' select a.*, '+
     ' A.KOL*A.PRICE AS SUM_TOV,A.KOL*A.OPTPRICE AS SUM_TOV_OPT  from katalog  A ';
case Rg2.ItemIndex of
  0:  sql_ord := ' order by a.name, a.marka ' ;
  1:  sql_ord := ' order by a.marka, a.name  ' ;
end;
if Ch1.Checked then
   sql_wh:=' where a.kol > 0 ';
sql:=sql+sql_wh+sql_ord;
DMod.QryRepNom.Close;
DMOd.QryRepNom.SQL.Clear;
Dmod.QryRepNom.SQL.Add(sql);
DMod.QryRepNom.Open;
case Rg1.ItemIndex of
  0: PagesDlg.FR1.LoadFromFile('nom.fr3');
  1: PagesDlg.FR1.LoadFromFile('nom1.fr3');
  2: PagesDlg.FR1.LoadFromFile('nom2.fr3');
end;
PagesDlg.FR1.ShowReport(True);
Dmod.QryRepNom.Close;
end;

procedure TFormPrintNom.BitBtn2Click(Sender: TObject);
begin
  FormPrintNom.CloseModal;
end;

procedure TFormPrintNom.FormShow(Sender: TObject);
begin
  if (Role = MAIN_SELLER) then Rg1.Enabled:=True else RG1.Enabled:=False;
  
end;

end.
