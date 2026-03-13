unit PartZakEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,Db, Mask, DBCtrlsEh;

type
  TPartZakEdit_F = class(TForm)
    E_Name: TLabeledEdit;
    E_Edizm: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    E_Price: TDBNumberEditEh;
    Label1: TLabel;
    E_Code: TLabeledEdit;
    Label2: TLabel;
    E_Kol: TDBNumberEditEh;
    procedure FormShow(Sender: TObject);
    procedure E_KolKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure E_CodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PartZakEdit_F: TPartZakEdit_F;

implementation

{$R *.dfm}
 uses dmunit;

procedure TPartZakEdit_F.BitBtn1Click(Sender: TObject);
var
 cur_id:Integer;
begin
try
 try
    cur_id:=Dmod.Qry_ClientParts.FieldByName('ID').AsInteger;
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    //добавим запчасти
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('update client_parts set nameparts=:p0,edizm=:p1,kol=:p2,id_order=:p3,price=:p4,code_part=:p5 where id=:p6 ' );
    DMod.Qry_Add.Params[0].AsString:=E_Name.Text;
    DMod.Qry_Add.Params[1].AsString:=E_Edizm.Text;
{    if Length(Trim(E_Kol.Text)) =0 then
        DMod.Qry_Add.Params[2].AsDouble:=0
       else
        DMod.Qry_Add.Params[2].AsDouble:=StrToFloat(E_kol.Text);}
    DMod.Qry_Add.Params[2].AsCurrency:=E_Kol.Value;
    DMod.Qry_Add.Params[3].AsString:=DMod.Qry_Order.FieldByName('CLIENT_PARTS_KEY').AsString;
    DMod.Qry_Add.Params[4].AsCurrency:=E_Price.Value;
    DMod.Qry_Add.Params[5].AsString:=Trim(E_Code.Text);
    DMod.Qry_Add.Params[6].AsInteger:=cur_id;
    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
    DMod.Qry_ClientParts.Close;
    DMod.Qry_ClientParts.Open;
    Dmod.Qry_ClientParts.Locate('ID',cur_id,[]);
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
  if DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.Rollback;
end;
end;

procedure TPartZakEdit_F.E_CodeKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z']) then Key:=#0;
end;

procedure TPartZakEdit_F.E_KolKeyPress(Sender: TObject; var Key: Char);
var
 ch:char;
begin
{ ch:=FormatSettings.DecimalSeparator;
 if  not (Key  in ['0'..'9',ch])  then Key:=#0;}

end;

procedure TPartZakEdit_F.FormShow(Sender: TObject);
begin
  E_Name.Text:= DMod.Qry_ClientParts.FieldByName('NAMEPARTS').AsString;
  E_Code.Text:= DMod.Qry_ClientParts.FieldByName('CODE_PART').AsString;
  E_Edizm.Text:=DMod.Qry_ClientParts.FieldByName('EDIZM').AsString;
  E_Kol.Value:=DMod.Qry_ClientParts.FieldByName('KOL').AsCurrency;
  E_Price.Value:=DMod.Qry_ClientParts.FieldByName('PRICE').AsCurrency;
  E_Name.SetFocus;
end;

end.
