unit unt_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, SUIEdit, DB, ExtCtrls;

type
  Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian = class(TForm)
    Label6: TLabel;
    e_search: TsuiEdit;
    Label20: TLabel;
    ComboBox1: TComboBox;
    Bt: TButton;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    G_adadi: TGroupBox;
    Label14: TLabel;
    e_adadi: TsuiEdit;
    G_kasri: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    e_makhraj: TsuiEdit;
    e_sorat: TsuiEdit;
    e_zarib: TsuiEdit;
    Label5: TLabel;
    l_tedad_sahme_abe_ashari: TLabel;
    procedure e_searchChange(Sender: TObject);
    procedure e_tedad_entegalKeyPress(Sender: TObject; var Key: Char);
    procedure BtClick(Sender: TObject);
    function check_exist_shkhs_tedede_kol_sahm:boolean;
    procedure insert_automatic_into_temp_avale_koli;
    procedure FormShow(Sender: TObject);
    procedure e_adadiChange(Sender: TObject);
    procedure e_adadiExit(Sender: TObject);
    procedure e_adadiKeyPress(Sender: TObject; var Key: Char);
    procedure e_soratChange(Sender: TObject);
    procedure e_zaribChange(Sender: TObject);
    procedure e_makhrajChange(Sender: TObject);
    procedure e_soratKeyPress(Sender: TObject; var Key: Char);
    procedure e_makhrajKeyPress(Sender: TObject; var Key: Char);
    procedure e_zaribKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure typ_tedade_sahm;
    procedure kasri_to_ashari;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian: Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian;

implementation

uses unt_Dm_koli, unt_data_input;

{$R *.dfm}

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.kasri_to_ashari;
var zarib,soret,makhraj:real;
begin
 if (e_zarib.Text='')or(e_zarib.Text='0') then
  zarib:=0
 else
  zarib:=StrToFloat(e_zarib.Text);

 if (e_sorat.Text='')or(e_sorat.Text='0') then
  soret:=0
 else
  soret:=StrToFloat(e_sorat.Text);

 if (e_makhraj.Text='')or(e_makhraj.Text='0') then
 begin
  l_tedad_sahme_abe_ashari.Caption:=FloatToStr(zarib);
 end
 else
 begin
  makhraj:=StrToFloat(e_makhraj.Text);
  l_tedad_sahme_abe_ashari.Caption:=FloatToStr(zarib+(soret/makhraj));
 end;

end;


procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.typ_tedade_sahm;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    e_sorat.Clear;
    e_makhraj.Clear;
    e_zarib.Clear;
    G_kasri.Visible:=true;
    G_adadi.Visible:=false;
    l_tedad_sahme_abe_ashari.Caption:='';
  end
  else
  begin
    e_adadi.Clear;
    e_sorat.Clear;
    e_makhraj.Clear;
    e_zarib.Clear;    
    G_kasri.Visible:=false;
    G_adadi.Visible:=true;
    l_tedad_sahme_abe_ashari.Caption:='';    
  end;
end;



procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.insert_automatic_into_temp_avale_koli;
var remain_sahm,add_sahm:real;
begin
  remain_sahm:=StrToFloat(l_tedad_sahme_abe_ashari.Caption);

  Dm_koli.ADOQ_automatic_select_for_na_moaian.sql.Text:='select cod_shakhs,family,name,sh_parvande,tedade_sahme_ashari,'+
  'cod_reshteei,name_pedar,id  from t_sahamdaran where cod_shakhs='+Dm_koli.ADOQ_jame_kole_sahme_ab_barye_namoiancod_shakhs.AsString+
   ' and tedade_sahme_ashari >0 and noe_entegal<>'+QuotedStr('Êﬁ›')+' order by tedade_sahme_ashari';
  Dm_koli.ADOQ_automatic_select_for_na_moaian.Open;

  Dm_koli.ADOQ_automatic_select_for_na_moaian.First;

  add_sahm:=0;
  while (remain_sahm > 0) and (not Dm_koli.ADOQ_automatic_select_for_na_moaian.Eof) do
  begin
    if Dm_koli.ADOQ_automatic_select_for_na_moaiantedade_sahme_ashari.AsFloat <= remain_sahm then
    begin

      remain_sahm:=remain_sahm-Dm_koli.ADOQ_automatic_select_for_na_moaiantedade_sahme_ashari.AsFloat;
      add_sahm:=add_sahm+Dm_koli.ADOQ_automatic_select_for_na_moaiantedade_sahme_ashari.AsFloat;

      Dm_koli.ADOQ_temp_avale_koli_namoian.SQL.Text:='insert into t_temp_aval_dar_koli_namoian(noe_entegal,cod_shakhs,family,name,sh_parvande,tedade_sahme_ashari,cod_reshteei,name_pedar,id_dar_sahamdaran)'+
      ' values('+QuotedStr(ComboBox1.Text)+','+
      Dm_koli.ADOQ_automatic_select_for_na_moaiancod_shakhs.AsString+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaianfamily.AsString)+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaianname.AsString)+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaiansh_parvande.AsString)+','+
      Dm_koli.ADOQ_automatic_select_for_na_moaiantedade_sahme_ashari.AsString+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaiancod_reshteei.AsString)+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaianname_pedar.AsString)+','+
      Dm_koli.ADOQ_automatic_select_for_na_moaianid.AsString+')';
      Dm_koli.ADOQ_temp_avale_koli_namoian.ExecSQL;

      Dm_koli.ADOQ_automatic_select_for_na_moaian.Next;
    end
    else
    begin
      Dm_koli.ADOQ_temp_avale_koli_namoian.SQL.Text:='insert into t_temp_aval_dar_koli_namoian(noe_entegal,cod_shakhs,family,name,sh_parvande,tedade_sahme_ashari,cod_reshteei,name_pedar,id_dar_sahamdaran)'+
      ' values('+QuotedStr(ComboBox1.Text)+','+
      Dm_koli.ADOQ_automatic_select_for_na_moaiancod_shakhs.AsString+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaianfamily.AsString)+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaianname.AsString)+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaiansh_parvande.AsString)+','+
      FloatToStr(remain_sahm)+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaiancod_reshteei.AsString)+','+
      QuotedStr(Dm_koli.ADOQ_automatic_select_for_na_moaianname_pedar.AsString)+','+
      Dm_koli.ADOQ_automatic_select_for_na_moaianid.AsString+')';
      Dm_koli.ADOQ_temp_avale_koli_namoian.ExecSQL;

      remain_sahm:=0;
    end;
  end;

  Dm_koli.ADOQ_temp_avale_koli_namoian.SQL.Text:='select * from t_temp_aval_dar_koli_namoian order by id';
  Dm_koli.ADOQ_temp_avale_koli_namoian.Open;  
end;

function Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.check_exist_shkhs_tedede_kol_sahm:boolean;
begin
  check_exist_shkhs_tedede_kol_sahm:=false;
  Dm_koli.ADOQ_temp_avale_koli_namoian.SQL.Text:='select * from t_temp_aval_dar_koli_namoian ';
  {
   where cod_shakhs='+Dm_koli.ADOQ_temp_avale_koli_namoiancod_shakhs.AsString+
  ' and sh_parvande='+QuotedStr(Dm_koli.ADOQ_temp_avale_koli_namoiansh_parvande.AsString)+' and tedade_sahme_ashari='+l_tedad_sahme_abe_ashari.Caption;}
  
  Dm_koli.ADOQ_temp_avale_koli_namoian.Open;

  if Dm_koli.ADOQ_temp_avale_koli_namoian.RecordCount > 0 then
     check_exist_shkhs_tedede_kol_sahm:=true;
end;


procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_searchChange(
  Sender: TObject);
begin
  Dm_koli.ADOQ_jame_kole_sahme_ab_barye_namoian.Locate('family',e_search.Text,[loPartialKey]);
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_tedad_entegalKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.BtClick(
  Sender: TObject);
begin
if ComboBox1.Text='' then
    MessageBox(Handle,'‰Ê⁄ «‰ ﬁ«· Ê«—œ ‰‘œÂ «” ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin

  if l_tedad_sahme_abe_ashari.Caption='' then
    l_tedad_sahme_abe_ashari.Caption:='0';
  if (l_tedad_sahme_abe_ashari.Caption='0') then
  begin
    if RadioGroup1.ItemIndex=1 then
      e_adadi.SetFocus
    else
      e_zarib.SetFocus;

    MessageBox(Handle,' ⁄œ«œ ”Â„ «‰ ﬁ«·Ì «“ ‘Œ’ «‰ Œ«»Ì —« Ê«—œ ‰„«ÌÌœ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
  begin
    if StrToFloat(l_tedad_sahme_abe_ashari.Caption)>Dm_koli.ADOQ_jame_kole_sahme_ab_barye_namoiankol_.AsFloat then
    begin
    if RadioGroup1.ItemIndex=1 then
      e_adadi.SetFocus
    else
      e_zarib.SetFocus;

      MessageBox(Handle,' ⁄œ«œ ”Â„ ¬» Ê«—œ ‘œÂ »—«Ì «‰ ﬁ«· »Ì‘ — «“  ⁄œ«œ ò· ”Â„ ¬» „—»Êÿ »Â ‘Œ’ «‰ Œ«» ‘œÂ „Ì »«‘œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end
    else
    begin
      if not check_exist_shkhs_tedede_kol_sahm then
      begin
        insert_automatic_into_temp_avale_koli;
        Dm_koli.ADOQ_temp_avale_koli_namoian.SQL.Text:='select * from t_temp_aval_dar_koli_namoian order by id';
        Dm_koli.ADOQ_temp_avale_koli_namoian.Open;
        Close;
      end
      else
        MessageBox(Handle,' ⁄œ«œ ”Â„ ¬» «‰ Œ«»Ì »Â ’Ê—  « Ê„« Ìò «“ Å—Ê‰œÂ Â«Ì „Œ ·› «‰ Œ«» ‘œÂ «” ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
  end;
end;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.FormShow(
  Sender: TObject);
begin
   Dm_koli.ADOQ_jame_kole_sahme_ab_barye_namoian.SQL.Text:='select cod_shakhs,family,name,name_pedar'+
   ',sum(tedade_sahme_ashari-somn)as kol_'+
   ' from t_sahamdaran where noe_entegal<>'+QuotedStr(trim('Êﬁ›'))+
   ' group by cod_shakhs,family,name,name_pedar order by family,name';
   Dm_koli.ADOQ_jame_kole_sahme_ab_barye_namoian.Open;
   
   e_search.Clear;
   l_tedad_sahme_abe_ashari.Caption:='';
   e_sorat.Clear;
   e_zarib.Clear;
   e_makhraj.Clear;
   e_adadi.Clear;
   RadioGroup1.ItemIndex:=0;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_adadiChange(
  Sender: TObject);
begin
  if frm_data_input.check_ashar(e_adadi.Text) then
    l_tedad_sahme_abe_ashari.Caption:=e_adadi.Text
  else
    begin
      e_adadi.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_adadiExit(
  Sender: TObject);
begin
  if frm_data_input.check_ashar(e_adadi.Text) then
    l_tedad_sahme_abe_ashari.Caption:=e_adadi.Text
  else
    begin
      e_adadi.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_adadiKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_soratChange(
  Sender: TObject);
begin
kasri_to_ashari;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_zaribChange(
  Sender: TObject);
begin
  if frm_data_input.check_ashar(e_zarib.Text) then
  begin
      kasri_to_ashari;
  end
  else
    begin
      e_zarib.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_makhrajChange(
  Sender: TObject);
begin
  kasri_to_ashari;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_soratKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_makhrajKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.e_zaribKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_show_jame_sahme_har_shakhs_beraye_entekhabe_namoaian.RadioGroup1Click(
  Sender: TObject);
begin
  typ_tedade_sahm;
end;

end.
