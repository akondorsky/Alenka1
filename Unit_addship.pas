unit Unit_addship;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm_AddShip = class(TForm)
    Label1: TLabel;
    E_Firm: TEdit;
    Label2: TLabel;
    E_LawName: TEdit;
    Label3: TLabel;
    E_Adr: TEdit;
    Label4: TLabel;
    E_Phone: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure E_PhoneChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_AddShip: TForm_AddShip;

implementation

uses DMUnit, Main;

{$R *.dfm}

procedure TForm_AddShip.BitBtn1Click(Sender: TObject);
var
   R:Integer;
begin
  ModalResult:=mrNone;
  if Length(Trim(E_Firm.Text)) > 0 then
  begin
   if (Application.MessageBox('Çàíåñòè äàííûå â áàçó äàííûõ ?','Ïîäòâåğæäåíèå çàíåñåíèÿ â áàçó äàííûõ',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
        DMod.Query.Close;
        DMod.Query.SQL.Clear;
        DMod.Query.SQL.Add('select gen_id(gen_id_shippers,1) from rdb$database ');
        DMod.Query.Open;
        R:=DMod.Query.Fields[0].Value;
        Dmod.Query.Close;
//       R:=PagesDlg.Grid_Ship.DataSource.DataSet.FieldByName('ID_NUM').asInteger;
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('insert into shippers');
       DMod.Qry_Add.Sql.Add('(name, law_name, address, phone,id_num)');
       DMod.Qry_Add.Sql.Add(' values (:p0,  :p1, :p2, :p3,:p4)');
       DMod.Qry_Add.Params[0].Value:=E_Firm.Text;
       DMod.Qry_Add.Params[1].Value:=E_LawName.Text;
       DMod.Qry_Add.Params[2].Value:=E_Adr.Text;
       DMod.Qry_Add.Params[3].Value:=E_Phone.Text;
       DMod.Qry_Add.Params[4].Value:=R;
       DMod.Qry_Add.ExecQuery;
       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
       ModalResult:=mrOk;
    except
       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
       Application.MessageBox('Îøèáêà áàçû äàííûõ. Âîçìîæíî íåïğàâèëüíî ñôîğìèğîâàí çàïğîñ',
                                  'Âíèìàíèå',mb_iconstop+mb_ok);
    end;
   end;
  end;
 if ModalResult = mrOk then
    begin
       DMod.Qry_Shippers.Close;
       DMod.Qry_Shippers.Open;
       Dmod.Qry_Shippers.Locate('ID_NUM',R,[]) ;
    end;
end;

procedure TForm_AddShip.E_PhoneChange(Sender: TObject);
var
i : integer;
c : char;
s : string;
begin
// ğåçóëüòèğóşùàÿ ñòğîêà:
s := '';
// ïğîõîäèì ïî âñåì ñèìâîëàì èñõîäíîé ñòğîêè:
for i:=1 to Length((Sender as Tedit).Text) do
  begin
    // áåğåì òåêóùèé ñèìâîë:
    c :=(Sender as Tedit).Text[i];
    // Ïğîâåğÿåì åãî íà ïğèíàäëåæíîñòü ê öèôğàì:
    if (c >= '0') and (c <= '9') then s := s + c;
    // Èëè çíàêàì '+'  ïğîáåë è ñêîáêè :
    if ((c = #32) or (c = #40) or (c = #41) or (c = #43) or (c=#45)) then s := s + c;
  end;
// Ïğèñâàåâàåì ïîëş ğåçóëüòèğóşùóş ñòğîêó:
(Sender as Tedit).Text := s;
(Sender as Tedit).SelStart:=Length(s);
(Sender as Tedit).SelLength:=0;
end;

procedure TForm_AddShip.FormShow(Sender: TObject);
begin
    E_Firm.Clear;
    E_LawName.Clear;
    E_Adr.Clear;
    E_Phone.Clear;
    E_Firm.SetFocus;
end;

end.
