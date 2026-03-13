unit Works_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, ToolWin, ComCtrls, ExtCtrls,
  PropFilerEh, PropStorageEh, PlatformDefaultStyleActnCtrls, ActnList, ActnMan;

type
  TWorks_F = class(TForm)
    ToolBar1: TToolBar;
    Panel1: TPanel;
    Grid_Group: TDBGridEh;
    Splitter1: TSplitter;
    Grid_Works: TDBGridEh;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ActionManager1: TActionManager;
    A_WorkAdd: TAction;
    A_WorkEdit: TAction;
    procedure A_WorkAddExecute(Sender: TObject);
    procedure A_WorkEditExecute(Sender: TObject);
    procedure Grid_WorksDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Works_F: TWorks_F;

implementation

{$R *.dfm}
uses dmunit,main;

procedure TWorks_F.A_WorkAddExecute(Sender: TObject);
begin
//
end;

procedure TWorks_F.A_WorkEditExecute(Sender: TObject);
begin
//
end;

procedure TWorks_F.Grid_WorksDblClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

end.
