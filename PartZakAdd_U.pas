unit PartZakAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,Db, Mask, DBCtrlsEh;

type
  TPartZakAdd_F = class(TForm)
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
  PartZakAdd_F: TPartZakAdd_F;

implementation

{$R *.dfm}
 uses dmunit;

procedure TPartZakAdd_F.BitBtn1Click(Sender: TObject);
begin
try
 try
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    //добавим запчасти
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('insert into client_parts (nameparts,edizm,kol,id_order,price,code_part )');
    DMod.Qry_Add.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4,:p5 ) ');
    DMod.Qry_Add.Params[0].AsString:=E_Name.Text;
    DMod.Qry_Add.Params[1].AsString:=E_Edizm.Text;
    if Length(Trim(E_Kol.Text)) = 0 then
       DMod.Qry_Add.Params[2].AsVariant:=null
      else
       DMod.Qry_Add.Params[2].AsCurrency:=E_Kol.Value;
    DMod.Qry_Add.Params[3].AsString:=DMod.Qry_Order.FieldByName('CLIENT_PARTS_KEY').AsString;
    if Length(Trim(E_Price.Text)) = 0 then
       DMod.Qry_Add.Params[4].AsVariant:=null
      else
       DMod.Qry_Add.Params[4].AsCurrency:=E_Price.Value;
    DMod.Qry_Add.Params[5].AsString:=Trim(E_Code.Text);
    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
    DMod.Qry_ClientParts.Close;
    DMod.Qry_ClientParts.Open;
    DMod.Qry_ClientParts.Last;
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

procedure TPartZakAdd_F.E_CodeKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z']) then Key:=#0;
end;

procedure TPartZakAdd_F.E_KolKeyPress(Sender: TObject; var Key: Char);
var
 ch:char;
begin
{ ch:=FormatSettings.DecimalSeparator;
 if  not (Key  in ['0'..'9',ch])  then Key:=#0;}

end;

procedure TPartZakAdd_F.FormShow(Sender: TObject);
begin
  E_Name.Clear;
  E_Code.Clear;
  E_Edizm.Clear;
  E_Kol.Clear;
  E_Name.SetFocus;
  E_Price.Clear;
end;

end.
