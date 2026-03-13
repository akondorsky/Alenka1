unit Unit_prihod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,Db;

type
  TFormPrihod = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrihod: TFormPrihod;

implementation
uses main, DMUnit;
{$R *.dfm}


procedure TFormPrihod.BitBtn1Click(Sender: TObject);
var
   R:Integer;
   zak,kol:Double;
   Mes:String;
begin
  ModalResult:=mrNone;
    R:=PagesDlg.Grid_zak.DataSource.DataSet.FieldByName('NN').AsInteger;
    zak:=PagesDlg.Grid_Zak.DataSource.DataSet.FieldByName('ZAK').AsFloat;
    kol:=PagesDlg.Grid_Zak.DataSource.DataSet.FieldByName('KOL').AsFloat;
   if (Application.MessageBox('Занести данные в базу данных ?','Подтверждение занесения в базу данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('update katalog set ');
       DMod.Qry_Add.Sql.Add('kol=:p0,zak=:p1 ');
       DMod.Qry_Add.Sql.Add('where nn=:p2 ');
       DMod.Qry_Add.Params[0].Value:=StrTofloat(Edit1.Text)+kol;
       if StrTofloat(Edit1.Text) > zak then
          begin
            Mes:='Количество приходуемого товара больше, чем в заказе.Оставить данное количество?';
            if Application.MessageBox(Pchar(Mes),'Внимание',mb_iconwarning+
                                      mb_YESNo) =idYes then
                  DMod.Qry_Add.Params[1].Value:=0
               else
                  Exit;
          end
         else
          DMod.Qry_Add.Params[1].Value:=zak-StrTofloat(Edit1.Text);
       DMod.Qry_Add.Params[2].Value:=R;
       DMod.Qry_Add.ExecQuery;
       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
       ModalResult:=mrOk;
    except
      on EdatabaseError do
        begin
          if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
          Application.MessageBox('Ошибка базы данных. Возможно неправильно сформирован запрос',
                                  'Внимание',mb_iconstop+mb_ok);
        end;
    end;

   end;
 if ModalResult = mrOk then
    begin
       DMod.TZakaz.Close;
       DMod.Tzakaz.Open;
       Dmod.TZakaz.Locate('NN',R,[]);
       PagesDlg.RefrBtnClick(PagesDlg.RefrBtn);
    end;

end;

procedure TFormPrihod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   IF DMod.Qry_Add.Transaction.InTransaction  then DMod.Qry_Add.Transaction.Rollback;
end;

procedure TFormPrihod.FormShow(Sender: TObject);
begin
 Edit1.Text:=PagesDlg.Grid_Zak.DataSource.DataSet.FieldByName('ZAK').AsString;
 Edit1.SetFocus;
end;

end.
