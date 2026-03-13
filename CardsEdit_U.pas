unit CardsEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,Db,RegularExpressions;

type
  TCardsEdit_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Ncard: TEdit;
    E_LastName: TEdit;
    E_Fname: TEdit;
    E_Sname: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    E_Discount: TEdit;
    Label6: TLabel;
    E_Phone: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure SetControls;
    function CheckPhone(S:String):Boolean;
  public
    { Public declarations }
  end;

var
  CardsEdit_F: TCardsEdit_F;

implementation

{$R *.dfm}
uses dmunit,cards_u;
{ TMyMaskEdit }

function TCardsEdit_F.CheckPhone(S: String): Boolean;
var RegEx: TRegEx;
begin
  Result:=False;
  RegEx:=TRegEx.Create('^8\ \(\d{3}\)\ \d{3}\-\d{2}\-\d{2}$');
  //^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$ - ТЕЛЕФОН 10 цифр
  if RegEx.IsMatch(S)then
   Result:=True;
end;


procedure TCardsEdit_F.BitBtn1Click(Sender: TObject);
var
 rec:Integer;
begin
  ModalResult:=mrNone;
  if not CheckPhone(E_Phone.Text) then
    begin
      Application.MessageBox('Ошибка ввода телефонного номера','Внимание',MB_OK+MB_ICONERROR);
      E_Phone.SetFocus;
      Exit;
    end;
   if (Application.MessageBox('Занести данные в базу данных ?','Подтверждение занесения в базу данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
       rec:=Cards_F.Grid_Main.DataSource.DataSet.FieldByName('ID').AsInteger;
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('update cards set ');
       DMod.Qry_Add.Sql.Add('numcard=:p0,lastname=:p1,firstname=:p2,midname=:p3,discount=:p4,phone=:p5 ');
       DMod.Qry_Add.Sql.Add(' where id=:p6');
       DMod.Qry_Add.Params[0].Value:=E_Ncard.Text;
       DMod.Qry_Add.Params[1].Value:=E_LastName.Text;
       DMod.Qry_Add.Params[2].Value:=E_Fname.Text;
       DMod.Qry_Add.Params[3].Value:=E_Sname.Text;
       DMod.Qry_Add.Params[4].Value:=E_Discount.Text;
       DMod.Qry_Add.Params[5].Value:=E_Phone.Text;
       DMod.Qry_Add.Params[6].AsInteger:=rec;
       DMod.Qry_Add.ExecQuery;
       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
       ModalResult:=mrOk;
    except
        on E: EdatabaseError do
          begin
           DMod.Qry_Add.Transaction.Rollback;
           ShowMessage(E.Message);
           Exit;
          end;


    //       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
//       Application.MessageBox('Ошибка базы данных. Возможно неправильно сформирован запрос',
//                                  'Внимание',mb_iconstop+mb_ok);
    end;
   end;
 if ModalResult = mrOk then
    begin
       DMod.Qry_Cards.Close;
       DMod.Qry_Cards.Open;
       Dmod.Qry_Cards.Locate('id',rec,[]);
    end;
end;

procedure TCardsEdit_F.SetControls;
begin
  E_Ncard.Text:= cards_F.Grid_Main.DataSource.DataSet.FieldByName('NUMCARD').AsString;
  E_LastName.Text:= cards_F.Grid_Main.DataSource.DataSet.FieldByName('LASTNAME').AsString;
  E_Fname.Text:= cards_F.Grid_Main.DataSource.DataSet.FieldByName('FIRSTNAME').AsString;
  E_Sname.Text:= cards_F.Grid_Main.DataSource.DataSet.FieldByName('MIDNAME').AsString;
  E_Discount.Text:= cards_F.Grid_Main.DataSource.DataSet.FieldByName('DISCOUNT').AsString;
  E_Phone.Text:= cards_F.Grid_Main.DataSource.DataSet.FieldByName('PHONE').AsString;

end;

procedure TCardsEdit_F.FormShow(Sender: TObject);
begin
  SetControls;
end;

end.


