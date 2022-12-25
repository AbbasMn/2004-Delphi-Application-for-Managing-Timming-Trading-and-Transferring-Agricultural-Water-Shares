unit Taghvim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Calendar, Spin, Mask, ComCtrls, ExtCtrls, Buttons;

type
  T_taghvim = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    UpDown1: TUpDown;
    MaskEdit1: TMaskEdit;
    ComboBox1: TComboBox;
    StringGrid1: TStringGrid;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Button2: TButton;
    Button11: TButton;
    Button1: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure showongrid;
    procedure Getsystemsdate;
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure dateChange;
    procedure Button3Click(Sender: TObject);
    procedure savedate;
    procedure changemilad;
    procedure ComboBox1Exit(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
                                Shift: TShiftState);
    function is_kabis(sal:integer):Boolean;
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function  is_date(s:string) : Boolean;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
     _str_date,roz_hafte:string;    { Public declarations }

  end;

var
  _taghvim: T_taghvim;
  roz,beginroz,flag,m,n:integer;
  dat:  array [1..3]  of integer;
  dat2: array [1..3]  of   integer;
  kabis:array [1..30]  of integer;
  date:TSYSTEMTIME;
  milad:array [1..12] of integer;
  shams:array [1..12] of integer;

implementation

uses  unt_main;
{$R *.DFM}
///////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.FormActivate(Sender: TObject);
begin
_str_date:='';
milad[1]:=31;
milad[2]:=28;
milad[3]:=31;
milad[4]:=30;
milad[5]:=31;
milad[6]:=30;
milad[7]:=31;
milad[8]:=31;
milad[9]:=30;
milad[10]:=31;
milad[11]:=30;
milad[12]:=31;
shams[1]:=31;
shams[2]:=31;
shams[3]:=31;
shams[4]:=31;
shams[5]:=31;
shams[6]:=31;
shams[7]:=30;
shams[8]:=30;
shams[9]:=30;
shams[10]:=30;
shams[11]:=30;
shams[12]:=29;
 kabis[1]:=1358;
 kabis[2]:=1362;
 kabis[3]:=1366;
 kabis[4]:=1370;
 kabis[5]:=1375;
 kabis[6]:=1379;
 kabis[7]:=1383;
 kabis[8]:=1387;
 kabis[9]:=1391;
kabis[10]:=1395;
kabis[11]:=1399;
kabis[12]:=1403;
kabis[13]:=1408;
kabis[14]:=1412;
kabis[15]:=1416;
kabis[16]:=1420;
kabis[17]:=1424;
kabis[18]:=1428;
kabis[19]:=1432;
kabis[20]:=1436;
kabis[21]:=1440;
kabis[22]:=1444;
kabis[23]:=1448;
kabis[24]:=1452;
kabis[25]:=1456;
kabis[26]:=1460;
kabis[27]:=1464;
kabis[28]:=1468;
kabis[29]:=1472;
kabis[30]:=1476;

getsystemsdate;
showongrid;
end;
///////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.showongrid;
var
  i,j,k,b:integer;
begin
  for j:=0 to 6 do
     for i:=0 to 5 do
        StringGrid1.cells[i,j]:='  ';
  k:=1;
  beginroz:=7-(( dat[3]+6-roz ) mod 7);
  b:=beginroz;
  if b>6 then b:=0;
  for i:=5 downto 0 do
     begin
        for j:=b to 6 do
          begin
             if k>shams[dat[2]] then
                break;
             if k=dat[3] then
                begin
                   m:=i;
                   n:=j;
                end;
             StringGrid1.Cells[i,j]:=inttostr(k);
             inc(k);
          end;
       b:=0;
     end;
  flag:=0;
  StringGrid1.row:=n;
  StringGrid1.col:=m;
  flag:=1;
  MaskEdit1.Text:=inttostr(dat[1]);
  ComboBox1.Text:=ComboBox1.Items.Strings[(dat[2]-1)];

end; //end of procedure
///////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.Getsystemsdate;
var
    i:integer;
begin
GetlocalTime(date);
dat[1]:=date.wYear;
dat[2]:=date.wMonth;
dat[3]:=date.wDay;
milad[2]:=28;
shams[12]:=29;
if ((dat[1] mod 4)=0) then
  begin
   milad[2]:=29;
 end;
 for i:=1 to dat[2]-1 do
    dat[3]:=dat[3]+milad[i];
 dat[1]:=dat[1]-621;

 if (  ( dat[3]<=80 ) and  ( milad[2]=29 ) and  ( is_kabis(dat[1]-1) )  ) or
    (  ( dat[3]<=79 ) and  ( milad[2]=28 ) and  ( NOT(is_kabis(dat[1]-1) ))  )or
    (  ( dat[3]<=79 ) and  ( milad[2]=29 ) and  ( NOT(is_kabis(dat[1]-1) ))  )
              then
   begin
     dat[3]:=dat[3]+286;
     dat[1]:=dat[1]-1;
   end

 else
 if  ( dat[3]<=80 ) and  ( milad[2]=28 ) and  ( is_kabis(dat[1]-1) )  then
   begin
     dat[3]:=dat[3]+287;
     dat[1]:=dat[1]-1;
   end
 else
      if (milad[2]=29) and ( NOT(is_kabis(dat[1])) ) then
       dat[3]:=dat[3]-80
      else
       dat[3]:=dat[3]-79;

if  (is_kabis(dat[1]))  then
        shams[12]:=30;
i:=1;
while(dat[3]>shams[i]) do
  begin
    dat[3]:=dat[3]-shams[i];
    inc(i);
  end;
dat[2]:=i;
roz:=date.wDayOfWeek;
 if  roz<6 then
    roz:=roz+1
 else
   roz:=0;
end;
////////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.ComboBox1Change(Sender: TObject);
var
      i,j,k:integer;
begin

 i:=0;
 while (ComboBox1.Text <> ComboBox1.Items.Strings[i]) and (i<13)  do
     i:=i+1;
if i>=12 then Exit;
 i:=i+1;
 k:=0;

 if i < dat[2] then
    begin
       for j:=(dat[2]-1) downto i do
           k:=k+shams[j];
      dat[2]:=i;
      roz:=roz-(k mod 7);
      if roz<0 then
        roz:=roz+7;
    end
 else
 if i>dat[2] then
    begin
      for j:=0 to 1 do
       begin
          if  dat[3]>shams[i]    then
              begin
                dec(dat[3]);
                dec(roz);
                if roz<0 then
                  roz:=6;
               end;
        end;
      for j:=dat[2] to i-1 do
        k:=k+shams[j];
        dat[2]:=i;
      roz:=roz+(k mod 7);
      if roz>=7 then
        roz:=roz-7;
    end;
   showongrid;
 end;
////////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.StringGrid1Click(Sender: TObject);
begin
if flag=1 then
begin
flag:=0;
if   StringGrid1.Cells[StringGrid1.col,StringGrid1.row]='  ' then
   begin
      StringGrid1.row:=n;
      StringGrid1.col:=m;
   end
else
begin
roz:=StringGrid1.row;
dat[3]:=strtoint(StringGrid1.Cells[StringGrid1.col,StringGrid1.row]);
n:=StringGrid1.row;
m:=StringGrid1.col;
end;
flag:=1;
end;
end;
////////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.dateChange;
 var
    j,value:integer;
begin
  j:=0;
  value:=strtoint(MaskEdit1.Text);
 if value=dat[1] then
     exit;
  if  (shams[12]=30) and (dat[2]=12)
        and (dat[3]=30) and ( is_kabis(value)=false  ) then
     begin
       dat[3]:=dat[3]-1;
       roz:=roz-1;
       if roz<0 then
       roz:=6;
     end;
 if value>dat[1] then
    begin
       while (value<>dat[1])do
          begin
            if  is_kabis(dat[1]) then
                 j:=j+2
            else
                 j:=j+1;
                 inc(dat[1]);
          end;
      roz:=roz+(j mod 7);
         if roz>=7 then
           roz:=roz-7;
    end;
//////////////////////////////////////////////////////
  if value<dat[1] then
    begin
       while (value<>dat[1])do
          begin
            if is_kabis(dat[1]-1) then
                 j:=j+2
            else
                 j:=j+1;
                 dec(dat[1]);
          end;
      roz:=roz-(j mod 7);
      if roz<0 then
        roz:=roz+7;
   end;
if is_kabis(value)  then
    shams[12]:=30
else
   shams[12]:=29;


  showongrid;
end;
///////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.Button3Click(Sender: TObject);
begin
changemilad;
savedate;
//////////////////////////
dat[3]:=strtoint(StringGrid1.Cells[StringGrid1.col,StringGrid1.row]);
       _str_date:=inttostr(dat[1])+'/';
      if dat[2]<10 then
         _str_date:=_str_date+'0'+inttostr(dat[2])+'/'
       else
         _str_date:=_str_date+inttostr(dat[2])+'/';

      if dat[3]<10 then
         _str_date:=_str_date+'0'+inttostr(dat[3])
       else
         _str_date:=_str_date+inttostr(dat[3]);

      ModalResult:=1;
      if StringGrid1.Row=0 then
        roz_hafte:=Button4.Caption;

      if StringGrid1.Row=1 then
        roz_hafte:=Button5.Caption;

      if StringGrid1.Row=2 then
        roz_hafte:=Button6.Caption;

      if StringGrid1.Row=3 then
        roz_hafte:=Button7.Caption;

      if StringGrid1.Row=4 then
        roz_hafte:=Button8.Caption;

      if StringGrid1.Row=5 then
        roz_hafte:=Button9.Caption;

      if StringGrid1.Row=6 then
        roz_hafte:=Button10.Caption;
 end;
///////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.savedate;
 begin
GetLocalTime(date);
date.wYear:=dat2[1];
date.wMonth:=dat2[2];
date.wDay:=dat2[3];
SetlocalTime(date);

 end;
///////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.changemilad;
var
     i:integer;
     ka:integer;
begin
  dat2[1]:=dat[1];
  dat2[2]:=dat[2];
  dat2[3]:=dat[3];

  milad[2]:=28;
   for i:=1 to dat2[2]-1 do
      dat2[3]:=dat2[3]+shams[i];
   ka:=dat2[1]+621;
   ka:=ka mod 4 ;
if (  (dat2[3]<=286) and ( is_kabis(dat2[1])=True  ) and ( ka<>0 )  )or
   (  (dat2[3]<=287) and ( is_kabis(dat2[1])=True  ) and (  ka=0 )  )or
   (  (dat2[3]<=286) and ( is_kabis(dat2[1])=False ) and ( ka<>0 )  )
  then
     begin
        dat2[3]:=dat2[3]+79;
        dat2[1]:=dat2[1]+621;
     end
else
    if (dat2[3]<=286) and ( is_kabis(dat2[1])=False ) and ( ka =0 ) then
     begin
        dat2[3]:=dat2[3]+80;
        dat2[1]:=dat2[1]+621;
     end
else
     begin
           ka:=dat2[1]+622;
           ka:=ka mod 4 ;
           if (is_kabis(dat2[1])) and (ka<>0) then
                dat2[3]:=dat2[3]-287
           else
                dat2[3]:=dat2[3]-286;
          dat2[1]:=dat2[1]+622;
     end;
if (dat2[1] mod 4)=0 then
 begin
  milad[2]:=29;
 end;
i:=1;
while(dat2[3]>milad[i]) do
  begin
    dat2[3]:=dat2[3]-milad[i];
    inc(i);
  end;
dat2[2]:=i;
end;
///////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.ComboBox1Exit(Sender: TObject);
begin
ComboBox1.text:=comboBox1.Items.Strings[(dat[2]-1)];
end;
///////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
dateChange;
end;
///////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var
      s:string;
      i:integer;
  begin
s:=MaskEdit1.Text;
for i:=1 to 4 do
   if s[i]=#32 then
     begin;
      MaskEdit1.Text:=inttostr(dat[1]);
      exit;
     end;
 if s<>inttostr(dat[1]) then
 dateChange;
end;
//////////////////////////////////////////////////////////////////////////////
function T_taghvim.is_kabis(sal: integer): Boolean;
var
      i:integer;
      index:Boolean;
begin

 index:=False;
 for i:=1 to 30 do
    begin
      if sal=kabis[i]  then
         begin
           index:=True;
           Break;
         end;
       if sal<kabis[i] then
           Break;
    end;
is_kabis:=index;
end;
//////////////////////////////////////////////////////////////////////////////
procedure T_taghvim.StringGrid1DblClick(Sender: TObject);
begin
if flag=1 then
begin
flag:=0;
if   StringGrid1.Cells[StringGrid1.col,StringGrid1.row]<>'  ' then
   begin
      dat[3]:=strtoint(StringGrid1.Cells[StringGrid1.col,StringGrid1.row]);
       _str_date:=inttostr(dat[1])+'/';
      if dat[2]<10 then
         _str_date:=_str_date+'0'+inttostr(dat[2])+'/'
       else
         _str_date:=_str_date+inttostr(dat[2])+'/';

      if dat[3]<10 then
         _str_date:=_str_date+'0'+inttostr(dat[3])
       else
         _str_date:=_str_date+inttostr(dat[3]);

      ModalResult:=1;
   end;
end;
end;
///////////////////////////////////////////////////////////////
procedure T_taghvim.Button11Click(Sender: TObject);
begin
ModalResult:=2;
end;
//////////////////////////////////////////////////////
procedure T_taghvim.Button2Click(Sender: TObject);
begin
      dat[3]:=strtoint(StringGrid1.Cells[StringGrid1.col,StringGrid1.row]);
       _str_date:=inttostr(dat[1])+'/';
      if dat[2]<10 then
         _str_date:=_str_date+'0'+inttostr(dat[2])+'/'
       else
         _str_date:=_str_date+inttostr(dat[2])+'/';

      if dat[3]<10 then
         _str_date:=_str_date+'0'+inttostr(dat[3])
       else
         _str_date:=_str_date+inttostr(dat[3]);

      ModalResult:=1;
      
      if StringGrid1.Row=0 then
        roz_hafte:=Button4.Caption;

      if StringGrid1.Row=1 then
        roz_hafte:=Button5.Caption;

      if StringGrid1.Row=2 then
        roz_hafte:=Button6.Caption;

      if StringGrid1.Row=3 then
        roz_hafte:=Button7.Caption;

      if StringGrid1.Row=4 then
        roz_hafte:=Button8.Caption;

      if StringGrid1.Row=5 then
        roz_hafte:=Button9.Caption;

      if StringGrid1.Row=6 then
        roz_hafte:=Button10.Caption;
end;
//////////////////////////////////////////////////////////////////////////////
function T_taghvim.is_date(s: string): Boolean;
begin
is_date:=True;
if (s[1]=' ') or (s[2]=' ') or (s[3]=' ') or (s[4]=' ') or (s[6]=' ') or
   (s[7]=' ') or (s[9]=' ') or (s[10]=' ') then
      is_date:=false
else
if (strtoint(s[6]+s[7])>12) or (strtoint(s[6]+s[7])<1)  then
      is_date:=False
else
if (strtoint(s[9]+s[10])>31) or (strtoint(s[9]+s[10])<1)  then
      is_date:=False
else
if (strtoint(s[6]+s[7])>6) and (strtoint(s[9]+s[10])>30) then
      is_date:=False
else
if (strtoint(s[6]+s[7])=12) and  (strtoint(s[9]+s[10])=30) and (is_kabis(strtoint(s[1]+s[2]+s[3]+s[4]))=false ) then
      is_date:=False;
end;


procedure T_taghvim.FormShow(Sender: TObject);
begin
{ if Label1.Caption='bbbbb' then
 begin
   Button2.Visible:=false;
   Button1.Visible:=false;
   Button11.Visible:=true;
   Button3.Visible:=true;
 end
 else
 begin
   Button2.Visible:=true;
   Button1.Visible:=true;
   Button11.Visible:=false;
   Button3.Visible:=false;
 end;}
end;

procedure T_taghvim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Label1.Caption:='aaaaa'
end;

end.////////////////////      end of unit      ////////////////////////////////



