unit Kol2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons,DB;

type
  TKol_Form2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Edit2: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
    Sale_Price:Double;
  public
    { Public declarations }
  end;

var
  Kol_Form2: TKol_Form2;

implementation
uses dmunit,main;

{$R *.DFM}

procedure TKol_Form2.BitBtn1Click(Sender: TObject);
var
   R:Integer;
   Mes:String;
   f:Extended;
begin
  ModalResult:=mrNone;
  if StrToFloat(Edit1.Text) = 0 then
     begin
       Mes:='Êîëè÷åñòâî ïğîäàâàåìîãî òîâàğà íå ìîæåò áûòü = 0';
       Application.MessageBox(Pchar(Mes),'Âíèìàíèå',mb_iconstop+mb_ok);
       Exit;
     end;
 f:= StrToFloat(Edit1.Text);
  if (f > PagesDlg.Grid_Kat.DataSource.DataSet.FieldByName('KOL').AsExtended )  then
     begin
       Mes:='Êîëè÷åñòâî ïğîäàâàåìîãî òîâàğà áîëüøå, ÷åì íàõîäèòñÿ íà ñêëàäå'+#10#13;
       Mes:=Mes+'Ïğîäàæà íåâîçìîæíà.';
       Application.MessageBox(Pchar(Mes),'Âíèìàíèå',mb_iconstop+mb_ok);
       Exit;
     end;
  R:=PagesDlg.Grid_Kat.DataSource.DataSet.FieldByName('NN').AsInteger;
     try
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('insert into sales (data_sale,krname,optprice,price,marka,kol,id_tov,sale_price) ');
       DMod.Qry_Add.Sql.Add(' values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7) ');
       DMod.Qry_Add.Params[0].Value:=Now;
       DMod.Qry_Add.Params[1].AsString:=PagesDlg.Grid_Kat.DataSource.DataSet.FieldByName('NAME').AsString;
       DMod.Qry_Add.Params[2].Value:=PagesDlg.Grid_Kat.DataSource.DataSet.FieldByName('optprice').Value;
       DMod.Qry_Add.Params[3].Value:=PagesDlg.Grid_Kat.DataSource.DataSet.FieldByName('price_calc').Value;
       DMod.Qry_Add.Params[4].Value:=PagesDlg.Grid_Kat.DataSource.DataSet.FieldByName('marka').AsString;
       DMod.Qry_Add.Params[5].Value:=StrToFloat(Edit1.Text);
       DMod.Qry_Add.Params[6].AsInteger:=R;
       DMod.Qry_Add.Params[7].Value:=StrToFloat(Edit2.Text);
       DMod.Qry_Add.ExecQuery;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('update katalog  ');
       DMod.Qry_Add.Sql.Add(' set kol=kol-:p0 where nn=:p1 ');
       DMod.Qry_Add.Params[0].Value:=StrToFloat(Edit1.Text);
       DMod.Qry_Add.Params[1].AsInteger:=R;
       DMod.Qry_Add.ExecQuery;
       Dmod.Qry_Add.Transaction.Commit;
       ModalResult:=mrOk;
     except
        on E: EdatabaseError do
          begin
           Dmod.Qry_Add.Transaction.Rollback;
           ShowMessage(E.Message);
           ModalResult:=mrCancel;
          end;


{       .Transaction.Rollback;

       Application.MessageBox('Îøèáêà çàïèñè.','Âíèìàíèå',mb_iconstop+mb_ok);
       Exit;}
    end;

       DMod.QKatalog.Close;
       DMod.QKatalog.Open;
       Dmod.QKatalog.Locate('NN',R,[]);
       PagesDlg.ShowSalesBtnClick(PagesDlg.ShowSalesBtn);
end;

procedure TKol_Form2.Edit1Change(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// ğåçóëüòèğóşùàÿ ñòğîêà:
s := '';
// ïğîõîäèì ïî âñåì ñèìâîëàì èñõîäíîé ñòğîêè:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // áåğåì òåêóùèé ñèìâîë:
    c :=(Sender as Tedit).Text[i];
    // Ïğîâåğÿåì åãî íà ïğèíàäëåæíîñòü ê öèôğàì:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Èëè çíàêàì 'òî÷êà' èëè 'çàïÿòàÿ':
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Ïğèñâàåâàåì ïîëş ğåçóëüòèğóşùóş ñòğîêó:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;


procedure TKol_Form2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.Rollback;

end;

procedure TKol_Form2.FormShow(Sender: TObject);
begin
  Sale_Price:=PagesDlg.Grid_Kat.DataSource.DataSet.FieldByName('PRICE').AsCurrency;
  Edit1.Text:='1';
  Edit2.Text:=FloatToStr(Sale_Price);
  Edit1.SetFocus;
end;

end.
