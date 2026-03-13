unit ClientEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,Db;

type
  TClientEdit_F = class(TForm)
    Rg1: TRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    E_LastName: TEdit;
    E_FirstName: TEdit;
    E_MiddleName: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    E_OrgName: TEdit;
    E_INN: TEdit;
    E_KPP: TEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    E_Street: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    Label11: TLabel;
    E_Phone: TEdit;
    E_Note: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Rg1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetValues;
  public
    { Public declarations }
  end;

var
  ClientEdit_F: TClientEdit_F;

implementation

{$R *.dfm}
uses dmunit;

procedure TClientEdit_F.BitBtn1Click(Sender: TObject);
var
 cur_id:Integer;
begin
try
 try
    // редактируем клиента
    cur_id:=DMod.Qry_Client.FieldByName('ID').AsInteger;
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    case Rg1.ItemIndex of
    0:begin
        DMod.Qry_Add.SQL.Add('update client set clienttype=:p0,firstname=:p1,lastname=:p2,middlename=:p3, ');
        DMod.Qry_Add.SQL.Add('phonemobile=:p4,fulladdress=:p5,notes=:p6 where id=:p7 ');
        DMod.Qry_Add.Params[0].AsString:='P';
        DMod.Qry_Add.Params[1].AsString:=E_FirstName.Text;
        DMod.Qry_Add.Params[2].AsString:=E_LastName.Text;
        DMod.Qry_Add.Params[3].AsString:=E_MiddleName.Text;
        DMod.Qry_Add.Params[4].AsString:=E_Phone.Text;
        DMod.Qry_Add.Params[5].AsString:=E_Street.Text;
        DMod.Qry_Add.Params[6].asString:=E_Note.Text;
        DMod.Qry_Add.Params[7].AsInteger:=cur_id;
    end;
    1:begin
        DMod.Qry_Add.SQL.Add('update client set clienttype=:p0,organization=:p1,inn=:p2,kpp=:p3, ');
        DMod.Qry_Add.SQL.Add('phonemobile=:p4,fulladdress=:p5,notes=:p6 where id=:p7 ');
        DMod.Qry_Add.Params[0].AsString:='L';
        DMod.Qry_Add.Params[1].AsString:=E_OrgName.Text;
        DMod.Qry_Add.Params[2].AsString:=E_INN.Text;
        DMod.Qry_Add.Params[3].AsString:=E_KPP.Text;
        DMod.Qry_Add.Params[4].AsString:=E_Phone.Text;
        DMod.Qry_Add.Params[5].AsString:=E_Street.Text;
        DMod.Qry_Add.Params[6].asString:=E_Note.Text;
        DMod.Qry_Add.Params[7].AsInteger:=cur_id;
    end;
    end;

    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
    DMod.Qry_Client.Close;
    DMod.Qry_Client.Open;
    DMod.Qry_Client.Locate('ID',cur_id,[]);
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

procedure TClientEdit_F.GetValues;
begin
    E_LastName.Text:=Dmod.Qry_Client.FieldByName('LASTNAME').AsString;
    E_FirstName.Text:=Dmod.Qry_Client.FieldByName('FIRSTNAME').AsString;
    E_MiddleName.Text:=Dmod.Qry_Client.FieldByName('MIDDLENAME').AsString;
    E_OrgName.Text:=Dmod.Qry_Client.FieldByName('ORGANIZATION').AsString;
    E_INN.Text:=Dmod.Qry_Client.FieldByName('INN').AsString;
    E_KPP.Text:=Dmod.Qry_Client.FieldByName('KPP').AsString;
    E_Street.Text:=Dmod.Qry_Client.FieldByName('FULLADDRESS').AsString;
    E_Note.Text:=Dmod.Qry_Client.FieldByName('NOTES').AsString;
    E_Phone.Text:=Dmod.Qry_Client.FieldByName('PHONEMOBILE').AsString;
   if DMod.Qry_Client.FieldByName('CLIENTTYPE').AsString = 'P' then
      rg1.ItemIndex:=0
     else
      rg1.ItemIndex:=1;
{      begin
        GroupBox1.Enabled:=True;
        GroupBox2.Enabled:=False;
      end
     else
      begin
        GroupBox2.Enabled:=True;
        GroupBox1.Enabled:=False;
      end;}
end;

procedure TClientEdit_F.FormShow(Sender: TObject);
begin
 GetValues;
end;

procedure TClientEdit_F.Rg1Click(Sender: TObject);
begin
 case rg1.ItemIndex of
 0:begin
    GroupBox1.Enabled:=True;
    GroupBox2.Enabled:=False;
   end;
 1:begin
    GroupBox2.Enabled:=True;
    GroupBox1.Enabled:=False;
   end;
 end;
end;

end.
