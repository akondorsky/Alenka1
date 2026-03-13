unit SetUsdPrice_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh,Db, Buttons;

type
  TSetUsdPrice_F = class(TForm)
    Label1: TLabel;
    E_Kurs: TDBNumberEditEh;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetUsdPrice_F: TSetUsdPrice_F;

implementation

{$R *.dfm}
uses dmunit,main;

procedure TSetUsdPrice_F.BitBtn1Click(Sender: TObject);
begin
  if Currency(E_Kurs.Value) = 0  then Exit;

  ModalResult:=mrNone;
   if (Application.MessageBox('Пересчитать цены в USD ?','Подтверждение изменений в базе данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('update katalog set ');
       DMod.Qry_Add.Sql.Add(' optprice_usd = optprice /:p0, price_usd=price / :p1 ');
       DMod.Qry_Add.Params[0].AsCurrency:=Currency(E_Kurs.Value);
       DMod.Qry_Add.Params[1].AsCurrency:=Currency(E_Kurs.Value);
       DMod.Qry_Add.ExecQuery;
      if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
      ModalResult:=mrOk;
    except
      on E:EdatabaseError do
        begin
          if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
          ShowMessage(e.Message);
        end;
    end;

   end;
end;

procedure TSetUsdPrice_F.Button1Click(Sender: TObject);
begin
  if KURSUSD = 0 then
      begin
        ShowMessage('Курс USD не установлен.Продолжение невозможно.');
        Exit;
      end;

  ModalResult:=mrNone;
   if (Application.MessageBox('Пересчитать цены в USD ?','Подтверждение изменений в базе данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('update katalog set ');
       DMod.Qry_Add.Sql.Add(' optprice_usd = price /:p0 ');
       DMod.Qry_Add.Params[0].AsCurrency:=KURSUSD;
       DMod.Qry_Add.ExecQuery;
      if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
      ModalResult:=mrOk;
    except
      on E:EdatabaseError do
        begin
          if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
          ShowMessage(e.Message);
        end;
    end;

   end;
end;

procedure TSetUsdPrice_F.FormShow(Sender: TObject);
begin
  E_Kurs.Value:=KURSUSD;
end;

end.
