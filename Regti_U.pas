unit Regti_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Mask, DBCtrlsEh,  ExtCtrls, ComCtrls,
  ToolWin, Grids, DBGridEh,  ActnList, PropFilerEh, PropStorageEh,
  Menus,  DBGridEhGrouping, GridsEh,DB, PlatformDefaultStyleActnCtrls, ActnMan,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh,RegularExpressions,
  DBCtrls,ibx.IBQuery, System.Actions, System.ImageList, EhLibVCL;

type
  TRegti_F = class(TForm)
    DBGridEh1: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    RG1: TRadioGroup;
    ToolButton6: TToolButton;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    Rg_Sort: TRadioGroup;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Label1: TLabel;
    E_Find: TButtonedEdit;
    Splitter1: TSplitter;
    PopMn_Dog: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    PopupMenu1: TPopupMenu;
    PopMn_Zayv: TMenuItem;
    N4: TMenuItem;
    ActionManager1: TActionManager;
    MainMenu1: TMainMenu;
    Splitter2: TSplitter;
    PopupMenu2: TPopupMenu;
    AddItem: TMenuItem;
    DelItem: TMenuItem;
    PopupMenu3: TPopupMenu;
    AddMailItem: TMenuItem;
    DelMailItem: TMenuItem;
    ImageList4: TImageList;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    PopMn_Print: TPopupMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure E_FindButtonClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure All_RecExecute(Sender: TObject);
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddItemClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Find_Records(F_Str:String);
  public
    { Public declarations }
    procedure AllRecShow;
  end;



var
  Regti_F: TRegti_F;

implementation
uses main, dmunit, RegTiAdd_U, RegTiEdit_U;
{$R *.dfm}


procedure TRegti_F.Find_Records(F_Str:String);
begin
 //to do
end;



procedure TRegti_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dmod.Qry_RegTi.Close;
end;

procedure TRegti_F.FormShow(Sender: TObject);
begin
AllRecShow;
E_Find.SetFocus;

end;

procedure TRegti_F.E_FindButtonClick(Sender: TObject);
begin
Find_Records(E_Find.Text);
end;

procedure TRegti_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then Find_Records(E_Find.Text);
end;

procedure TRegti_F.E_FindRightButtonClick(Sender: TObject);
begin
//  if Rg1.ItemIndex =3 then
//   if Hold_F.ShowModal = mrOk then E_Find.Text:=DM.Qry_Hold.FieldByName('NAME').AsString;
//  Find_Records(Trim(E_Find.Text));
end;

procedure TRegti_F.AddItemClick(Sender: TObject);
begin
// to do

end;

procedure TRegti_F.AllRecShow;
var
 s:String;
 R:Integer;
begin
 //R:=DMod.Qry_RegTi.FieldByName('ID').asInteger;
 s:='select * from reg_ti order by zayv';
 DMod.Qry_Regti.Close;
 DMod.Qry_Regti.SQL.Clear;
 DMod.Qry_Regti.SQL.Add(s);
try
  DMod.Qry_Regti.Open;
  //DMod.Qry_Regti.Locate('ID',R,[]);
 except
      on E: EdatabaseError do
        begin
         //DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
end;
end;

procedure TRegti_F.All_RecExecute(Sender: TObject);
begin
  AllRecShow;
end;


procedure TRegti_F.DBGridEh1DblClick(Sender: TObject);
begin
  ToolButton2Click(Self);
end;

procedure TRegti_F.N3Click(Sender: TObject);
begin
  //to do
end;

procedure TRegti_F.ToolButton1Click(Sender: TObject);
begin
  RegTiAdd_F.ShowModal;
end;

procedure TRegti_F.ToolButton2Click(Sender: TObject);
begin
  if DMOd.Qry_RegTi.FieldByName('ID').IsNull  then Exit;
  RegTiEdit_F.ShowModal;
end;

procedure TRegti_F.ToolButton4Click(Sender: TObject);
begin
  Dmod.Refresh_RegTi;
end;

end.
