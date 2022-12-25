unit unt_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDm = class(TDataModule)
    ADOQ_find_sh_goroh_nafare_aval: TADOQuery;
    ADOQ_find_sh_goroh_nafare_avalid_nafarate_aval: TIntegerField;
    ADOQ_show_nafarate_avale_har_goroh: TADOQuery;
    ADOQ_show_afrad: TADOQuery;
    ADOQ_show_nafarat_baraye_dadane_sahm: TADOQuery;
    ADOQ_show_nafarate_avale_har_gorohsh_radife_koli_nafare_aval: TIntegerField;
    ADOQ_show_nafarate_avale_har_gorohname: TWideStringField;
    ADOQ_show_nafarate_avale_har_gorohfamily: TWideStringField;
    ADOQ_show_nafarate_avale_har_gorohtedade_sahme_ashari_avalie: TFloatField;
    ADOQ_show_nafarate_avale_har_gorohtarikh: TWideStringField;
    ADOQ_show_afrade_mojod: TADOQuery;
    ADOQ_get_akharin_cod: TADOQuery;
    ADOQ_get_akharin_codakharin_cod: TIntegerField;
    ADOQ_show_afrade_mojodname: TWideStringField;
    ADOQ_show_afrade_mojodfamily: TWideStringField;
    ADOQ_show_afrade_mojodname_pedar: TWideStringField;
    ADOQ_show_afrade_mojodsh_sh: TWideStringField;
    ADOQ_show_afrade_mojodcod_reshte: TWideStringField;
    ADOQ_show_afrade_mojodid: TAutoIncField;
    ADOQ_show_afrade_mojodcod: TIntegerField;
    ADOQ_show_afrade_mojodnafare_aval: TWideStringField;
    ADOQ_show_tempe_entegal: TADOQuery;
    ADOQ_show_entegale_mostagim: TADOQuery;
    ADOQ_show_entegale_mostagimsh_parvande: TWideStringField;
    ADOQ_show_entegale_mostagimname: TWideStringField;
    ADOQ_show_entegale_mostagimfamily: TWideStringField;
    ADOQ_show_entegale_mostagimtedade_sahme_ashari: TFloatField;
    ADOQ_show_entegale_mostagimid: TAutoIncField;
    ADOQ_show_entegale_mostagimcod_reshteei: TMemoField;
    ADOQ_show_entegale_mostagimtarikh: TWideStringField;
    ADOQ_show_entegale_mostagimname_pedar: TWideStringField;
    ADOQ_show_entegale_mostagimsahm_zaribe_kasr: TWideStringField;
    ADOQ_show_entegale_mostagimsahm_sorate_kasr: TWideStringField;
    ADOQ_show_entegale_mostagimsahm_makhraje_kasr: TWideStringField;
    ADOQ_show_entegale_mostagimnoe_entegal: TWideStringField;
    ADOQ_show_entegale_mostagimsh_sanade_mahzari: TWideStringField;
    ADOQ_show_entegale_mostagimsh_mahzar: TWideStringField;
    ADOQ_show_entegale_mostagimshahre_mahzar: TWideStringField;
    ADOQ_show_entegale_mostagimnafare_aval: TWideStringField;
    ADOQ_show_entegale_mostagimsh_radife_koli_nafare_aval: TIntegerField;
    ADOQ_show_entegale_mostagimid_entegal_dahande: TIntegerField;
    ADOQ_show_entegale_mostagimtedade_sahme_ashari_avalie: TFloatField;
    ADOQ_show_entegale_mostagimaz_name: TWideStringField;
    ADOQ_show_entegale_mostagimaz_family: TWideStringField;
    ADOQ_show_entegale_mostagimaz_name_pedar: TWideStringField;
    ADOQ_show_entegale_mostagimcod_shakhs: TIntegerField;
    ADOQ_for_insert_into_temp_gozaresh: TADOQuery;
    ADOQ_for_insert_into_temp_gozareshsh_parvande: TWideStringField;
    ADOQ_for_insert_into_temp_gozareshname: TWideStringField;
    ADOQ_for_insert_into_temp_gozareshfamily: TWideStringField;
    ADOQ_for_insert_into_temp_gozareshtarikh: TWideStringField;
    ADOQ_for_insert_into_temp_gozareshname_pedar: TWideStringField;
    ADOQ_for_insert_into_temp_gozareshnoe_entegal: TWideStringField;
    ADOQ_for_insert_into_temp_gozareshsh_sanade_mahzari: TWideStringField;
    ADOQ_for_insert_into_temp_gozareshtedade_sahme_ashari_avalie: TFloatField;
    ADOQ_for_insert_into_temp_gozareshaz_name: TWideStringField;
    ADOQ_for_insert_into_temp_gozareshaz_family: TWideStringField;
    ADOQ_for_insert_into_temp_gozareshaz_name_pedar: TWideStringField;
    ADOQ_show_tempe_entegalsh_parvande: TWideStringField;
    ADOQ_show_tempe_entegalname: TWideStringField;
    ADOQ_show_tempe_entegalfamily: TWideStringField;
    ADOQ_show_tempe_entegalid: TAutoIncField;
    ADOQ_show_tempe_entegaltarikh: TWideStringField;
    ADOQ_show_tempe_entegalname_pedar: TWideStringField;
    ADOQ_show_tempe_entegalnoe_entegal: TWideStringField;
    ADOQ_show_tempe_entegalsh_sanade_mahzari: TWideStringField;
    ADOQ_show_tempe_entegaltedade_sahme_ashari_avalie: TFloatField;
    ADOQ_show_tempe_entegalaz_name: TWideStringField;
    ADOQ_show_tempe_entegalaz_family: TWideStringField;
    ADOQ_show_tempe_entegalaz_name_pedar: TWideStringField;
    ADOQ_show_mianie_entegal: TADOQuery;
    ADOQ_show_mianie_entegalsh_parvande: TWideStringField;
    ADOQ_show_mianie_entegalname: TWideStringField;
    ADOQ_show_mianie_entegalfamily: TWideStringField;
    ADOQ_show_mianie_entegalid: TAutoIncField;
    ADOQ_show_mianie_entegalcod_reshteei: TMemoField;
    ADOQ_show_mianie_entegalcod_shakhs: TIntegerField;
    ADOQ_show_mianie_entegal_be: TADOQuery;
    ADOQ_show_mianie_entegal_besh_parvande: TWideStringField;
    ADOQ_show_mianie_entegal_beaz_name: TWideStringField;
    ADOQ_show_mianie_entegal_beaz_family: TWideStringField;
    ADOQ_show_mianie_entegal_beid: TAutoIncField;
    ADOQ_show_mianie_entegal_becod_reshteei: TMemoField;
    ADOQ_show_mianie_entegal_becod_shakhs: TIntegerField;
    ADOQ_show_entegale_mostagim_be: TADOQuery;
    ADOQ_show_entegale_mostagim_besh_parvande: TWideStringField;
    ADOQ_show_entegale_mostagim_bename: TWideStringField;
    ADOQ_show_entegale_mostagim_befamily: TWideStringField;
    ADOQ_show_entegale_mostagim_betedade_sahme_ashari: TFloatField;
    ADOQ_show_entegale_mostagim_beid: TAutoIncField;
    ADOQ_show_entegale_mostagim_becod_reshteei: TMemoField;
    ADOQ_show_entegale_mostagim_betarikh: TWideStringField;
    ADOQ_show_entegale_mostagim_bename_pedar: TWideStringField;
    ADOQ_show_entegale_mostagim_besahm_zaribe_kasr: TWideStringField;
    ADOQ_show_entegale_mostagim_besahm_sorate_kasr: TWideStringField;
    ADOQ_show_entegale_mostagim_besahm_makhraje_kasr: TWideStringField;
    ADOQ_show_entegale_mostagim_benoe_entegal: TWideStringField;
    ADOQ_show_entegale_mostagim_besh_sanade_mahzari: TWideStringField;
    ADOQ_show_entegale_mostagim_besh_mahzar: TWideStringField;
    ADOQ_show_entegale_mostagim_beshahre_mahzar: TWideStringField;
    ADOQ_show_entegale_mostagim_benafare_aval: TWideStringField;
    ADOQ_show_entegale_mostagim_besh_radife_koli_nafare_aval: TIntegerField;
    ADOQ_show_entegale_mostagim_beid_entegal_dahande: TIntegerField;
    ADOQ_show_entegale_mostagim_betedade_sahme_ashari_avalie: TFloatField;
    ADOQ_show_entegale_mostagim_beaz_name: TWideStringField;
    ADOQ_show_entegale_mostagim_beaz_family: TWideStringField;
    ADOQ_show_entegale_mostagim_beaz_name_pedar: TWideStringField;
    ADOQ_show_entegale_mostagim_becod_shakhs: TIntegerField;
    ADOQ_show_mianie_entegal_bename: TWideStringField;
    ADOQ_show_mianie_entegal_befamily: TWideStringField;
    ADOQ_show_mianie_entegal_beid_entegal_dahande: TIntegerField;
    ADOQ_jame_sahme_abe_nafarate_aval: TADOQuery;
    ADOQ_jame_sahme_abe_nafarate_avalfamily: TWideStringField;
    ADOQ_jame_sahme_abe_nafarate_avalname: TWideStringField;
    ADOQ_jame_sahme_abe_nafarate_avalname_pedar: TWideStringField;
    ADOQ_jame_sahme_abe_nafarate_avalkol_: TFloatField;
    ADOQ_jame_sahme_abe_nafarate_avalnafare_aval: TWideStringField;
    ADOQ_jame_kole_sahme_ab: TADOQuery;
    ADOQ_jame_kole_sahme_abkol_: TFloatField;
    ADOQ_show_afrade_mojodid_koli_moaian_be: TIntegerField;
    ADOQ_show_afrade_mojodid_koli_na_moaian_be: TIntegerField;
    ADOQ_show_afrade_mojod2: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    WideStringField6: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    ADOQ_komakie_hazf: TADOQuery;
    ADOQ_show_nafarat_baraye_dadane_sahmtarikh: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmsahm_zaribe_kasr: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmsahm_sorate_kasr: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmsahm_makhraje_kasr: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmfamily: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmname: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari: TFloatField;
    ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei: TMemoField;
    ADOQ_show_nafarat_baraye_dadane_sahmname_pedar: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmnafare_aval: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie: TFloatField;
    ADOQ_show_nafarat_baraye_dadane_sahmcod_shakhs: TIntegerField;
    ADOQ_show_nafarat_baraye_dadane_sahmid: TAutoIncField;
    ADOQ_show_nafarat_baraye_dadane_sahmsh_parvande: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmnoe_entegal: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmentegal_az_id: TIntegerField;
    ADOQ_show_nafarat_baraye_dadane_sahmsomn: TFloatField;
    ADOQ_show_nafarat_baraye_dadane_sahmentegale_somn: TWideStringField;
    ADOQ_show_nafarat_baraye_dadane_sahmmax_entegal: TFloatField;
    ADOQ_show_nafarat_baraye_dadane_sahmkharid_somn: TWideStringField;
    ADOQ_komakie_hazftarikh: TWideStringField;
    ADOQ_komakie_hazffamily: TWideStringField;
    ADOQ_komakie_hazfname: TWideStringField;
    ADOQ_komakie_hazftedade_sahme_ashari: TFloatField;
    ADOQ_komakie_hazfnoe_entegal: TWideStringField;
    ADOQ_komakie_hazfname_pedar: TWideStringField;
    ADOQ_komakie_hazftedade_sahme_ashari_avalie: TFloatField;
    ADOQ_komakie_hazfsh_parvande: TWideStringField;
    ADOQ_komakie_hazfsomn: TFloatField;
    ADOQ_komakie_hazfentegale_somn: TWideStringField;
    ADOQ_komakie_hazfmax_entegal: TFloatField;
    ADOQ_komakie_hazfkharid_somn: TWideStringField;
    ADOQ_show_afradtarikh: TWideStringField;
    ADOQ_show_afradfamily: TWideStringField;
    ADOQ_show_afradname: TWideStringField;
    ADOQ_show_afradtedade_sahme_ashari: TFloatField;
    ADOQ_show_afradnoe_entegal: TWideStringField;
    ADOQ_show_afradname_pedar: TWideStringField;
    ADOQ_show_afradtedade_sahme_ashari_avalie: TFloatField;
    ADOQ_show_afradsh_parvande: TWideStringField;
    ADOQ_show_afradsomn: TFloatField;
    ADOQ_show_afradentegale_somn: TWideStringField;
    ADOQ_show_afradmax_entegal: TFloatField;
    ADOQ_show_afradkharid_somn: TWideStringField;
    ADOQ_show_afradcod_reshteei: TMemoField;
    ADOQ_show_afradentegal_az_id: TIntegerField;
    ADOQ_show_afradid: TAutoIncField;
    procedure ADOQ_show_nafarat_baraye_dadane_sahmAfterScroll(
      DataSet: TDataSet);
    procedure ADOQ_show_entegale_mostagimAfterScroll(DataSet: TDataSet);
    procedure ADOQ_show_afrade_mojodAfterScroll(DataSet: TDataSet);
    procedure ADOQ_show_afradAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

uses unt_main, unt_vorode_dovom_be_bad, unt_trace_entegal,
  unt_vorode_moshakhasat, unt_eslahe_shakhs, unt_eslahe_sahme_nafare_aval,
  SUIEdit, unt_show_exist_entegal, unt_hazfe_sahme_abe_nafare_aval,
  unt_sabte_somne_zan;

{$R *.dfm}

procedure TDm.ADOQ_show_nafarat_baraye_dadane_sahmAfterScroll(
  DataSet: TDataSet);
var s:string;
  begin
  if (frm_hazfe_sahme_abe_nafare_aval<>nil)and(frm_hazfe_sahme_abe_nafare_aval.Showing)then
  begin
    frm_hazfe_sahme_abe_nafare_aval.l_id.Caption:=ADOQ_show_nafarat_baraye_dadane_sahmid.AsString;
  end;

  if (frm_eslahe_sahme_nafare_aval<>nil)and(frm_eslahe_sahme_nafare_aval.Showing) then
  begin
    frm_eslahe_sahme_nafare_aval.CheckBox1.Checked:=false;
    frm_eslahe_sahme_nafare_aval.l_id.Caption:=ADOQ_show_nafarat_baraye_dadane_sahmid.AsString;
    s:=ADOQ_show_nafarat_baraye_dadane_sahmtarikh.AsString;
    frm_eslahe_sahme_nafare_aval.e_sh_parvande.Text:=ADOQ_show_nafarat_baraye_dadane_sahmsh_parvande.AsString;

    if ADOQ_show_nafarat_baraye_dadane_sahmnoe_entegal.AsString='цон' then
      frm_eslahe_sahme_nafare_aval.CheckBox1.Checked:=true
    else
      frm_eslahe_sahme_nafare_aval.CheckBox1.Checked:=false;

    if s<>'' then
    begin
      frm_eslahe_sahme_nafare_aval.e_roz.Text:=s[9]+s[10];
      frm_eslahe_sahme_nafare_aval.e_mah.Text:=s[6]+s[7];
      frm_eslahe_sahme_nafare_aval.e_sal.Text:=s[1]+s[2]+s[3]+s[4];
    end
    else
    begin
      frm_eslahe_sahme_nafare_aval.e_roz.Clear;
      frm_eslahe_sahme_nafare_aval.e_mah.Clear;
      frm_eslahe_sahme_nafare_aval.e_sal.Clear;
    end;

    if ADOQ_show_nafarat_baraye_dadane_sahmsahm_makhraje_kasr.AsString='' then
    begin
      frm_eslahe_sahme_nafare_aval.RadioGroup1.ItemIndex:=1;
      frm_eslahe_sahme_nafare_aval.e_zarib.Clear;
      frm_eslahe_sahme_nafare_aval.e_sorat.Clear;
      frm_eslahe_sahme_nafare_aval.e_makhraj.Clear;
      frm_eslahe_sahme_nafare_aval.e_adadi.Text:=ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsString;
      frm_eslahe_sahme_nafare_aval.l_tedad_sahme_abe_ashari.Caption:=ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsString;
    end
    else
    begin
      frm_eslahe_sahme_nafare_aval.RadioGroup1.ItemIndex:=0;
      frm_eslahe_sahme_nafare_aval.e_zarib.Text:=ADOQ_show_nafarat_baraye_dadane_sahmsahm_zaribe_kasr.AsString;
      frm_eslahe_sahme_nafare_aval.e_sorat.Text:=ADOQ_show_nafarat_baraye_dadane_sahmsahm_sorate_kasr.AsString;
      frm_eslahe_sahme_nafare_aval.e_makhraj.Text:=ADOQ_show_nafarat_baraye_dadane_sahmsahm_makhraje_kasr.AsString;
      frm_eslahe_sahme_nafare_aval.e_adadi.Text:=ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsString;
      frm_eslahe_sahme_nafare_aval.l_tedad_sahme_abe_ashari.Caption:=ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsString;            
    end;

  end;


  if (frm_sabte_somne_zan<>nil)and(frm_sabte_somne_zan.Showing)then
  begin
    frm_sabte_somne_zan.l_tedad_sahme_abe_ashari.Caption:=ADOQ_show_nafarat_baraye_dadane_sahmsomn.AsString;
  end;
end;



procedure TDm.ADOQ_show_entegale_mostagimAfterScroll(DataSet: TDataSet);
begin
 if frm_trace_entegal<>nil then
 begin
  {frm_trace_entegal.id_entegal:=ADOQ_show_entegale_mostagimid.AsString;

  Dm.ADOQ_for_insert_into_temp_gozaresh.SQL.Text:='select sh_parvande,name,family,tarikh,'+
  'name_pedar,noe_entegal,sh_sanade_mahzari,tedade_sahme_ashari_avalie,az_name,az_family,az_name_pedar'+
  ' from t_sahamdaran where id='+frm_trace_entegal.id_entegal;
  Dm.ADOQ_for_insert_into_temp_gozaresh.Open;

  frm_trace_entegal.name:=Dm.ADOQ_for_insert_into_temp_gozareshname.AsString;
  frm_trace_entegal.family:=Dm.ADOQ_for_insert_into_temp_gozareshfamily.AsString;
  frm_trace_entegal.sh_parvande:=Dm.ADOQ_for_insert_into_temp_gozareshsh_parvande.AsString;
  frm_trace_entegal.tarikh:=Dm.ADOQ_for_insert_into_temp_gozareshtarikh.AsString;
  frm_trace_entegal.name_pedar:=Dm.ADOQ_for_insert_into_temp_gozareshname_pedar.AsString;
  frm_trace_entegal.noe_entegal:=Dm.ADOQ_for_insert_into_temp_gozareshnoe_entegal.AsString;
  frm_trace_entegal.sh_sanade_mahzari:=Dm.ADOQ_for_insert_into_temp_gozareshsh_sanade_mahzari.AsString;
  frm_trace_entegal.tedade_sahme_ashari_avalie:=Dm.ADOQ_for_insert_into_temp_gozareshtedade_sahme_ashari_avalie.AsString;}

 end;
end;

procedure TDm.ADOQ_show_afrade_mojodAfterScroll(DataSet: TDataSet);
begin
  if (frm_vorode_moshakhasat<>nil)and(frm_vorode_moshakhasat.Showing)then
  begin
    if ADOQ_show_afrade_mojodname.AsString<>'' then
    begin
      frm_eslahe_shakhs.RadioGroup1.ItemIndex:=0;
      frm_eslahe_shakhs.RadioGroup1.ItemIndex:=0;

      frm_eslahe_shakhs.l_code.Caption:=ADOQ_show_afrade_mojodcod.AsString;

      frm_eslahe_shakhs.e_name.Text:=ADOQ_show_afrade_mojodname.AsString;
      frm_eslahe_shakhs.l_az_name.Caption:=ADOQ_show_afrade_mojodname.AsString;

      frm_eslahe_shakhs.e_family.Text:=ADOQ_show_afrade_mojodfamily.AsString;
      frm_eslahe_shakhs.l_az_family.Caption:=ADOQ_show_afrade_mojodfamily.AsString;

      frm_eslahe_shakhs.e_pedar.Text:=ADOQ_show_afrade_mojodname_pedar.AsString;
      frm_eslahe_shakhs.l_az_name_pedar.Caption:=ADOQ_show_afrade_mojodname_pedar.AsString;

      frm_eslahe_shakhs.e_sh_sh.Text:=ADOQ_show_afrade_mojodsh_sh.AsString;

      frm_eslahe_shakhs.e_hoseinie.Text:='';      

      frm_eslahe_shakhs.GroupBox1.Visible:=false;
    end
    else
    begin
      frm_eslahe_shakhs.RadioGroup1.ItemIndex:=1;
      frm_eslahe_shakhs.RadioGroup1.ItemIndex:=1;           

      frm_eslahe_shakhs.e_hoseinie.Text:=ADOQ_show_afrade_mojodfamily.AsString;

      frm_eslahe_shakhs.l_az_family.Caption:=ADOQ_show_afrade_mojodfamily.AsString;
      frm_eslahe_shakhs.l_az_name_pedar.Caption:=ADOQ_show_afrade_mojodname_pedar.AsString;
      frm_eslahe_shakhs.l_az_name.Caption:=ADOQ_show_afrade_mojodname.AsString;      

      frm_eslahe_shakhs.l_code.Caption:=ADOQ_show_afrade_mojodcod.AsString;

      frm_eslahe_shakhs.e_pedar.Text:=ADOQ_show_afrade_mojodname_pedar.AsString;
      frm_eslahe_shakhs.e_sh_sh.Text:=ADOQ_show_afrade_mojodsh_sh.AsString;
      frm_eslahe_shakhs.e_name.Text:=ADOQ_show_afrade_mojodname.AsString;
      frm_eslahe_shakhs.e_family.Text:='';

     frm_eslahe_shakhs.GroupBox1.Visible:=true;
    end;



  end;
end;

procedure TDm.ADOQ_show_afradAfterScroll(DataSet: TDataSet);
begin
  if frm_show_exist_entegal<> nil then
  begin
      frm_show_exist_entegal.L_code_reshteie_feli.Caption:=Dm.ADOQ_show_afradcod_reshteei.AsString;  
  end;
end;

end.
