unit RepUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs  ;

type
  TReportFm = class(TForm)
    procedure zakazRptGetValue(const ParName: String;
      var ParValue: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportFm: TReportFm;

implementation
uses DMUnit,main,sumprops;
{$R *.DFM}

procedure TReportFm.zakazRptGetValue(const ParName: String;
  var ParValue: Variant);
var
 s:string;
begin
{ s:=MoneyToString(DMod.QuerySUMZAYAV.Value,true,false);
 if ParName = 'sprop' then ParValue:=s;}
end;

end.



