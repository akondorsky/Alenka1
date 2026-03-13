unit EmplAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DB;

type
  TEmplAdd_F = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    E_LastName: TEdit;
    E_FirstName: TEdit;
    E_MiddleName: TEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    E_Street: TEdit;
    E_Phone: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmplAdd_F: TEmplAdd_F;

implementation

{$R *.dfm}
uses dmunit;

procedure TEmplAdd_F.BitBtn1Click(Sender: TObject);
var
 new_id:Integer;
begin
try
 try
    // добавляем клиента
    DMod.Query.Close;
    DMod.Query.SQL.Clear;
    DMod.Query.SQL.Add('select gen_id(employee_id,1) from rdb$database');
    DMod.Query.Open;
    new_id:=DMod.Query.Fields[0].AsInteger;
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('insert into employee (firstname,lastname,middlename, ');
    DMod.Qry_Add.SQL.Add('hphone,haddress,id) ');
    DMod.Qry_Add.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4,:p5 ) ');
    DMod.Qry_Add.Params[0].AsString:=E_FirstName.Text;
    DMod.Qry_Add.Params[1].AsString:=E_LastName.Text;
    DMod.Qry_Add.Params[2].AsString:=E_MiddleName.Text;
    DMod.Qry_Add.Params[3].AsString:=E_Phone.Text;
    DMod.Qry_Add.Params[4].AsString:=E_Street.Text;
    DMod.Qry_Add.Params[5].AsInteger:=new_id;
    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
    DMod.Qry_Employee.Close;
    DMod.Qry_Employee.Open;
    DMod.Qry_Employee.Locate('ID',new_id,[]);
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

procedure TEmplAdd_F.FormShow(Sender: TObject);
begin
    E_LastName.Clear;
    E_FirstName.Clear;
    E_MiddleName.Clear;
    E_Street.Clear;
    E_Phone.Clear;
end;

end.
