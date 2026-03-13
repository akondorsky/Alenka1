unit SelDb_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids;

type
  path=record
    filename:string[100];
    description:string[100];
  end;
  TSelDb_F = class(TForm)
    SGrid: TStringGrid;
    procedure SGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    f:file of path;
    function ReadConfFile():Boolean;
  public
    { Public declarations }
  end;

var
  SelDb_F: TSelDb_F;


implementation

{$R *.dfm}
uses dmunit,main;

procedure TSelDb_F.FormShow(Sender: TObject);
begin
 if not ReadConfFile() then ModalResult :=mrCancel; ;
end;

function TSelDb_F.ReadConfFile():Boolean;
var
    dbset:path;
    r:integer;
    i:Integer;
begin
Result:=True;
{$I-}
AssignFile(f,'Base.cfg');
FileMode:=fmOpenRead;
Reset(f);
i:=IOResult;
{$I+}
if i <> 0  then
   begin
     Application.MessageBox('Файл настроек не найден.','Внимание',MB_ICONERROR+MB_OK);
     Result:=False;
     Exit;

   end;
if FileSize(f) = 0 then
   begin
     Application.MessageBox('Файл настроек пустой.','Внимание',MB_ICONERROR+MB_OK);
     CloseFile(f);
     Result:=False;
     Exit;
   end ;
SGrid.RowCount := FileSize(f)+1;
SGrid.FixedRows:= 1;
Sgrid.Cells[0,0]:='Путь к файлу базы данных ';
Sgrid.Cells[1,0]:='Описание базы данных ';
r:=1;
while not EOF(F) do begin
  Read(F, dbset);
  SGrid.Cells[0,r]:=dbset.filename;
  SGrid.Cells[1,r]:=dbset.description;
  r:=r+1;
end;
CloseFile(f);
end;

procedure TSelDb_F.SGridDblClick(Sender: TObject);
 var
  cur :TPoint;
  col,row:Integer;
begin
  cur := SGrid.ScreenToClient(Mouse.CursorPos);
  SGrid.MouseToCell(cur.x, cur.y, col, row);
  DMod.DB_name:=SGrid.Cells[0,row];
  PagesDlg.StatusBar1.Panels[0].Text:=DMod.Db_Name;
  PagesDlg.Caption:=SGrid.Cells[1,row];
  if Length(trim(Dmod.Db_Name)) <> 0 then ModalResult:=mrOK;
end;

end.
