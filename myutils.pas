unit myutils;

interface
uses Graphics, SysUtils, inifiles,Variants,strUtils,Windows;

function DateCorrect(D: string): Boolean;
function GetValFloatToStr(F:Variant):String;
function GetValIntToStr(I:Variant):String;
function GetValStrToStr(S:Variant):String;
function SetValStrToFloat(S:String):Double;
function SetValStrToInt(S:String):Integer;
function SetValStrToDate(S:String):Variant;
function GetValDateToStr(D:Variant):String;
function DarkerColor(const Color: TColor; Percent: Integer): TColor;
function LighterColor(const Color: TColor; Percent: Integer): TColor;
function MixColors(const Colors: array of TColor): TColor;
function GrayColor(Color: TColor): TColor;
function DelNotLetter(Source:String):String;
function CountSubstrExt(sub,text: String): Integer;
function DateToIso(Adate:TDateTime):String;
function XMLCorrect(Source:String):String;
function ReverseString(const s: string): string; 

implementation

function ReverseString(const s: string): string; 
var 
  i, len: Integer; 
begin 
  len := Length(s); 
  SetLength(Result, len); 
  for i := len downto 1 do 
  begin 
    Result[len - i + 1] := s[i]; 
  end; 
end;

function  XMLCorrect(Source:String):String;
var
 d,Dest:String;
 i:Integer;
begin
 for i:=1 to Length(Source) do
  begin
    case Source[i] of
      #38: d:='&amp;';
      #60: d:='&lt;';
      #62: d:='&gt;';
     else
      d:=Source[i];
    end;
   Dest:=Dest+d;
  end;
Result:=Dest;
end;

function DelNotLetter(Source:String):String;
var
 Dest:String;
 i:integer;
begin
  Result:='';
  for i := 1 to Length(Source) do
   begin
    if Source[i] in ['A'..'Z', 'a'..'z', 'А'..'Я', 'а'..'я','0'..'9'] then
     Dest := Dest + Source[i];
  end;
  Result:=Dest;
end;

function DateCorrect(D: string): Boolean;
var
   ddd:tdatetime;
begin
 result:=false;
   try
    ddd:=strtodate(d);
    result:=true;
   except
   end;
 
end;

function GetValFloatToStr(F:Variant):String;
begin
 if (F = Null) or (F = 0) then
    Result:='0'
 else
    Result:=FloatToStr(F);
end;

function GetValIntToStr(I:Variant):String;
begin
 if (I = Null) or (I = 0) then
    Result:='0'
 else
    Result:=IntToStr(I);
end;

function GetValStrToStr(S:Variant):String;
begin
 if (S = Null)  then
    Result:=''
 else
    Result:=S;
end;

function SetValStrToFloat(S:String):Double;
begin
 if Length(Trim(S)) =0 then
    Result:=0
   else
    Result:=StrToFloat(S);

end;

function SetValStrToInt(S:String):Integer;
begin
 if Length(Trim(S)) =0 then
    Result:=0
   else
    Result:=StrToInt(S);

end;

function SetValStrToDate(S:String):Variant;
begin
 if  DateCorrect(S) then
    Result:=StrToDate(S)
   else
    Result:=null;
end;
function GetValDateToStr(D:Variant):String;
begin
 if (D = Null) or (D = 0) then
    Result:='  .  .    '
 else
    Result:=DateToStr(D);
end;

function DarkerColor(const Color: TColor; Percent: Integer): TColor;
var
  R, G, B: Byte;
begin
  Result := Color;
  if Percent <= 0 then
    Exit;
  if Percent > 100 then
    Percent := 100;
  Result := ColorToRGB(Color);
  R := GetRValue(Result);
  G := GetGValue(Result);
  B := GetBValue(Result);
  R := R - R * Percent div 100;
  G := G - G * Percent div 100;
  B := B - B * Percent div 100;
  Result := RGB(R, G, B);
end;

function LighterColor(const Color: TColor; Percent: Integer): TColor;
var
  R, G, B: Byte;
begin
  Result := Color;
  if Percent <= 0 then
    Exit;
  if Percent > 100 then
    Percent := 100;
  Result := ColorToRGB(Result);
  R := GetRValue(Result);
  G := GetGValue(Result);
  B := GetBValue(Result);
  R := R + (255 - R) * Percent div 100;
  G := G + (255 - G) * Percent div 100;
  B := B + (255 - B) * Percent div 100;
  Result := RGB(R, G, B);
end;

function MixColors(const Colors: array of TColor): TColor;
var
  R, G, B: Integer;
  i: Integer;
  L: Integer;
begin
  R := 0;
  G := 0;
  B := 0;
  for i := Low(Colors) to High(Colors) do
  begin
    Result := ColorToRGB(Colors[i]);
    R := R + GetRValue(Result);
    G := G + GetGValue(Result);
    B := B + GetBValue(Result);
  end;
  L := Length(Colors);
  Result := RGB(R div L, G div L, B div L);
end;

function GrayColor(Color: TColor): TColor;
var
  Gray: Byte;
begin
  Result := ColorToRGB(Color);
  Gray := (GetRValue(Result) + GetGValue(Result) + GetBValue(Result)) div 3;
  Result := RGB(Gray, Gray, Gray);
end;

{Пример использования:
var
  i, j: Integer;
begin
  ...
  with Bitmap1 do
    for i := 0 to Width - 1 do
      for j := 0 to Height - 1 do
        Canvas.Pixels[i, j] := GrayColor(Canvas.Pixels[i, j]);
  ...
end;}

function CountSubstrExt(sub,text: String): Integer;
var
 nPos:Integer;
begin
  Result:=0;
  nPos:=PosEx(sub,text,1);
  while nPos > 0 do
   begin
     Inc(Result);
     nPos:=PosEx(sub,text,nPos+Length(sub));
   end;
end;

function DateToIso(Adate:TDateTime):String;
var
  Year,Month,Day:Word;
  m,d:string;
begin
 Result:='';
 DecodeDate(Adate,Year,Month,Day);
 if Month < 10 then m:='0'+IntToStr(Month) else m:=IntToStr(Month);
 if Day < 10 then d:='0'+IntToStr(Day) else d:=IntToStr(Day);
 Result:=IntTostr(Year)+'-'+m+'-'+d; // получили дату в формате YYYY-MM-DD
end;

end.
