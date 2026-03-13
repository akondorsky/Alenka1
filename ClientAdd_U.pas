unit ClientAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,Db;

type
  TClientAdd_F = class(TForm)
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
    procedure ClearControls;
  public
    { Public declarations }
  end;

var
  ClientAdd_F: TClientAdd_F;

implementation

{$R *.dfm}
uses dmunit;

procedure TClientAdd_F.BitBtn1Click(Sender: TObject);
var
 new_id:Integer;
begin
try
 try
    // добавляем клиента
    DMod.Query.Close;
    DMod.Query.SQL.Clear;
    DMod.Query.SQL.Add('select gen_id(client_id,1) from rdb$database');
    DMod.Query.Open;
    new_id:=DMod.Query.Fields[0].AsInteger;
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    case Rg1.ItemIndex of
    0:begin
        DMod.Qry_Add.SQL.Add('insert into client (clienttype,firstname,lastname,middlename, ');
        DMod.Qry_Add.SQL.Add('phonemobile,fulladdress,notes,id) ');
        DMod.Qry_Add.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7 ) ');
        DMod.Qry_Add.Params[0].AsString:='P';
        DMod.Qry_Add.Params[1].AsString:=E_FirstName.Text;
        DMod.Qry_Add.Params[2].AsString:=E_LastName.Text;
        DMod.Qry_Add.Params[3].AsString:=E_MiddleName.Text;
        DMod.Qry_Add.Params[4].AsString:=E_Phone.Text;
        DMod.Qry_Add.Params[5].AsString:=E_Street.Text;
        DMod.Qry_Add.Params[6].asString:=E_Note.Text;
        DMod.Qry_Add.Params[7].AsInteger:=new_id;
    end;
    1:begin
        DMod.Qry_Add.SQL.Add('insert into client (clienttype,organization,inn,kpp, ');
        DMod.Qry_Add.SQL.Add('phonemobile,fulladdress,notes,id) ');
        DMod.Qry_Add.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7 ) ');
        DMod.Qry_Add.Params[0].AsString:='L';
        DMod.Qry_Add.Params[1].AsString:=E_OrgName.Text;
        DMod.Qry_Add.Params[2].AsString:=E_INN.Text;
        DMod.Qry_Add.Params[3].AsString:=E_KPP.Text;
        DMod.Qry_Add.Params[4].AsString:=E_Phone.Text;
        DMod.Qry_Add.Params[5].AsString:=E_Street.Text;
        DMod.Qry_Add.Params[6].asString:=E_Note.Text;
        DMod.Qry_Add.Params[7].AsInteger:=new_id;
    end;
    end;

    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
    DMod.Qry_Client.Close;
    DMod.Qry_Client.Open;
    DMod.Qry_Client.Locate('ID',new_id,[]);
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

procedure TClientAdd_F.ClearControls;
begin
    E_LastName.Clear;
    E_FirstName.Clear;
    E_MiddleName.Clear;
    E_OrgName.Clear;
    E_INN.Clear;
    E_KPP.Clear;
    E_Street.Clear;
    E_Note.Clear;
    E_Phone.Clear;
end;

procedure TClientAdd_F.FormShow(Sender: TObject);
begin
ClearControls;
if Dmod.Qry_Client.FieldByName('CLIENTTYPE').AsString = 'P' then
     Rg1.ItemIndex:=0
    else
     Rg1.ItemIndex:=1;

end;

procedure TClientAdd_F.Rg1Click(Sender: TObject);
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
