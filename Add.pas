unit Add;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons,DB, ImgList, ExtCtrls, DBCtrlsEh,Variants,
  System.ImageList;

type
  TAddForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Memo1: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    E_Ship: TButtonedEdit;
    E_TovGr: TButtonedEdit;
    Il_SpravBtn: TImageList;
    Label9: TLabel;
    E_OptPriceUsd: TDBNumberEditEh;
    Label10: TLabel;
    Label11: TLabel;
    E_PriceUsd: TDBNumberEditEh;
    E_BarCode: TButtonedEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure E_ShipRightButtonClick(Sender: TObject);
    procedure E_TovGrRightButtonClick(Sender: TObject);
    procedure E_BarCodeRightButtonClick(Sender: TObject);
    procedure E_BarCodeExit(Sender: TObject);
  private
    { Private declarations }
    Ship_Id:Integer;
    TovGr_Id:Integer;
  public
    { Public declarations }
  end;

var
  AddForm: TAddForm;

implementation
Uses DMUnit,main,unit_sprav_ship,unit_sprav_tovgr;
{$R *.DFM}

procedure TAddForm.BitBtn2Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;


procedure TAddForm.FormCreate(Sender: TObject);
begin
 Edit3.Hint:='Только цифры и разделитель - '+FormatSettings.DecimalSeparator;
 Edit4.Hint:='Только цифры и разделитель - '+FormatSettings.DecimalSeparator;
 Edit5.Hint:='Только цифры и разделитель - '+FormatSettings.DecimalSeparator;
end;

procedure TAddForm.FormShow(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  E_BarCode.Clear;
  Memo1.Lines.Clear;
  Ship_Id:=0;
  TovGr_Id:=0;
  E_PriceUsd.Clear;
  E_OptPriceUsd.Clear;
  Edit1.SetFocus;
  if DMod.Sprav_Ship.Active then DMod.Sprav_Ship.Close;
  DMod.Sprav_Ship.Open;
//  if DMod.Sprav_TovGr.Active then DMod.Sprav_TovGr.Close;
//  DMod.Sprav_TovGr.Open;
end;

procedure TAddForm.DBEdit1Exit(Sender: TObject);
begin
//DMod.TKatalogName.Value:=Trim(DMod.TKatalogName.Value);
end;

procedure TAddForm.Edit3Change(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// результирующая строка:
s := '';
// проходим по всем символам исходной строки:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // берем текущий символ:
    c :=(Sender as Tedit).Text[i];
    // Проверяем его на принадлежность к цифрам:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Или знакам 'точка' или 'запятая':
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TAddForm.Edit4Change(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// результирующая строка:
s := '';
// проходим по всем символам исходной строки:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // берем текущий символ:
    c :=(Sender as Tedit).Text[i];
    // Проверяем его на принадлежность к цифрам:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Или знакам 'точка' или 'запятая':
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TAddForm.Edit5Change(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// результирующая строка:
s := '';
// проходим по всем символам исходной строки:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // берем текущий символ:
    c :=(Sender as Tedit).Text[i];
    // Проверяем его на принадлежность к цифрам:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Или знакам 'точка' или 'запятая':
    if c = FormatSettings.DecimalSeparator then s := s + c;
  end;
// Присваеваем полю результирующую строку:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TAddForm.E_BarCodeExit(Sender: TObject);
begin
  if Length(trim(E_BarCode.Text)) = 0 then Exit;
  if Length(trim(E_BarCode.Text)) <> 13 then
    begin
      E_BarCode.Clear;
      E_BarCode.Text:=PagesDlg.GenBarCodeEan13;
    end;
end;

procedure TAddForm.E_BarCodeRightButtonClick(Sender: TObject);
begin
  if (Length(Trim(E_BarCode.Text)) > 0) then
      begin
        if Application.MessageBox('Поле Штрихкод уже содержит значение.Изменить штрихкод?','Внимание',MB_ICONQUESTION+MB_YESNO) <> IDYES then Exit;
      end;
  E_BarCode.Text:=PagesDlg.GenBarCodeEan13;
end;

procedure TAddForm.E_ShipRightButtonClick(Sender: TObject);
begin
  if Form_Ship.ShowModal = mrOk then
    begin
      E_Ship.Text:=Form_Ship.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
      Ship_Id:=Form_Ship.DBGridEh1.DataSource.DataSet.FieldByName('ID_NUM').AsInteger;
    end;
end;

procedure TAddForm.E_TovGrRightButtonClick(Sender: TObject);
begin
  if Form_TovGr.ShowModal = mrOk then
    begin
      E_TovGr.Text:=Form_TovGr.DBGridEh1.DataSource.DataSet.FieldByName('NAME').AsString;
      TovGr_Id:=Form_TovGr.DBGridEh1.DataSource.DataSet.FieldByName('ID_NUM').AsInteger;
    end;
end;

{
 if dmod.TKatalogName.Value <> '' then
    DMod.TKatalog.Post
   else
 begin
  Application.MessageBox('Данные не добавлены, так товар не назван','Добавление',MB_ICONINFORMATION+MB_OK);
  DMod.TKatalog.Cancel;
  with DMod.tkatalog do
   begin
    try
      GotoBookMark(R);
    except
      on EDataBaseError do Last;
    end;
     FreeBookMark(R);
   end;
  end;
AddForm.Close;
}
procedure TAddForm.BitBtn1Click(Sender: TObject);
var
   pms:  TMemoryStream;
   R:Integer;
   s:String;
begin
 try
  ModalResult:=mrNone;
  DMod.Query.Close;
  DMod.Query.SQL.Clear;
  DMod.Query.SQL.Add('select gen_id(gen_id_katalog,1) from rdb$database ');
  DMod.Query.Open;
  R:=DMod.Query.Fields[0].Value;
  Dmod.Query.Close;
  if Length(Trim(edit1.Text)) > 0 then
  begin
   if (Application.MessageBox('Занести данные в базу данных ?','Подтверждение занесения в базу данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       pms:=TMemoryStream.Create;
       Memo1.Lines.SaveToStream(pms);
       s:=s+ 'insert into katalog ';
       s:=s+ '(name, marka, price, optprice, kol, prim,nn,ship_gr,optprice_usd,price_usd,barcode) ';
       s:=s+' values (:P_name,  :p_marka, :p_price, :p_opt, :p_kol, :p_note, :p_nn,:p_sh,:p_usd1,:p_usd2, :p_bar ) ';
       DMod.Qry_Add.Sql.Add(s);
       DMod.Qry_Add.Params[0].Value:=Edit1.Text;
       DMod.Qry_Add.Params[1].Value:=Edit2.Text;
       if Length(Trim(Edit3.Text)) <> 0 then
                 DMod.Qry_Add.Params[2].Value:=StrToFloat(Trim(Edit3.Text))
           else
                 DMod.Qry_Add.Params[2].Value:=0;
       if Length(Trim(Edit4.Text)) <> 0 then
                 DMod.Qry_Add.Params[3].Value:=StrToFloat(Trim(Edit4.Text))
           else
                 DMod.Qry_Add.Params[3].Value:=0;
       if Length(Trim(Edit5.Text)) <> 0 then
                 DMod.Qry_Add.Params[4].Value:=StrToFloat(Trim(Edit5.Text))
           else
                 DMod.Qry_Add.Params[4].Value:=0;
      DMod.Qry_Add.Params[5].LoadFromStream(pms);
      DMod.Qry_Add.Params[6].Value:=R;
      DMod.Qry_Add.Params[7].AsInteger:=Ship_Id;
      Dmod.Qry_Add.Params[8].Value:=E_OptPriceUsd.Value;
      Dmod.Qry_Add.Params[9].Value:=E_PriceUsd.Value;
      if (Length(Trim(E_Barcode.Text))) > 0 then
        Dmod.Qry_Add.Params[10].AsString:=E_BarCode.Text
       else
        Dmod.Qry_Add.Params[10].Value:= Null;
      DMod.Qry_Add.ExecQuery;
      if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
      DMod.QKatalog.Close;
      DMod.QKatalog.Open;
      Dmod.QKatalog.Locate('NN',R,[]);
      ModalResult:=mrOk;
    except
      on E: EdatabaseError do
        begin
          if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
          ShowMessage(E.Message);
          //Application.MessageBox('Ошибка базы данных. Возможно неправильно сформирован запрос',
          //                        'Внимание',mb_iconstop+mb_ok);
        end;
    end;
   end;
  end;
 finally
   pms.Free;
 end;
end;





end.
