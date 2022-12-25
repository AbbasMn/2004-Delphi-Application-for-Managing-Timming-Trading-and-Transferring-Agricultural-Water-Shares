unit unt_Dm_eslah;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDm_eslah = class(TDataModule)
    ADOQ_show_entegalha: TADOQuery;
    ADOQ_show_entegalha2: TADOQuery;
    ADOQ_show_entegalhash_parvande: TWideStringField;
    ADOQ_show_entegalhaname: TWideStringField;
    ADOQ_show_entegalhafamily: TWideStringField;
    ADOQ_show_entegalhatedade_sahme_ashari: TFloatField;
    ADOQ_show_entegalhaid: TAutoIncField;
    ADOQ_show_entegalhacod_reshteei: TMemoField;
    ADOQ_show_entegalhatarikh: TWideStringField;
    ADOQ_show_entegalhaname_pedar: TWideStringField;
    ADOQ_show_entegalhasahm_zaribe_kasr: TWideStringField;
    ADOQ_show_entegalhasahm_sorate_kasr: TWideStringField;
    ADOQ_show_entegalhasahm_makhraje_kasr: TWideStringField;
    ADOQ_show_entegalhanoe_entegal: TWideStringField;
    ADOQ_show_entegalhash_sanade_mahzari: TWideStringField;
    ADOQ_show_entegalhash_mahzar: TWideStringField;
    ADOQ_show_entegalhashahre_mahzar: TWideStringField;
    ADOQ_show_entegalhanafare_aval: TWideStringField;
    ADOQ_show_entegalhash_radife_koli_nafare_aval: TIntegerField;
    ADOQ_show_entegalhaid_entegal_dahande: TIntegerField;
    ADOQ_show_entegalhatedade_sahme_ashari_avalie: TFloatField;
    ADOQ_show_entegalhaaz_name: TWideStringField;
    ADOQ_show_entegalhaaz_family: TWideStringField;
    ADOQ_show_entegalhaaz_name_pedar: TWideStringField;
    ADOQ_show_entegalhacod_shakhs: TIntegerField;
    ADOQ_show_entegalhakoli: TWideStringField;
    ADOQ_show_entegalhaid_koli_moaian_be: TIntegerField;
    ADOQ_show_entegalhaid_koli_na_moaian_be: TIntegerField;
    ADOQ_show_entegalhaentegal_az_id: TIntegerField;
    ADOQ_show_entegalhasomn: TFloatField;
    ADOQ_show_entegalhatozihe_somn: TWideStringField;
    ADOQ_show_entegalhaentegale_somn: TWideStringField;
    ADOQ_show_entegalhakharid_somn: TWideStringField;
    ADOQ_show_entegalha2sh_parvande: TWideStringField;
    ADOQ_show_entegalha2name: TWideStringField;
    ADOQ_show_entegalha2family: TWideStringField;
    ADOQ_show_entegalha2tedade_sahme_ashari: TFloatField;
    ADOQ_show_entegalha2id: TAutoIncField;
    ADOQ_show_entegalha2cod_reshteei: TMemoField;
    ADOQ_show_entegalha2tarikh: TWideStringField;
    ADOQ_show_entegalha2name_pedar: TWideStringField;
    ADOQ_show_entegalha2sahm_zaribe_kasr: TWideStringField;
    ADOQ_show_entegalha2sahm_sorate_kasr: TWideStringField;
    ADOQ_show_entegalha2sahm_makhraje_kasr: TWideStringField;
    ADOQ_show_entegalha2noe_entegal: TWideStringField;
    ADOQ_show_entegalha2sh_sanade_mahzari: TWideStringField;
    ADOQ_show_entegalha2sh_mahzar: TWideStringField;
    ADOQ_show_entegalha2shahre_mahzar: TWideStringField;
    ADOQ_show_entegalha2nafare_aval: TWideStringField;
    ADOQ_show_entegalha2sh_radife_koli_nafare_aval: TIntegerField;
    ADOQ_show_entegalha2id_entegal_dahande: TIntegerField;
    ADOQ_show_entegalha2tedade_sahme_ashari_avalie: TFloatField;
    ADOQ_show_entegalha2az_name: TWideStringField;
    ADOQ_show_entegalha2az_family: TWideStringField;
    ADOQ_show_entegalha2az_name_pedar: TWideStringField;
    ADOQ_show_entegalha2cod_shakhs: TIntegerField;
    ADOQ_show_entegalha2koli: TWideStringField;
    ADOQ_show_entegalha2id_koli_moaian_be: TIntegerField;
    ADOQ_show_entegalha2id_koli_na_moaian_be: TIntegerField;
    ADOQ_show_entegalha2entegal_az_id: TIntegerField;
    ADOQ_show_entegalha2somn: TFloatField;
    ADOQ_show_entegalha2tozihe_somn: TWideStringField;
    ADOQ_show_entegalha2entegale_somn: TWideStringField;
    ADOQ_show_entegalha2kharid_somn: TWideStringField;
    procedure ADOQ_show_entegalhaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm_eslah: TDm_eslah;

implementation

uses unt_main, unt_eslahe_sahme_abe_geire_aval,
  unt_hazfe_sahme_abe_nafare_geire_aval;

{$R *.dfm}



procedure TDm_eslah.ADOQ_show_entegalhaAfterScroll(DataSet: TDataSet);
var s:string;
begin
  if (frm_hazfe_sahme_abe_nafare_geire_aval<>nil)and(frm_hazfe_sahme_abe_nafare_geire_aval.Showing) then
  begin

  end;

  if (frm_eslahe_sahme_abe_geire_aval<>nil)and(frm_eslahe_sahme_abe_geire_aval.Showing) then
  begin
    frm_eslahe_sahme_abe_geire_aval.CheckBox1.Checked:=false;

    frm_eslahe_sahme_abe_geire_aval.l_id.Caption:=ADOQ_show_entegalhaid.AsString;
    frm_eslahe_sahme_abe_geire_aval.l_entegal_az_id.Caption:=ADOQ_show_entegalhaentegal_az_id.AsString;

    s:=ADOQ_show_entegalhatarikh.AsString;
    frm_eslahe_sahme_abe_geire_aval.e_sh_parvande.Text:=ADOQ_show_entegalhash_parvande.AsString;

    ///////////
     frm_eslahe_sahme_abe_geire_aval.e_sh_mahzar.Text:=ADOQ_show_entegalhash_mahzar.AsString;
     frm_eslahe_sahme_abe_geire_aval.e_shahre_mahzar.Text:=ADOQ_show_entegalhashahre_mahzar.AsString;
     frm_eslahe_sahme_abe_geire_aval.e_sh_sanade_sabti.Text:=ADOQ_show_entegalhash_sanade_mahzari.AsString;

    ///////////
    if s<>'' then
    begin
      if (ADOQ_show_entegalhash_sanade_mahzari.AsString<>'') or(ADOQ_show_entegalhash_mahzar.AsString<>'') then
      begin
        frm_eslahe_sahme_abe_geire_aval.RadioGroup2.ItemIndex:=0;
        frm_eslahe_sahme_abe_geire_aval.e_roz_mahzar.Text:=s[9]+s[10];
        frm_eslahe_sahme_abe_geire_aval.e_mah_mahzar.Text:=s[6]+s[7];
        frm_eslahe_sahme_abe_geire_aval.e_sal_mahzar.Text:=s[1]+s[2]+s[3]+s[4];

        frm_eslahe_sahme_abe_geire_aval.e_roz.Clear;
        frm_eslahe_sahme_abe_geire_aval.e_mah.Clear;
        frm_eslahe_sahme_abe_geire_aval.e_sal.Clear;
      end
      else
      begin
        frm_eslahe_sahme_abe_geire_aval.RadioGroup2.ItemIndex:=1;
        frm_eslahe_sahme_abe_geire_aval.e_roz.Text:=s[9]+s[10];
        frm_eslahe_sahme_abe_geire_aval.e_mah.Text:=s[6]+s[7];
        frm_eslahe_sahme_abe_geire_aval.e_sal.Text:=s[1]+s[2]+s[3]+s[4];

        frm_eslahe_sahme_abe_geire_aval.e_roz_mahzar.Clear;
        frm_eslahe_sahme_abe_geire_aval.e_mah_mahzar.Clear;
        frm_eslahe_sahme_abe_geire_aval.e_sal_mahzar.Clear;
      end;
    end
    else
    begin
      frm_eslahe_sahme_abe_geire_aval.e_roz.Clear;
      frm_eslahe_sahme_abe_geire_aval.e_mah.Clear;
      frm_eslahe_sahme_abe_geire_aval.e_sal.Clear;

      frm_eslahe_sahme_abe_geire_aval.e_roz_mahzar.Clear;
      frm_eslahe_sahme_abe_geire_aval.e_mah_mahzar.Clear;
      frm_eslahe_sahme_abe_geire_aval.e_sal_mahzar.Clear;
    end;

    if ADOQ_show_entegalhasahm_makhraje_kasr.AsString='' then
    begin
      frm_eslahe_sahme_abe_geire_aval.RadioGroup1.ItemIndex:=1;
      frm_eslahe_sahme_abe_geire_aval.e_zarib.Clear;
      frm_eslahe_sahme_abe_geire_aval.e_sorat.Clear;
      frm_eslahe_sahme_abe_geire_aval.e_makhraj.Clear;
      frm_eslahe_sahme_abe_geire_aval.e_adadi.Text:=ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsString;
      frm_eslahe_sahme_abe_geire_aval.l_tedad_sahme_abe_ashari.Caption:=ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsString;
    end
    else
    begin
      frm_eslahe_sahme_abe_geire_aval.RadioGroup1.ItemIndex:=0;
      frm_eslahe_sahme_abe_geire_aval.e_zarib.Text:=ADOQ_show_entegalhasahm_zaribe_kasr.AsString;
      frm_eslahe_sahme_abe_geire_aval.e_sorat.Text:=ADOQ_show_entegalhasahm_sorate_kasr.AsString;
      frm_eslahe_sahme_abe_geire_aval.e_makhraj.Text:=ADOQ_show_entegalhasahm_makhraje_kasr.AsString;
      frm_eslahe_sahme_abe_geire_aval.e_adadi.Text:=ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsString;
      frm_eslahe_sahme_abe_geire_aval.l_tedad_sahme_abe_ashari.Caption:=ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsString;            
    end;
  end;

end;

end.
