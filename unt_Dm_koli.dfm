object Dm_koli: TDm_koli
  OldCreateOrder = False
  Left = 348
  Top = 215
  Height = 384
  Width = 598
  object ADOQ_dahande_dar_koli: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  family,name,tedade_sahme_ashari,'
      'cod_reshteei,name_pedar,nafare_aval,tedade_sahme_ashari_avalie'
      ',cod_shakhs,id,sh_parvande,noe_entegal,sh_sanade_mahzari,'
      'somn,(tedade_sahme_ashari-somn) as max_entegal'
      'from t_sahamdaran')
    Left = 280
    Top = 16
    object ADOQ_dahande_dar_kolifamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_dahande_dar_koliname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_dahande_dar_kolitedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_dahande_dar_kolicod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_dahande_dar_koliname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_dahande_dar_kolinafare_aval: TWideStringField
      FieldName = 'nafare_aval'
      Size = 10
    end
    object ADOQ_dahande_dar_kolitedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_dahande_dar_kolicod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_dahande_dar_koliid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_dahande_dar_kolish_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_dahande_dar_kolinoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_dahande_dar_kolish_sanade_mahzari: TWideStringField
      FieldName = 'sh_sanade_mahzari'
      Size = 15
    end
    object ADOQ_dahande_dar_kolisomn: TFloatField
      FieldName = 'somn'
    end
    object ADOQ_dahande_dar_kolimax_entegal: TFloatField
      FieldName = 'max_entegal'
      ReadOnly = True
    end
  end
  object ADOQ_temp_avale_koli: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_temp_aval_dar_koli')
    Left = 448
    Top = 16
    object ADOQ_temp_avale_kolicod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_temp_avale_kolifamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_temp_avale_koliname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_temp_avale_kolish_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_temp_avale_kolitedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_temp_avale_koliid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_temp_avale_kolicod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_temp_avale_koliname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_temp_avale_koliid_dar_sahamdaran: TIntegerField
      FieldName = 'id_dar_sahamdaran'
    end
    object ADOQ_temp_avale_kolinoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_temp_avale_kolisahm_zaribe_kasr: TWideStringField
      FieldName = 'sahm_zaribe_kasr'
      Size = 3
    end
    object ADOQ_temp_avale_kolisahm_sorate_kasr: TWideStringField
      FieldName = 'sahm_sorate_kasr'
      Size = 3
    end
    object ADOQ_temp_avale_kolisahm_makhraje_kasr: TWideStringField
      FieldName = 'sahm_makhraje_kasr'
      Size = 3
    end
  end
  object ADOQ_jame_kole_sahme_ab_barye_namoian: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      
        'cod_shakhs,family,name,name_pedar,sum(tedade_sahme_ashari-somn) ' +
        'as kol_'
      ''
      'from t_sahamdaran'
      ''
      'group by cod_shakhs,family,name,name_pedar '
      ''
      ''
      ''
      '')
    Left = 80
    Top = 16
    object ADOQ_jame_kole_sahme_ab_barye_namoiankol_: TFloatField
      FieldName = 'kol_'
    end
    object ADOQ_jame_kole_sahme_ab_barye_namoianfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_jame_kole_sahme_ab_barye_namoianname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_jame_kole_sahme_ab_barye_namoianname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_jame_kole_sahme_ab_barye_namoiancod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
  end
  object ADOQ_temp_avale_koli_namoian: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_temp_aval_dar_koli_namoian')
    Left = 448
    Top = 96
    object ADOQ_temp_avale_koli_namoiancod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_temp_avale_koli_namoianfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_temp_avale_koli_namoianname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_temp_avale_koli_namoiansh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_temp_avale_koli_namoiantedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_temp_avale_koli_namoianid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_temp_avale_koli_namoiancod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_temp_avale_koli_namoianname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_temp_avale_koli_namoianid_dar_sahamdaran: TIntegerField
      FieldName = 'id_dar_sahamdaran'
    end
    object ADOQ_temp_avale_koli_namoiannoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
  end
  object ADOQ_automatic_select_for_na_moaian: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      ''
      'cod_shakhs,family,name,sh_parvande,tedade_sahme_ashari,'
      'cod_reshteei,name_pedar,id'#10
      ''
      ''
      'from t_sahamdaran')
    Left = 88
    Top = 88
    object ADOQ_automatic_select_for_na_moaiancod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_automatic_select_for_na_moaianfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_automatic_select_for_na_moaianname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_automatic_select_for_na_moaiansh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_automatic_select_for_na_moaiantedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_automatic_select_for_na_moaiancod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_automatic_select_for_na_moaianname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_automatic_select_for_na_moaianid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object ADOQ_sh_entegalhaye_koli_moaian_az: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      ''
      'id_entegal_dahande,id_koli_moaian_be,az_family,az_name,koli'
      ''
      'from t_sahamdaran'
      ''
      
        'group by  id_koli_moaian_be,az_family,az_name,koli,id_entegal_da' +
        'hande'
      ''
      'order by  id_koli_moaian_be,az_family,az_name,koli'#10
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 432
    Top = 176
    object ADOQ_sh_entegalhaye_koli_moaian_azid_koli_moaian_be: TIntegerField
      FieldName = 'id_koli_moaian_be'
    end
    object ADOQ_sh_entegalhaye_koli_moaian_azaz_family: TWideStringField
      FieldName = 'az_family'
      Size = 40
    end
    object ADOQ_sh_entegalhaye_koli_moaian_azaz_name: TWideStringField
      FieldName = 'az_name'
      Size = 40
    end
    object ADOQ_sh_entegalhaye_koli_moaian_azkoli: TWideStringField
      FieldName = 'koli'
      Size = 10
    end
    object ADOQ_sh_entegalhaye_koli_moaian_azid_entegal_dahande: TIntegerField
      FieldName = 'id_entegal_dahande'
    end
  end
  object ADOQ_sh_entegalhaye_koli_moaian_be: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      ''
      'cod_shakhs,id_koli_moaian_be,family,name,koli'
      ''
      'from t_sahamdaran'
      ''
      'group by  id_koli_moaian_be,family,name,koli,cod_shakhs'
      ''
      'order by  id_koli_moaian_be,family,name,koli,cod_shakhs'#10
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 136
    Top = 160
    object ADOQ_sh_entegalhaye_koli_moaian_becod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_sh_entegalhaye_koli_moaian_beid_koli_moaian_be: TIntegerField
      FieldName = 'id_koli_moaian_be'
    end
    object ADOQ_sh_entegalhaye_koli_moaian_befamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_sh_entegalhaye_koli_moaian_bename: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_sh_entegalhaye_koli_moaian_bekoli: TWideStringField
      FieldName = 'koli'
      Size = 10
    end
  end
  object ADOQ_sh_entegalhaye_koli_na_moaian_be: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      ''
      'cod_shakhs,id_koli_na_moaian_be,family,name,koli'
      ''
      'from t_sahamdaran'
      ''
      'group by  id_koli_na_moaian_be,family,name,koli,cod_shakhs'
      ''
      'order by  id_koli_na_moaian_be,family,name,koli,cod_shakhs'#10
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 112
    Top = 264
    object ADOQ_sh_entegalhaye_koli_na_moaian_becod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_sh_entegalhaye_koli_na_moaian_beid_koli_na_moaian_be: TIntegerField
      FieldName = 'id_koli_na_moaian_be'
    end
    object ADOQ_sh_entegalhaye_koli_na_moaian_befamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_sh_entegalhaye_koli_na_moaian_bename: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_sh_entegalhaye_koli_na_moaian_bekoli: TWideStringField
      FieldName = 'koli'
      Size = 10
    end
  end
  object ADOQ_sh_entegalhaye_koli_na_moaian_az: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      ''
      'id_entegal_dahande,id_koli_na_moaian_be,az_family,az_name,koli'
      ''
      'from t_sahamdaran'
      ''
      
        'group by  id_koli_na_moaian_be,az_family,az_name,koli,id_entegal' +
        '_dahande'
      ''
      'order by  id_koli_na_moaian_be,az_family,az_name,koli'#10
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 440
    Top = 280
    object ADOQ_sh_entegalhaye_koli_na_moaian_azid_entegal_dahande: TIntegerField
      FieldName = 'id_entegal_dahande'
    end
    object ADOQ_sh_entegalhaye_koli_na_moaian_azid_koli_na_moaian_be: TIntegerField
      FieldName = 'id_koli_na_moaian_be'
    end
    object ADOQ_sh_entegalhaye_koli_na_moaian_azaz_family: TWideStringField
      FieldName = 'az_family'
      Size = 40
    end
    object ADOQ_sh_entegalhaye_koli_na_moaian_azaz_name: TWideStringField
      FieldName = 'az_name'
      Size = 40
    end
    object ADOQ_sh_entegalhaye_koli_na_moaian_azkoli: TWideStringField
      FieldName = 'koli'
      Size = 10
    end
  end
end
