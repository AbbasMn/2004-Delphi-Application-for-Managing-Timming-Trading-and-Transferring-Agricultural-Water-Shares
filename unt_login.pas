unit unt_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ExtCtrls, SUIForm, DB, ADODB;

type
  TFrm_login = class(TForm)
    GroupBox1: TGroupBox;
    suiBtaeed: TsuiButton;
    suibexit: TsuiButton;
    Elogin: TEdit;
    Edit1: TEdit;
    Egettarikh: TEdit;
    ADOlogin: TADOQuery;
    ADOloginlogin: TWideStringField;
    ADOloginserial: TWideStringField;
    ADOloginback: TWideStringField;
    procedure suibexitClick(Sender: TObject);
    function getloginfromdatabase:string;
    function login:boolean;
    function getserialhardfrmbatabase:string;
    function bug_forosh:boolean;
    function checkserialhard:string;
    function bugoafserial:boolean;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    function gettarikh:boolean;

    function bug_tarikh:boolean;
    procedure taeed;
    procedure suiBtaeedClick(Sender: TObject);
    function gethardserial(const driveletter:char ):string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_login: TFrm_login;

implementation

uses unt_main, Taghvim;

{$R *.dfm}

function TFrm_login.gethardserial(const driveletter:char ):string;
 var notused:DWORD;
     vf:DWORD;
     vinfo:array[0..max_path] of Char;
     vsn:DWORD;
begin
   GetVolumeInformation(pchar(driveletter + ':\'),nil,SIZEOF(vinfo),@vsn,notused,vf,nil,0);
   result:=format('volser=%8.8x',[vsn]);

end;
////////////


procedure TFrm_login.taeed;
begin
  if Elogin.Text='' then
      MessageBox(Handle,'?? ?????? ?? ???? ??????','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin

    ADOlogin.SQL.Text:='select * from t_login';
    ADOlogin.Open;
    if Elogin.Text=ADOloginlogin.AsString then
    begin
        Edit1.Text:='r';
        frm_main.L_masire_poshtiban.Caption:='???? ????? ??????? : '+ADOloginback.AsString;
        Close;
    end
    else
    begin
      Edit1.Text:='nr';
      MessageBox(Handle,'?? ????? ?????? ??? ??? ????? ???? ??????','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
      close;
    end
  end;

end;
function TFrm_login.bug_tarikh:boolean;
begin
  bug_tarikh:=false;
  if (Egettarikh.Text[1]+Egettarikh.Text[2]+Egettarikh.Text[3]+Egettarikh.Text[4]>='1387')and(Egettarikh.Text[6]+Egettarikh.Text[7]>='08') then
  begin
     MessageBox(Handle,'????? ????? ??????? ?? ??? ????? ','copy right !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
    bug_tarikh:=true;
  end;
end;
//////////////////  tarikh check ///////////////////
function TFrm_login.gettarikh:boolean;
begin
  _taghvim.Button2.Visible:=false;
  _taghvim.Button1.Visible:=false;
  _taghvim.Caption:='????? ????? ?? ????? ??????';

  _Taghvim.ShowModal;
if _taghvim._str_date<>'' then
begin
  Egettarikh.Text:=_taghvim._str_date;
   frm_main.L_tarikh_roz.Caption:=Frm_login.Egettarikh.Text;
   frm_main.L_roze_hafte.Caption:=_Taghvim.roz_hafte;
  gettarikh :=True;

  if bug_tarikh then
    begin
      if frm_main.Showing then
        frm_main.Close;
      close;
    end 

 {if gethardserial('c')<>'volser=5c195fb0' then
     begin
      if frm_main.Showing then
        frm_main.Close;
      close;
    end} 
end;
if Egettarikh.Text='' then
begin
     MessageBox(Handle,'????? ????? ?? ???? ?????? ','??? !',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
     gettarikh :=False ;
end;



end;
/////////////////////////////////////////////
function TFrm_login.checkserialhard:string;
begin
  ////////// check serial hard ///////////
   ADOlogin.SQL.Text:='select* from t_login';
    ADOlogin.Open;
    if (ADOloginserial.AsString='') then
      begin
        ADOlogin.SQL.Text:='update t_login set serial='+QuotedStr(gethardserial('c'));
        ADOlogin.ExecSQL;
      end
    else
      checkserialhard:=gethardserial('c');
  ///////////////////////////////////////
end;
function TFrm_login.bugoafserial:boolean;
var s:string;
begin
  bugoafserial:=false;
  ADOlogin.SQL.Text:='select* from t_login';
  ADOlogin.Open;
  s:=ADOloginserial.AsString;
  s:='volser=5c195fb0'; //for khobiar
    if not(s=checkserialhard) then
      begin
        MessageBox(Handle,'??? ?????? ????? ??? ????ѡ ??? ??? ?????? ?? ??? ??? ????? ??????? ??????','Copy right',MB_OK or MB_ICONWARNING);
        bugoafserial:=true;
      end;
end;
{******************************************************}
function TFrm_login.bug_forosh:boolean;
begin
  bug_forosh:=false;
  {DataM_input_data.ADOQ_forosh.SQL.Text:='select * from T_moshakhasate_forosh';
  DataM_input_data.ADOQ_forosh.Open;
  if DataM_input_data.ADOQ_forosh.RecordCount > 30 then
    begin
      bug_forosh:=true;
      MessageBox(Handle,'??? ?????? ????? ??? ????ѡ??? ??? ?????? ?? ??? ??? ????? ??????? ??????','Copy right',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);
      close;
    end; }
end;

{******************************************************}
function TFrm_login.getserialhardfrmbatabase:string;
begin
  ADOlogin.SQL.Text:='select * from t_login';
  ADOlogin.Open;
  getserialhardfrmbatabase:=ADOloginserial.AsString;
end;
function TFrm_login.login:boolean;
begin
   login:=false;
   if trim(Elogin.Text)=getloginfromdatabase then
    begin
      login:=true;
    end;
end;
function TFrm_login.getloginfromdatabase:string;
begin
 ADOlogin.SQL.Text:='select * from t_login';
  ADOlogin.Open;
  getloginfromdatabase:=ADOloginlogin.AsString;
end;

procedure TFrm_login.suibexitClick(Sender: TObject);
begin
    Edit1.Text:='exite';
    close;
end;

procedure TFrm_login.FormShow(Sender: TObject);
begin
  Egettarikh.Text :='';
  frm_main.L_masire_poshtiban.Caption:='';
   while not gettarikh do
    gettarikh;
    MessageBox(Handle,'??????? ??????? ?? ??? ?????'+'   ! BETA VERSION    ','Copy right',MB_OK or MB_ICONWARNING or MB_RIGHT or MB_RTLREADING);

    //Frm_login.checkserialhard;

    if bug_tarikh then
    begin
      if frm_main.Showing then
        frm_main.Close;
    close;
    end;

    {if bugoafserial then
    begin
      if frm_main.Showing then
        frm_main.Close;
    close;
    end;}

  {if bug_forosh then
    begin
      if frm_main.Showing then
        frm_main.Close;
      close;
    end; }
  //////////////////////////////
end;

procedure TFrm_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Edit1.Text='exite' then
      frm_main.Close;
  /////////////////////////
  if Edit1.Text='notexite' then
      if not login then
          frm_main.Close;
  if (Edit1.Text='') then
          frm_main.Close;

end;

procedure TFrm_login.FormActivate(Sender: TObject);
begin
  Edit1.Text:='';
end;

procedure TFrm_login.suiBtaeedClick(Sender: TObject);
begin
  taeed;

end;

end.
