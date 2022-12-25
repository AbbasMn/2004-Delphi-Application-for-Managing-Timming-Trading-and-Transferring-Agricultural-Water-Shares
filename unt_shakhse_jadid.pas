unit unt_shakhse_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, ExtCtrls;

type
  Tfrm_shakhse_jadid = class(TForm)
    g_jadid: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    e_name: TsuiEdit;
    e_family: TsuiEdit;
    e_pedar: TsuiEdit;
    e_sh_sh: TsuiEdit;
    Bt: TButton;
    L_noe_nafar: TLabel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    e_hoseinie: TsuiEdit;
    RadioGroup1: TRadioGroup;
    procedure clear;
    procedure insert_into_T_afrade_mojod;
    function check_farde_vared_shode_exist_in_afrade_mojod:boolean;
    function check_tekrarie_kamel:boolean;
    function check_vorod_moshakhasate_kharida:boolean;
    procedure BtClick(Sender: TObject);
    procedure e_familyExit(Sender: TObject);
    procedure update_akharin_cod;
    function  get_akharin_cod:string;
    procedure FormShow(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cod_shakhs,cod_reshte:string;
    family,name,name_pedar,sh_sh:string;
  end;

var
  frm_shakhse_jadid: Tfrm_shakhse_jadid;

implementation

uses unt_dm, unt_show_afrade_mojod, unt_data_input,
  unt_vorode_dovom_be_bad, unt_vorode_moshakhasat;

{$R *.dfm}
procedure Tfrm_shakhse_jadid.type_;
begin
  if RadioGroup1.ItemIndex=0 then
    GroupBox1.Visible:=false
  else
    GroupBox1.Visible:=true;
end;

function Tfrm_shakhse_jadid.get_akharin_cod:string;
begin
  dm.ADOQ_get_akharin_cod.SQL.Text:='select * from T_akharin_cod';
  dm.ADOQ_get_akharin_cod.Open;
  get_akharin_cod:=dm.ADOQ_get_akharin_codakharin_cod.AsString;
end;

procedure Tfrm_shakhse_jadid.update_akharin_cod;
begin
  dm.ADOQ_get_akharin_cod.SQL.Text:='update T_akharin_cod set akharin_cod=akharin_cod+1';
  dm.ADOQ_get_akharin_cod.ExecSQL;
end;

function Tfrm_shakhse_jadid.check_vorod_moshakhasate_kharida:boolean;
var s:string;
begin
  check_vorod_moshakhasate_kharida:=true;
  s:='';
if RadioGroup1.ItemIndex=0 then
begin
 if ComboBox1.Text='' then
  begin
    s:=s+' ‰›— «Ê· Ì« €Ì— «Ê· ';
    ComboBox1.SetFocus;
  end;

  if e_family.Text='' then
  begin
    s:=s+' ‰«„ Œ«‰Ê«œêÌ ';
    e_family.SetFocus;
  end;
  if e_name.Text='' then
  begin
    s:=s+' ‰«„ ';
    e_name.SetFocus;
  end;
end
else
begin
  if e_hoseinie.Text='' then
  begin
    s:=s+'‰«„ „Ê””Â°Õ”Ì‰ÌÂ Ê ... ';
    e_hoseinie.SetFocus;
  end;
end;
  if s<>'' then
  begin
    check_vorod_moshakhasate_kharida:=false;
    MessageBox(Handle,pchar(s+' »«Ìœ Ê«—œ ‘Êœ'),'!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;



function Tfrm_shakhse_jadid.check_tekrarie_kamel:boolean;
begin
  check_tekrarie_kamel:=false;

  if RadioGroup1.ItemIndex=0 then
  begin
    dm.ADOQ_show_afrade_mojod.SQL.Text:='select * from T_afrade_mojod where name='+QuotedStr(trim(e_name.Text))+
    ' and family='+QuotedStr(trim(e_family.Text))+' and name_pedar='+QuotedStr(trim(e_pedar.Text));
  end
  else
  begin
    dm.ADOQ_show_afrade_mojod.SQL.Text:='select * from T_afrade_mojod where family='+QuotedStr(trim(e_hoseinie.Text));
  end;

  dm.ADOQ_show_afrade_mojod.Open;
  if dm.ADOQ_show_afrade_mojod.RecordCount>0 then
    check_tekrarie_kamel:=true;
end;

function Tfrm_shakhse_jadid.check_farde_vared_shode_exist_in_afrade_mojod:boolean;
begin
  check_farde_vared_shode_exist_in_afrade_mojod:=false;
  dm.ADOQ_show_afrade_mojod.SQL.Text:='select * from T_afrade_mojod where name='+QuotedStr(trim(e_name.Text))+
  ' and family='+QuotedStr(e_family.Text);
  dm.ADOQ_show_afrade_mojod.Open;
  if dm.ADOQ_show_afrade_mojod.RecordCount>0 then
    check_farde_vared_shode_exist_in_afrade_mojod:=true;
end;

procedure Tfrm_shakhse_jadid.insert_into_T_afrade_mojod;
var s:string;
begin
  cod_shakhs:=get_akharin_cod;

  if StrToInt(cod_shakhs)>(9999) then
   cod_reshte:=cod_shakhs
   else
    begin
      if StrToInt(cod_shakhs)>(999) then
        cod_reshte:='0'+cod_shakhs
      else
      begin
        if StrToInt(cod_shakhs)>(99) then
          cod_reshte:='00'+cod_shakhs
        else
        begin
          if StrToInt(cod_shakhs)>(9) then
            cod_reshte:='000'+cod_shakhs
            else
              cod_reshte:='0000'+cod_shakhs;
        end;
      end;
    end;
    if RadioGroup1.ItemIndex=0 then
    begin
      s:=e_family.Text;
      dm.ADOQ_show_afrade_mojod.SQL.Text:='insert into T_afrade_mojod(family,name,name_pedar,sh_sh,cod_reshte,cod,nafare_aval) values('+
      QuotedStr(trim(s))+','+QuotedStr(trim(e_name.Text))+','+QuotedStr(trim(e_pedar.Text))+','+
      QuotedStr(trim(e_sh_sh.Text))+','+QuotedStr(trim(cod_reshte))+','+cod_shakhs+','+QuotedStr(ComboBox1.Text)+')';
    end
    else
    begin
      s:=e_hoseinie.Text;
      dm.ADOQ_show_afrade_mojod.SQL.Text:='insert into T_afrade_mojod(family,name,name_pedar,sh_sh,cod_reshte,cod,nafare_aval) values('+
      QuotedStr(trim(s))+','+QuotedStr('')+','+QuotedStr('')+','+
      QuotedStr('')+','+QuotedStr(trim(cod_reshte))+','+cod_shakhs+','+QuotedStr(ComboBox1.Text)+')';
    end;

    dm.ADOQ_show_afrade_mojod.ExecSQL;

end;


procedure Tfrm_shakhse_jadid.clear;
begin
  e_name.Clear;
  e_family.Clear;
  e_pedar.Clear;
  e_sh_sh.Clear;
  e_hoseinie.Clear;
end;

procedure Tfrm_shakhse_jadid.BtClick(Sender: TObject);
begin
 if check_vorod_moshakhasate_kharida then
 begin
      if check_tekrarie_kamel then
      begin
        MessageBox(Handle,pchar('„‘Œ’«  Ê—ÊœÌ ( ‰«„ ° ‰«„ Œ«‰Ê«œêÌ Ê ‰«„ Åœ— ) ﬁ»·« Ìò »«— Ê«—œ ‘œÂ «” '),'!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
        frm_show_afrade_ba_yek_nam.ShowModal;
      end
      else
      begin
        insert_into_T_afrade_mojod;
        update_akharin_cod;
        MessageBox(Handle,pchar('„‘Œ’«  ‘Œ’ Ì« „Ê””Â ÃœÌœ –ŒÌ—Â ê—œÌœ'),' ÊÃÂ!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
        e_name.Clear;
        e_family.Clear;
        e_pedar.Clear;
        e_sh_sh.Clear;

        close;
      end;
 end;
frm_vorode_moshakhasat.shpw_afrade_mojod; 
end;

procedure Tfrm_shakhse_jadid.e_familyExit(Sender: TObject);
begin
if check_farde_vared_shode_exist_in_afrade_mojod then
  frm_show_afrade_ba_yek_nam.ShowModal;
end;

procedure Tfrm_shakhse_jadid.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  type_;
  clear;
end;

procedure Tfrm_shakhse_jadid.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

end.
