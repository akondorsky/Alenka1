unit EmplEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DB;

type
  TEmplEdit_F = class(TForm)
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
  EmplEdit_F: TEmplEdit_F;

implementation

{$R *.dfm}
uses dmunit;

procedure TEmplEdit_F.BitBtn1Click(Sender: TObject);
var
 cur_id:Integer;
begin
try
 try
    cur_id:=DMod.Qry_Employee.FieldByName('ID').AsInteger;    ;
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('update employee set firstname=:p0,lastname=:p1,middlename=:p2, ');
    DMod.Qry_Add.SQL.Add('hphone=:p3,haddress=:p4 where id=:p5 ');
    DMod.Qry_Add.Params[0].AsString:=E_FirstName.Text;
    DMod.Qry_Add.Params[1].AsString:=E_LastName.Text;
    DMod.Qry_Add.Params[2].AsString:=E_MiddleName.Text;
    DMod.Qry_Add.Params[3].AsString:=E_Phone.Text;
    DMod.Qry_Add.Params[4].AsString:=E_Street.Text;
    DMod.Qry_Add.Params[5].AsInteger:=cur_id;
    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
    DMod.Qry_Employee.Close;
    DMod.Qry_Employee.Open;
    DMod.Qry_Employee.Locate('ID',cur_id,[]);
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

procedure TEmplEdit_F.FormShow(Sender: TObject);
begin
    E_LastName.Text:=DMod.Qry_Employee.FieldByName('LASTNAME').AsString;
    E_FirstName.Text:=DMod.Qry_Employee.FieldByName('FIRSTNAME').AsString;
    E_MiddleName.TExt:=DMod.Qry_Employee.FieldByName('MIDDLENAME').AsString;;
    E_Street.Text:=DMod.Qry_Employee.FieldByName('HADDRESS').AsString;
    E_Phone.Text:=DMod.Qry_Employee.FieldByName('HPHONE').AsString;
end;

end.
