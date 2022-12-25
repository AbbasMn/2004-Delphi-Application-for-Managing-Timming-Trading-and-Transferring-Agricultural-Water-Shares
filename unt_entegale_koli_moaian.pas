unit unt_entegale_koli_moaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, SUIEdit, ExtCtrls;

type
  Tfrm_entegale_koli_moaian = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Bt: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    L_name: TLabel;
    l_family: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    l_pedar: TLabel;
    Label15: TLabel;
    l_sh_sh: TLabel;
    G_mahzari: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    e_roz_mahzar: TsuiEdit;
    e_mah_mahzar: TsuiEdit;
    e_sal_mahzar: TsuiEdit;
    e_sh_mahzar: TsuiEdit;
    e_sh_sanade_sabti: TsuiEdit;
    e_shahre_mahzar: TsuiEdit;
    RadioGroup2: TRadioGroup;
    G_geire_mahzari: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    e_roz: TsuiEdit;
    e_mah: TsuiEdit;
    e_sal: TsuiEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BtClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure type_mahzar;
    procedure RadioGroup2Click(Sender: TObject);
    procedure delete_all_from_temp;
    procedure Button3Click(Sender: TObject);
    procedure insert_entegal;
    procedure Button2Click(Sender: TObject);
    procedure clear;
    procedure e_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_roz_mahzarKeyPress(Sender: TObject; var Key: Char);
    procedure e_mah_mahzarKeyPress(Sender: TObject; var Key: Char);
    procedure e_sal_mahzarKeyPress(Sender: TObject; var Key: Char);
    procedure e_roz_mahzarExit(Sender: TObject);
    procedure e_mah_mahzarExit(Sender: TObject);
    procedure e_rozExit(Sender: TObject);
    procedure e_mahExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    code_reshteie_girande,code_girande,id_koli_moaian_be:string;
  end;

var
  frm_entegale_koli_moaian: Tfrm_entegale_koli_moaian;

implementation

uses unt_entekhabe_aval_dar_koli, unt_Dm_koli, unt_vorode_moshakhasat,
  unt_dm;

{$R *.dfm}
procedure Tfrm_entegale_koli_moaian.clear;
begin
  e_roz.Clear;
  e_mah.Clear;
  e_sal.Clear;

  e_roz_mahzar.Clear;
  e_mah_mahzar.Clear;
  e_sal_mahzar.Clear;
  e_sh_mahzar.Text:='';
  e_sh_sanade_sabti.Clear;
  e_shahre_mahzar.Text:='«” Â»«‰';

  L_name.Caption:='';
  l_family.Caption:='';
  l_pedar.Caption:='';
  l_sh_sh.Caption:='';  
end;

procedure Tfrm_entegale_koli_moaian.insert_entegal;
var tarikh:string;
begin
if RadioGroup2.ItemIndex=0 then
  tarikh:=trim(e_sal_mahzar.Text+'/'+e_mah_mahzar.Text+'/'+e_roz_mahzar.Text)
else
  tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text);

  if tarikh='//' then
    tarikh:='';




  Dm_koli.ADOQ_temp_avale_koli.First;

  while not Dm_koli.ADOQ_temp_avale_koli.Eof do
  begin
    dm.ADOQ_show_afrad.SQL.Text:='insert into t_sahamdaran(entegal_az_id,id_koli_moaian_be,koli,sh_parvande,name,family,tedade_sahme_ashari,tedade_sahme_ashari_avalie,'+
    'tarikh,name_pedar,sahm_zaribe_kasr,sahm_sorate_kasr,sahm_makhraje_kasr,id_entegal_dahande,sh_sanade_mahzari,sh_mahzar,shahre_mahzar,'+
    'az_name,az_family,az_name_pedar,noe_entegal,cod_shakhs,cod_reshteei)'+
    ' values('+Dm_koli.ADOQ_temp_avale_koliid_dar_sahamdaran.AsString+','+
    IntToStr(StrToInt(id_koli_moaian_be)+1)+','+
    QuotedStr('ò·Ì „⁄Ì‰')+','+
    QuotedStr(trim(Dm_koli.ADOQ_temp_avale_kolish_parvande.AsString))+','+QuotedStr(trim(l_name.caption))+','+QuotedStr(trim(l_family.caption))+
    ','+Dm_koli.ADOQ_temp_avale_kolitedade_sahme_ashari.AsString+','+Dm_koli.ADOQ_temp_avale_kolitedade_sahme_ashari.AsString+','+QuotedStr(tarikh)+
    ','+QuotedStr(trim(l_pedar.caption))+','+



    QuotedStr(trim(Dm_koli.ADOQ_temp_avale_kolisahm_zaribe_kasr.AsString))+','+QuotedStr(Dm_koli.ADOQ_temp_avale_kolisahm_sorate_kasr.AsString)+','
    +QuotedStr(trim(Dm_koli.ADOQ_temp_avale_kolisahm_makhraje_kasr.AsString))+','+

    Dm_koli.ADOQ_temp_avale_kolicod_shakhs.AsString+
    ','+QuotedStr(e_sh_sanade_sabti.Text)+','+QuotedStr(e_sh_mahzar.Text)+','+QuotedStr(e_shahre_mahzar.Text)+','+
    QuotedStr(trim(Dm_koli.ADOQ_temp_avale_koliname.AsString))+','+
    QuotedStr(trim(Dm_koli.ADOQ_temp_avale_kolifamily.AsString))+','+
    QuotedStr(trim(Dm_koli.ADOQ_temp_avale_koliname_pedar.AsString))+','+
    QuotedStr(Dm_koli.ADOQ_temp_avale_kolinoe_entegal.AsString)+
    ','+code_girande+
    ','+QuotedStr(Dm_koli.ADOQ_temp_avale_kolicod_reshteei.AsString+code_reshteie_girande)+')';
    dm.ADOQ_show_afrad.ExecSQL;


    dm.ADOQ_show_afrad.SQL.Text:='update t_sahamdaran set tedade_sahme_ashari=tedade_sahme_ashari-'+Dm_koli.ADOQ_temp_avale_kolitedade_sahme_ashari.AsString+
    ' where id='+Dm_koli.ADOQ_temp_avale_koliid_dar_sahamdaran.AsString;
    dm.ADOQ_show_afrad.ExecSQL;

    Dm_koli.ADOQ_temp_avale_koli.Next;
  end;

  dm.ADOQ_show_afrade_mojod.SQL.Text:='update T_afrade_mojod set id_koli_moaian_be=id_koli_moaian_be+1 where cod='+
  code_girande;
  dm.ADOQ_show_afrade_mojod.ExecSQL;
  
  MessageBox(Handle,pchar('«ÿ·«⁄«  «‰ ﬁ«· ”Â„ ¬» –ŒÌ—Â ‘œ'),'!!!!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);

end;





procedure Tfrm_entegale_koli_moaian.delete_all_from_temp;
begin
  Dm_koli.ADOQ_temp_avale_koli.SQL.Text:='delete from t_temp_aval_dar_koli';
  Dm_koli.ADOQ_temp_avale_koli.ExecSQL;
end;
procedure Tfrm_entegale_koli_moaian.type_mahzar;
begin
 if RadioGroup2.ItemIndex=0 then
 begin
  G_mahzari.Visible:=true;
  G_geire_mahzari.Visible:=false;
 end
 else
 begin
  G_mahzari.Visible:=false;
  G_geire_mahzari.Visible:=true;
 end;
end;

procedure Tfrm_entegale_koli_moaian.Button1Click(Sender: TObject);
begin
  frm_entekhabe_aval_dar_koli.ShowModal;
end;

procedure Tfrm_entegale_koli_moaian.BtClick(Sender: TObject);
begin
    frm_vorode_moshakhasat.L_noe_nafar.Caption:='koli moayan';
    frm_vorode_moshakhasat.ShowModal;
end;

procedure Tfrm_entegale_koli_moaian.FormShow(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=0;
  type_mahzar;
  clear;
  delete_all_from_temp;
  Dm_koli.ADOQ_temp_avale_koli.SQL.Text:='select * from t_temp_aval_dar_koli order by id';
  Dm_koli.ADOQ_temp_avale_koli.Open;
end;

procedure Tfrm_entegale_koli_moaian.RadioGroup2Click(Sender: TObject);
begin
  type_mahzar;
end;

procedure Tfrm_entegale_koli_moaian.Button3Click(Sender: TObject);
begin
if Dm_koli.ADOQ_temp_avale_koli.RecordCount >0 then
  Dm_koli.ADOQ_temp_avale_koli.Delete;
end;

procedure Tfrm_entegale_koli_moaian.Button2Click(Sender: TObject);
begin
if l_family.Caption='' then
      MessageBox(Handle,'êÌ—‰œÂ ”Â„ ¬» «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
else
  begin

    Dm_koli.ADOQ_temp_avale_koli.SQL.Text:='select * from t_temp_aval_dar_koli order by id';
    Dm_koli.ADOQ_temp_avale_koli.Open;

    if Dm_koli.ADOQ_temp_avale_koli.RecordCount>0 then
    begin
      insert_entegal;
      delete_all_from_temp;
      Dm_koli.ADOQ_temp_avale_koli.SQL.Text:='select * from t_temp_aval_dar_koli order by id';
      Dm_koli.ADOQ_temp_avale_koli.Open;
      clear;
    end
    else
      MessageBox(Handle,'”Â„ ¬»Ì »—«Ì «‰ ﬁ«» Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;
end;

procedure Tfrm_entegale_koli_moaian.e_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entegale_koli_moaian.e_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entegale_koli_moaian.e_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entegale_koli_moaian.e_roz_mahzarKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entegale_koli_moaian.e_mah_mahzarKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entegale_koli_moaian.e_sal_mahzarKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entegale_koli_moaian.e_roz_mahzarExit(Sender: TObject);
begin
  if strlen(pchar(e_roz_mahzar.Text))=1 then
    e_roz_mahzar.Text:='0'+e_roz_mahzar.Text;
end;

procedure Tfrm_entegale_koli_moaian.e_mah_mahzarExit(Sender: TObject);
begin
 if strlen(pchar(e_mah_mahzar.Text))=1 then
  e_mah_mahzar.Text:='0'+e_mah_mahzar.Text;
end;

procedure Tfrm_entegale_koli_moaian.e_rozExit(Sender: TObject);
begin
 if strlen(pchar(e_roz.Text))=1 then
  e_roz.Text:='0'+e_roz.Text;
end;

procedure Tfrm_entegale_koli_moaian.e_mahExit(Sender: TObject);
begin
 if strlen(pchar(e_mah.Text))=1 then
  e_mah.Text:='0'+e_mah.Text;
end;

end.
