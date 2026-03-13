unit Settings_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,Db;

type
  TSettings_F = class(TForm)
    RgLabelSize: TRadioGroup;
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
  Settings_F: TSettings_F;

implementation

{$R *.dfm}
uses dmunit;



procedure TSettings_F.BitBtn1Click(Sender: TObject);
begin
  try
    if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Sql.Clear;
    DMod.Qry_Add.Sql.Add('update settings set label_size = :p0 ');
    DMod.Qry_Add.Params[0].asinteger:=RgLabelSize.ItemIndex;
    DMod.Qry_Add.ExecQuery;
    Dmod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
  finally
    if  Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
  end;
end;

procedure TSettings_F.FormShow(Sender: TObject);
begin
  DMod.Refresh_Settings;
  case DMod.Qry_Settings.FieldByName('LABEL_SIZE').AsInteger of
    0: RgLabelSize.ItemIndex:= 0;
    1: RgLabelSize.ItemIndex:= 1;
    2: RgLabelSize.ItemIndex:= 2;
    3: RgLabelSize.ItemIndex:= 3;
    4: RgLabelSize.ItemIndex:= 4;
    5: RgLabelSize.ItemIndex:= 5;
  end;

end;

end.
