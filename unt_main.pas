unit unt_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Menus, ExtCtrls, SUIForm,StdCtrls,dxCore, dxWinXPBar, dxContainer,
  dxButtons, SUIMgr, ImgList, SUIMainMenu, SUITabControl, SUIPageControl,
  ComCtrls, ToolWin, SUIToolBar, SUIStatusBar, SUIPopupMenu, jpeg, Buttons,
  ExtDlgs, DB, ADODB, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDClock, te_controls, te_db_controls,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton,
  SUISideChannel, DBCtrls, Grids, DBGrids, SUIDBCtrls,shellapi, te_dialogs;

type
  Tfrm_main = class(TForm)
    suiForm1: TsuiForm;
    suiFileTheme1: TsuiFileTheme;
    cntWinXPBar: TdxContainer;
    ScrollBox2: TScrollBox;
    dxContainer2: TdxContainer;
    dxWinXbarforosh: TdxWinXPBar;
    suiToolBar1: TsuiToolBar;
    ToolButton12: TToolButton;
    ImageList1: TImageList;
    suiStatusBar1: TsuiStatusBar;
    OpenPictureDialog1: TOpenPictureDialog;
    ToolButton1: TToolButton;
    Image2: TImage;
    ToolButton2: TToolButton;
    dxContainer9: TdxContainer;
    dxWinXPBar_gozaresh_koli: TdxWinXPBar;
    LMDClock1: TLMDClock;
    GroupBox4: TGroupBox;
    Timer_back: TTimer;
    dxContainer1: TdxContainer;
    dxWinXPBar1: TdxWinXPBar;
    dxContainer3: TdxContainer;
    dxWinXPBar2: TdxWinXPBar;
    TeDirectoryDialog1: TTeDirectoryDialog;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOQuery1picname: TWideStringField;
    ToolButton3: TToolButton;
    dxContainer4: TdxContainer;
    dxWinXPBar3: TdxWinXPBar;
    L_roze_hafte: TLabel;
    L_tarikh_roz: TLabel;
    L_masire_poshtiban: TLabel;

    procedure FormActivate(Sender: TObject);
    procedure show_calc;
    function tedad_roze_beine_do_tarikh(t1,t2:string):integer;
    procedure ToolButton12Click(Sender: TObject);
    procedure dxWinXPBar1Items8Click(Sender: TObject);
    procedure chang_path_of_backup;
    procedure autobackup;
    procedure Timer_backTimer(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure dxWinXPBar1Items1Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems0Click(Sender: TObject);
    procedure dxWinXbarforoshItems0Click(Sender: TObject);
    procedure dxWinXbarforoshItems1Click(Sender: TObject);
    procedure dxWinXbarforoshItems2Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems1Click(Sender: TObject);
    procedure dxWinXbarforoshItems3Click(Sender: TObject);
    procedure dxWinXbarforoshItems4Click(Sender: TObject);
    function format_for_naming_backup_file:string;
    procedure dxWinXPBar_gozaresh_koliItems2Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems3Click(Sender: TObject);
    procedure dxWinXPBar1Items2Click(Sender: TObject);
    procedure dxWinXPBar1Items3Click(Sender: TObject);
    procedure dxWinXPBar1Items4Click(Sender: TObject);
    procedure dxWinXPBar1Items5Click(Sender: TObject);
    procedure dxWinXPBar1Items6Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure dxWinXPBar3Items0Click(Sender: TObject);
    procedure dxWinXPBar3Items1Click(Sender: TObject);
    procedure dxWinXPBar3Items2Click(Sender: TObject);
    procedure dxWinXPBar3Items3Click(Sender: TObject);
    procedure dxWinXPBar1Items7Click(Sender: TObject);
    procedure dxWinXbarforoshItems5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

uses Taghvim, unt_login, Unt_login_change, unt_dabare, unt_data_input,
  unt_vorode_dovom_be_bad, unt_vorode_moshakhasat,
  unt_show_afrad_mabnaye_gozaresh, unt_shakhse_jadid,
  unt_jame_sahme_abe_nafarate_aval, unt_entegale_koli_moaian,
  unt_entegale_koli_na_moaian, unt_gozaresh_az_entegale_moayan,
  unt_gozaresh_az_entegale_na_moayan, unt_eslahe_sahme_nafare_aval,
  unt_eslahe_sahme_abe_geire_aval, unt_hazfe_sahme_abe_nafare_aval,
  unt_hazfe_sahme_abe_nafare_geire_aval;

{$R *.dfm}



////////////////////////////////
function Tfrm_main.format_for_naming_backup_file:string;
var tarikh,time_:string;
begin
  tarikh:=L_tarikh_roz.Caption;
  tarikh[5]:='-';
  tarikh[8]:='-';
  format_for_naming_backup_file:=L_roze_hafte.Caption+' '+tarikh;

end;


procedure Tfrm_main.autobackup;
var path,s,nn,time_:string;
begin
  time_:=LMDClock1.Digital.Caption;

  time_[3]:='-';
  time_[6]:='-';

 frm_login.ADOlogin.SQL.Text:='select * from  t_login';
 frm_login.ADOlogin.Open;
 if frm_login.ADOloginback.AsString='' then
 begin
  if TeDirectoryDialog1.Execute then
    s:=TeDirectoryDialog1.Directory;
    if StrLen(pchar(s))>=255 then
    begin
      MessageBox(Handle,pchar('ÿÊ· „”Ì— «‰ Œ«»Ì << '+s +' >> »Ì‘ — «“ 255 ò«—«ò — „Ì »«‘œ ° „”Ì— œÌê—Ì —« «‰ Œ«» ‰„«ÌÌœ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      s:='no';
    end;
      frm_login.ADOlogin.SQL.Text:='update t_login set back='+QuotedStr(s);
      frm_login.ADOlogin.ExecSQL;
 end
  else
    s:=frm_login.ADOloginback.AsString;
  if s<> 'no' then
  begin
    Path:=ExtractFilePath(Application.ExeName);

    Path:=Path+'sahm.mdb';

    nn:=format_for_naming_backup_file;

    CreateDirectory(pchar('\\?\'+s+'\'+nn),0);
    
    nn:=nn+'\'+' ”«⁄  '+time_;

    CreateDirectory(pchar('\\?\'+s+'\'+nn),0);
    
    s:=s+'\'+nn+'\sahm.mdb';
    CopyFile(PChar(Path),PChar(s),LongBool(0));
  end;
 end;
procedure Tfrm_main.chang_path_of_backup;
var s:string;
begin
 if TeDirectoryDialog1.Execute then
    s:=TeDirectoryDialog1.Directory;
    if StrLen(pchar(s))>=255 then
    begin
      MessageBox(Handle,pchar('ÿÊ· „”Ì— «‰ Œ«»Ì << '+s +' >> »Ì‘ — «“ 255 ò«—«ò — „Ì »«‘œ ° „”Ì— œÌê—Ì —« «‰ Œ«» ‰„«ÌÌœ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      s:='no';
    end
    else
    begin
      if s<>'' then
      begin
        frm_login.ADOlogin.SQL.Text:='update t_login set back='+QuotedStr(s);
        frm_login.ADOlogin.ExecSQL;
        frm_main.L_masire_poshtiban.Caption:='„”Ì— –ŒÌ—Â Å‘ Ì»«‰ : '+s;
      end
      else
        MessageBox(Handle,pchar('„”Ì— «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
end;
function Tfrm_main.tedad_roze_beine_do_tarikh(t1,t2:string):integer;
var sal1,sal2,mah1,mah2,roz1,roz2,aval,dovom:integer;
begin
if t1>t2 then
tedad_roze_beine_do_tarikh:=0
else
begin
 sal1:=StrToInt(t1[1]+t1[2]+t1[3]+t1[4]);
 sal2:=StrToInt(t2[1]+t2[2]+t2[3]+t2[4]);

 mah1:=StrToInt(t1[6]+t1[7]);
 mah2:=StrToInt(t2[6]+t2[7]);

 roz1:=StrToInt(t1[9]+t1[10]);
 roz2:=StrToInt(t2[9]+t2[10]);

 if (sal1=sal2) then
 begin
   aval:=((mah1-1)*30+roz1);
   dovom:=((mah2-1)*30+roz2);
 end;

 if (sal1<sal2)then
 begin
  if (mah1>=mah2) then
  begin
   aval:=((sal1-1380)*360)+((mah1-1)*30+roz1);
   dovom:=((sal2-1380)*360)+((mah2-1)*30+roz2);
  end
  else
  begin
   aval:=((sal1-1380)*360)+((mah1)*30+roz1);
   dovom:=((sal2-1380)*360)+((mah2)*30+roz2);
  end;
 end;
 tedad_roze_beine_do_tarikh:=(abs(dovom-aval));
end;
end;

procedure Tfrm_main.show_calc;
var path:string;
    s:pchar;
begin
    {Path:=ExtractFilePath(Application.ExeName);
    Path:=Path+'calc.exe;
    s:=pchar(path); }
    ShellExecute(Handle,'open','calc.exe','','',SW_SHOWMAXIMIZED);
end;




procedure Tfrm_main.FormActivate(Sender: TObject);
begin
  ADOQuery1.SQL.Text:='select * from t_pic';
  ADOQuery1.Open;
  Image2.Picture.LoadFromFile(ADOQuery1picname.Text);
  frm_main.WindowState:=wsMaximized;
  Frm_login.ShowModal;
  if Frm_login.Edit1.Text='nr' then
    close;
end;

{var path :string;
begin
  path:=ExtractFilePath(Application.ExeName);
  path:=path;
  OpenPictureDialog1.InitialDir:=path;
  If OpenPictureDialog1.Execute then
   begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    {ADOQuery1.SQL.Text:='update t_pic set picname='+QuotedStr(OpenPictureDialog1.FileName);
    ADOQuery1.ExecSQL;
   end;}



procedure Tfrm_main.ToolButton12Click(Sender: TObject);
begin
  Close;
end;


procedure Tfrm_main.ToolButton1Click(Sender: TObject);
var path :string;
begin
  path:=ExtractFilePath(Application.ExeName);
  path:=path;
  OpenPictureDialog1.InitialDir:=path;
  If OpenPictureDialog1.Execute then
   begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    ADOQuery1.SQL.Text:='update t_pic set picname='+QuotedStr(OpenPictureDialog1.FileName);
    ADOQuery1.ExecSQL;
   end;
     
end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  {ADOQuery1.SQL.Text:='select * from t_pic';
  ADOQuery1.Open;
  Image2.Picture.LoadFromFile(ADOQuery1picname.Text); }
end;



procedure Tfrm_main.dxWinXPBar1Items8Click(Sender: TObject);
begin
  Frm_login_change.ShowModal;
end;


procedure Tfrm_main.Timer_backTimer(Sender: TObject);
begin
 //// har 10 minute ////
 autobackup;
end;

procedure Tfrm_main.ToolButton2Click(Sender: TObject);
begin
  frm_dabare.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items1Click(Sender: TObject);
begin
  chang_path_of_backup;
end;





procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems0Click(Sender: TObject);
begin
 frm_show_afrad_mabnaye_gozaresh.l_type.Caption:='trace';
 frm_show_afrad_mabnaye_gozaresh.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems0Click(Sender: TObject);
begin
  frm_shakhse_jadid.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems1Click(Sender: TObject);
begin
 frm_vorode_moshakhasat.Button1.Visible:=false;
 frm_vorode_moshakhasat.L_noe_nafar.Caption:='aval';
 frm_vorode_moshakhasat.G_mojod.Caption:='  ·Ì”  «›—«œ „ÊÃÊœ  ';
 frm_vorode_moshakhasat.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems2Click(Sender: TObject);
begin
 frm_vorode_moshakhasat.Button1.Visible:=false;
 frm_vorode_moshakhasat.L_noe_nafar.Caption:='not aval';
 frm_vorode_moshakhasat.G_mojod.Caption:=' ·Ì”  «›—«œ „ÊÃÊœ ÃÂ  «‰ Œ«» »—«Ì œ—Ì«›  ”Â„ ¬» ';
 frm_vorode_moshakhasat.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems1Click(Sender: TObject);
begin
  frm_jame_sahme_abe_nafarate_aval.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems3Click(Sender: TObject);
begin
  frm_entegale_koli_moaian.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems4Click(Sender: TObject);
begin
  frm_entegale_koli_na_moaian.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems2Click(Sender: TObject);
begin
  frm_gozaresh_az_entegale_moayan.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems3Click(Sender: TObject);
begin
frm_gozaresh_az_entegale_na_moayan.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items2Click(Sender: TObject);
begin
 frm_vorode_moshakhasat.Button1.Visible:=true;
 frm_vorode_moshakhasat.L_noe_nafar.Caption:='eslah';
 frm_vorode_moshakhasat.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items3Click(Sender: TObject);
begin
  frm_eslahe_sahme_nafare_aval.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items4Click(Sender: TObject);
begin
  frm_eslahe_sahme_abe_geire_aval.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items5Click(Sender: TObject);
begin
  frm_hazfe_sahme_abe_nafare_aval.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items6Click(Sender: TObject);
begin
  frm_hazfe_sahme_abe_nafare_geire_aval.ShowModal;
end;

procedure Tfrm_main.ToolButton3Click(Sender: TObject);
begin
 autobackup;
 MessageBox(Handle,'⁄„·Ì«  Å‘ Ì»«‰ êÌ—Ì «“ Å«Ìê«Â œ«œÂ «‰Ã«„ ‘œ','Back Up',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

end;

procedure Tfrm_main.dxWinXPBar3Items0Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','explorer.exe','','',SW_SHOWMAXIMIZED);
end;

procedure Tfrm_main.dxWinXPBar3Items1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','wmplayer.exe','','',SW_SHOWMAXIMIZED);
end;

procedure Tfrm_main.dxWinXPBar3Items2Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','sndvol32.exe','','',SW_SHOWNORMAL);
end;

procedure Tfrm_main.dxWinXPBar3Items3Click(Sender: TObject);
begin
 autobackup;
 MessageBox(Handle,'⁄„·Ì«  Å‘ Ì»«‰ êÌ—Ì «“ Å«Ìê«Â œ«œÂ «‰Ã«„ ‘œ','Back Up',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_main.dxWinXPBar1Items7Click(Sender: TObject);
begin
  _taghvim.Label1.Caption:='bbbbb';
  _taghvim.Button2.Visible:=false;
  _taghvim.Button1.Visible:=false;
  _taghvim.Button11.Visible:=false;  
  _taghvim.Button3.Visible:=true;
_Taghvim.ShowModal;
if _taghvim._str_date<>'' then
begin
  Frm_login.Egettarikh.Text:=_Taghvim._str_date;
  L_tarikh_roz.Caption:=_Taghvim._str_date;

  L_roze_hafte.Caption:=_Taghvim.roz_hafte;

   MessageBox(Handle,pchar('  «—ÌŒ << '+L_tarikh_roz.Caption+' >> ° »Â ⁄‰Ê«‰  «—ÌŒ «„—Ê“ –ŒÌ—Â ‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);

end;
end;

procedure Tfrm_main.dxWinXbarforoshItems5Click(Sender: TObject);
begin
 frm_vorode_moshakhasat.L_noe_nafar.Caption:='somn';
 frm_vorode_moshakhasat.G_mojod.Caption:='«‰ Œ«» “‰ »—«Ì À»  À„‰ «⁄Ì«‰Ì »—«Ì «Ê';
 frm_vorode_moshakhasat.ShowModal;
end;

end.
