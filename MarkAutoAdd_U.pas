unit MarkAutoAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DB;

type
  TMarkAutoAdd_F = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    E_Name: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MarkAutoAdd_F: TMarkAutoAdd_F;

implementation

{$R *.dfm}
uses dmunit;

procedure TMarkAutoAdd_F.BitBtn1Click(Sender: TObject);
var
 new_id:Integer;
begin
try
 try
    if Length(Trim(E_name.Text)) = 0 then
       begin
         Application.MessageBox('Поле не может быть пустым','Внимание',MB_ICONWARNING+MB_OK);
         Exit;
       end;
    // добавляем марку
    DMod.Query.Close;
    DMod.Query.SQL.Clear;
    DMod.Query.SQL.Add('select gen_id(MARKAUTO_ID,1) from rdb$database');
    DMod.Query.Open;
    new_id:=DMod.Query.Fields[0].AsInteger;
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('insert into markauto (id,name) ');
    DMod.Qry_Add.SQL.Add(' values ( :p0,:p1 ) ');
    DMod.Qry_Add.Params[0].AsInteger:=new_id;
    DMod.Qry_Add.Params[1].AsString:=E_Name.Text;
    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
    DMod.Qry_MarkAuto.Close;
    DMod.Qry_MarkAuto.Open;
    DMod.Qry_MarkAuto.Locate('ID',new_id,[]);
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

procedure TMarkAutoAdd_F.FormShow(Sender: TObject);
begin
    E_Name.Clear;
end;

end.
