//Four arrays
       //Names
       //BirthYear
       //Horoscop
       //HoroscopScore

program Harmonie;
uses wincrt;

type
    NamesArray = array[0..20] of string;
    YearsArray = array[0..20] of integer;
    Horoscope = array[0..12] of string;
    HoroscopScore = array[0..20] of integer;
    
var
   n:integer; //array size
   Tn:NamesArray;
   Ta:YearsArray;
   Th:Horoscope;
   Ts:HoroscopScore;
   
//Fill Horoscope
Procedure Fill_Horoscope(var Th:Horoscope);
begin
Th[1]:='Rat';
Th[2]:='Buffle';
Th[3]:='Tiger';
Th[4]:='Lapin';
Th[5]:='Dragon';
Th[6]:='Serpent';
Th[7]:='Cheval';
Th[8]:='Bélier';
Th[9]:='Singe';
Th[10]:='Coq';
Th[11]:='Chien';
Th[12]:='Sanglier';
end;
    
//Name check
Function Name_Check(stringo:String):Boolean;
var i:integer;
test:Boolean;
Begin
  i:=1;
  Repeat
    test := stringo[i] in ['a'..'z'];
    i:=i+1; 
  Until (test = False) Or (i >= Length(tn[i]));
Name_Check := test;
end;

//Take N
procedure Take_N(var n:integer);
begin
  Repeat
    Write('Array size: ');
    read(n);
  Until (n In [2..20]) And (n Mod 2 = 0);
end;

//Fill names array
Procedure Fill_Names(var tn:NamesArray; n:integer);
var
   Name:string;
   i:integer;
begin
  for i:=1 to n do
  begin
    repeat
      writeln('Give a name: ');
      readln(Name);
      writeln(Name_Check(Name));
    until(Name_Check(Name) = true);
    tn[i]:=Name;
  end;
end;

//Fill_NameNumbers
Procedure Fill_NameNumbers(var Tn:NamesArray; n:integer; var Ts:HoroscopScore);
var
   s,i,j:integer;
begin
  for i:=1 to n do
  begin
    for j:=1 to length(Tn[i]) do
    begin
      case (tn[i][j]) of
        'a','j','s': s:=s+1;
        'b','k','t':s:=s+2;
        'c','l','u':s:=s+3;
        'd','m','v':s:=s+4;
        'e','n','w':s:=s+5;
        'f','o','x':s:=s+6;
        'g','p','y':s:=s+7;
        'h','q','z':s:=s+8;
        'i','r':s:=s+9;
      end;   
    end;
  end;
  ts[i] := s;
end;

//Main program
begin
Take_N(n);
Fill_Horoscope(Th);
Fill_Names(tn,n);
Fill_NameNumbers(Tn,n,Ts);
writeln(tn[1]);
end.
