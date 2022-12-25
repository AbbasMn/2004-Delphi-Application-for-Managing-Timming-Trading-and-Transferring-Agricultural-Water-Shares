object Dm: TDm
  OldCreateOrder = False
  Left = 434
  Top = 245
  Height = 544
  Width = 473
  object ADOQ_find_sh_goroh_nafare_aval: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  T_sh_radife_koli_nafarate_aval')
    Left = 88
    object ADOQ_find_sh_goroh_nafare_avalid_nafarate_aval: TIntegerField
      FieldName = 'id_nafarate_aval'
    end
  end
  object ADOQ_show_nafarate_avale_har_goroh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sh_radife_koli_nafare_aval,name,family,tedade_sahme_ashar' +
        'i_avalie,tarikh'
      'from t_sahamdaran')
    Left = 88
    Top = 56
    object ADOQ_show_nafarate_avale_har_gorohsh_radife_koli_nafare_aval: TIntegerField
      FieldName = 'sh_radife_koli_nafare_aval'
    end
    object ADOQ_show_nafarate_avale_har_gorohname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_nafarate_avale_har_gorohfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_nafarate_avale_har_gorohtedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_show_nafarate_avale_har_gorohtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
  end
  object ADOQ_show_afrad: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_show_afradAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select  '
      ''
      ' tarikh,'
      'family,name,tedade_sahme_ashari,noe_entegal'
      ',name_pedar,tedade_sahme_ashari_avalie'
      ',sh_parvande,somn,entegale_somn,'
      '(tedade_sahme_ashari-somn) as max_entegal,kharid_somn,'
      ''
      'cod_reshteei,entegal_az_id,id'
      ''
      'from t_sahamdaran')
    Left = 56
    Top = 136
    object ADOQ_show_afradtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_show_afradfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_afradname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_afradtedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_show_afradnoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_show_afradname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_show_afradtedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_show_afradsh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_show_afradsomn: TFloatField
      FieldName = 'somn'
    end
    object ADOQ_show_afradentegale_somn: TWideStringField
      FieldName = 'entegale_somn'
      Size = 5
    end
    object ADOQ_show_afradmax_entegal: TFloatField
      FieldName = 'max_entegal'
      ReadOnly = True
    end
    object ADOQ_show_afradkharid_somn: TWideStringField
      FieldName = 'kharid_somn'
      Size = 5
    end
    object ADOQ_show_afradcod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_show_afradentegal_az_id: TIntegerField
      FieldName = 'entegal_az_id'
    end
    object ADOQ_show_afradid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object ADOQ_show_nafarat_baraye_dadane_sahm: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_show_nafarat_baraye_dadane_sahmAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'select  tarikh,sahm_zaribe_kasr,sahm_sorate_kasr,sahm_makhraje_k' +
        'asr,'
      'family,name,tedade_sahme_ashari,'
      'cod_reshteei,name_pedar,nafare_aval,tedade_sahme_ashari_avalie'
      
        ',cod_shakhs,id,sh_parvande,noe_entegal,entegal_az_id,somn,entega' +
        'le_somn,'
      '(tedade_sahme_ashari-somn) as max_entegal,kharid_somn'
      'from t_sahamdaran')
    Left = 96
    Top = 200
    object ADOQ_show_nafarat_baraye_dadane_sahmtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmsahm_zaribe_kasr: TWideStringField
      FieldName = 'sahm_zaribe_kasr'
      Size = 3
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmsahm_sorate_kasr: TWideStringField
      FieldName = 'sahm_sorate_kasr'
      Size = 3
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmsahm_makhraje_kasr: TWideStringField
      FieldName = 'sahm_makhraje_kasr'
      Size = 3
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmnafare_aval: TWideStringField
      FieldName = 'nafare_aval'
      Size = 10
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmcod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmsh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmnoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmentegal_az_id: TIntegerField
      FieldName = 'entegal_az_id'
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmsomn: TFloatField
      FieldName = 'somn'
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmentegale_somn: TWideStringField
      FieldName = 'entegale_somn'
      Size = 5
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmmax_entegal: TFloatField
      FieldName = 'max_entegal'
      ReadOnly = True
    end
    object ADOQ_show_nafarat_baraye_dadane_sahmkharid_somn: TWideStringField
      FieldName = 'kharid_somn'
      Size = 5
    end
  end
  object ADOQ_show_afrade_mojod: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_show_afrade_mojodAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_afrade_mojod')
    Left = 352
    Top = 8
    object ADOQ_show_afrade_mojodname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_afrade_mojodfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_afrade_mojodname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_show_afrade_mojodsh_sh: TWideStringField
      FieldName = 'sh_sh'
    end
    object ADOQ_show_afrade_mojodcod_reshte: TWideStringField
      FieldName = 'cod_reshte'
      Size = 5
    end
    object ADOQ_show_afrade_mojodid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_show_afrade_mojodcod: TIntegerField
      FieldName = 'cod'
    end
    object ADOQ_show_afrade_mojodnafare_aval: TWideStringField
      FieldName = 'nafare_aval'
      Size = 10
    end
    object ADOQ_show_afrade_mojodid_koli_moaian_be: TIntegerField
      FieldName = 'id_koli_moaian_be'
    end
    object ADOQ_show_afrade_mojodid_koli_na_moaian_be: TIntegerField
      FieldName = 'id_koli_na_moaian_be'
    end
  end
  object ADOQ_get_akharin_cod: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_akharin_cod')
    Left = 360
    Top = 80
    object ADOQ_get_akharin_codakharin_cod: TIntegerField
      FieldName = 'akharin_cod'
    end
  end
  object ADOQ_show_tempe_entegal: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *'
      'from T_temp_gozaresh')
    Left = 360
    Top = 136
    object ADOQ_show_tempe_entegalsh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_show_tempe_entegalname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_tempe_entegalfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_tempe_entegalid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_show_tempe_entegaltarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_show_tempe_entegalname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_show_tempe_entegalnoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_show_tempe_entegalsh_sanade_mahzari: TWideStringField
      FieldName = 'sh_sanade_mahzari'
      Size = 15
    end
    object ADOQ_show_tempe_entegaltedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_show_tempe_entegalaz_name: TWideStringField
      FieldName = 'az_name'
      Size = 40
    end
    object ADOQ_show_tempe_entegalaz_family: TWideStringField
      FieldName = 'az_family'
      Size = 40
    end
    object ADOQ_show_tempe_entegalaz_name_pedar: TWideStringField
      FieldName = 'az_name_pedar'
      Size = 40
    end
  end
  object ADOQ_show_entegale_mostagim: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_show_entegale_mostagimAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select  *'
      'from t_sahamdaran')
    Left = 360
    Top = 200
    object ADOQ_show_entegale_mostagimsh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_show_entegale_mostagimname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_entegale_mostagimfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_entegale_mostagimtedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_show_entegale_mostagimid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_show_entegale_mostagimcod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_show_entegale_mostagimtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_show_entegale_mostagimname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_show_entegale_mostagimsahm_zaribe_kasr: TWideStringField
      FieldName = 'sahm_zaribe_kasr'
      Size = 3
    end
    object ADOQ_show_entegale_mostagimsahm_sorate_kasr: TWideStringField
      FieldName = 'sahm_sorate_kasr'
      Size = 3
    end
    object ADOQ_show_entegale_mostagimsahm_makhraje_kasr: TWideStringField
      FieldName = 'sahm_makhraje_kasr'
      Size = 3
    end
    object ADOQ_show_entegale_mostagimnoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_show_entegale_mostagimsh_sanade_mahzari: TWideStringField
      FieldName = 'sh_sanade_mahzari'
      Size = 15
    end
    object ADOQ_show_entegale_mostagimsh_mahzar: TWideStringField
      FieldName = 'sh_mahzar'
      Size = 10
    end
    object ADOQ_show_entegale_mostagimshahre_mahzar: TWideStringField
      FieldName = 'shahre_mahzar'
    end
    object ADOQ_show_entegale_mostagimnafare_aval: TWideStringField
      FieldName = 'nafare_aval'
      Size = 10
    end
    object ADOQ_show_entegale_mostagimsh_radife_koli_nafare_aval: TIntegerField
      FieldName = 'sh_radife_koli_nafare_aval'
    end
    object ADOQ_show_entegale_mostagimid_entegal_dahande: TIntegerField
      FieldName = 'id_entegal_dahande'
    end
    object ADOQ_show_entegale_mostagimtedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_show_entegale_mostagimaz_name: TWideStringField
      FieldName = 'az_name'
      Size = 40
    end
    object ADOQ_show_entegale_mostagimaz_family: TWideStringField
      FieldName = 'az_family'
      Size = 40
    end
    object ADOQ_show_entegale_mostagimaz_name_pedar: TWideStringField
      FieldName = 'az_name_pedar'
      Size = 40
    end
    object ADOQ_show_entegale_mostagimcod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
  end
  object ADOQ_for_insert_into_temp_gozaresh: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      'sh_parvande,name,family,tarikh,'
      'name_pedar,noe_entegal,sh_sanade_mahzari,'
      'tedade_sahme_ashari_avalie,az_name,'
      'az_family,az_name_pedar'
      ''
      'from t_sahamdaran'
      '')
    Left = 344
    Top = 312
    object ADOQ_for_insert_into_temp_gozareshsh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_for_insert_into_temp_gozareshname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_for_insert_into_temp_gozareshfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_for_insert_into_temp_gozareshtarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_for_insert_into_temp_gozareshname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_for_insert_into_temp_gozareshnoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_for_insert_into_temp_gozareshsh_sanade_mahzari: TWideStringField
      FieldName = 'sh_sanade_mahzari'
      Size = 15
    end
    object ADOQ_for_insert_into_temp_gozareshtedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_for_insert_into_temp_gozareshaz_name: TWideStringField
      FieldName = 'az_name'
      Size = 40
    end
    object ADOQ_for_insert_into_temp_gozareshaz_family: TWideStringField
      FieldName = 'az_family'
      Size = 40
    end
    object ADOQ_for_insert_into_temp_gozareshaz_name_pedar: TWideStringField
      FieldName = 'az_name_pedar'
      Size = 40
    end
  end
  object ADOQ_show_mianie_entegal: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      'sh_parvande,name,family,id,cod_reshteei,cod_shakhs'
      ''
      'from t_sahamdaran'
      '')
    Left = 352
    Top = 376
    object ADOQ_show_mianie_entegalsh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_show_mianie_entegalname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_mianie_entegalfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_mianie_entegalid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_show_mianie_entegalcod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_show_mianie_entegalcod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
  end
  object ADOQ_show_mianie_entegal_be: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      
        'sh_parvande,az_name,az_family,id,cod_reshteei,cod_shakhs,name,fa' +
        'mily,id_entegal_dahande'
      ''
      'from t_sahamdaran'
      '')
    Left = 352
    Top = 440
    object ADOQ_show_mianie_entegal_besh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_show_mianie_entegal_beaz_name: TWideStringField
      FieldName = 'az_name'
      Size = 40
    end
    object ADOQ_show_mianie_entegal_beaz_family: TWideStringField
      FieldName = 'az_family'
      Size = 40
    end
    object ADOQ_show_mianie_entegal_beid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_show_mianie_entegal_becod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_show_mianie_entegal_becod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_show_mianie_entegal_bename: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_mianie_entegal_befamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_mianie_entegal_beid_entegal_dahande: TIntegerField
      FieldName = 'id_entegal_dahande'
    end
  end
  object ADOQ_show_entegale_mostagim_be: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *'
      'from t_sahamdaran')
    Left = 352
    Top = 256
    object ADOQ_show_entegale_mostagim_besh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_show_entegale_mostagim_bename: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_entegale_mostagim_befamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_entegale_mostagim_betedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_show_entegale_mostagim_beid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_show_entegale_mostagim_becod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_show_entegale_mostagim_betarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_show_entegale_mostagim_bename_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_show_entegale_mostagim_besahm_zaribe_kasr: TWideStringField
      FieldName = 'sahm_zaribe_kasr'
      Size = 3
    end
    object ADOQ_show_entegale_mostagim_besahm_sorate_kasr: TWideStringField
      FieldName = 'sahm_sorate_kasr'
      Size = 3
    end
    object ADOQ_show_entegale_mostagim_besahm_makhraje_kasr: TWideStringField
      FieldName = 'sahm_makhraje_kasr'
      Size = 3
    end
    object ADOQ_show_entegale_mostagim_benoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_show_entegale_mostagim_besh_sanade_mahzari: TWideStringField
      FieldName = 'sh_sanade_mahzari'
      Size = 15
    end
    object ADOQ_show_entegale_mostagim_besh_mahzar: TWideStringField
      FieldName = 'sh_mahzar'
      Size = 10
    end
    object ADOQ_show_entegale_mostagim_beshahre_mahzar: TWideStringField
      FieldName = 'shahre_mahzar'
    end
    object ADOQ_show_entegale_mostagim_benafare_aval: TWideStringField
      FieldName = 'nafare_aval'
      Size = 10
    end
    object ADOQ_show_entegale_mostagim_besh_radife_koli_nafare_aval: TIntegerField
      FieldName = 'sh_radife_koli_nafare_aval'
    end
    object ADOQ_show_entegale_mostagim_beid_entegal_dahande: TIntegerField
      FieldName = 'id_entegal_dahande'
    end
    object ADOQ_show_entegale_mostagim_betedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_show_entegale_mostagim_beaz_name: TWideStringField
      FieldName = 'az_name'
      Size = 40
    end
    object ADOQ_show_entegale_mostagim_beaz_family: TWideStringField
      FieldName = 'az_family'
      Size = 40
    end
    object ADOQ_show_entegale_mostagim_beaz_name_pedar: TWideStringField
      FieldName = 'az_name_pedar'
      Size = 40
    end
    object ADOQ_show_entegale_mostagim_becod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
  end
  object ADOQ_jame_sahme_abe_nafarate_aval: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select nafare_aval,family,name,name_pedar,sum(tedade_sahme_ashar' +
        'i) as kol_'
      ''
      'from t_sahamdaran'
      ''
      'group by family,name,name_pedar ,nafare_aval')
    Left = 104
    Top = 272
    object ADOQ_jame_sahme_abe_nafarate_avalfamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_jame_sahme_abe_nafarate_avalname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_jame_sahme_abe_nafarate_avalname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_jame_sahme_abe_nafarate_avalkol_: TFloatField
      FieldName = 'kol_'
    end
    object ADOQ_jame_sahme_abe_nafarate_avalnafare_aval: TWideStringField
      FieldName = 'nafare_aval'
      Size = 10
    end
  end
  object ADOQ_jame_kole_sahme_ab: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(tedade_sahme_ashari_avalie) as kol_'
      ''
      'from t_sahamdaran'
      ''
      '')
    Left = 104
    Top = 328
    object ADOQ_jame_kole_sahme_abkol_: TFloatField
      FieldName = 'kol_'
    end
  end
  object ADOQ_show_afrade_mojod2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_show_afrade_mojodAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_afrade_mojod')
    Left = 272
    Top = 64
    object WideStringField1: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object WideStringField2: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object WideStringField3: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object WideStringField4: TWideStringField
      FieldName = 'sh_sh'
    end
    object WideStringField5: TWideStringField
      FieldName = 'cod_reshte'
      Size = 5
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'cod'
    end
    object WideStringField6: TWideStringField
      FieldName = 'nafare_aval'
      Size = 10
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_koli_moaian_be'
    end
    object IntegerField3: TIntegerField
      FieldName = 'id_koli_na_moaian_be'
    end
  end
  object ADOQ_komakie_hazf: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      ''
      ' tarikh,'
      'family,name,tedade_sahme_ashari,noe_entegal'
      ',name_pedar,tedade_sahme_ashari_avalie'
      ',sh_parvande,somn,entegale_somn,'
      '(tedade_sahme_ashari-somn) as max_entegal,kharid_somn'
      ''
      'from t_sahamdaran')
    Left = 64
    Top = 432
    object ADOQ_komakie_hazftarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_komakie_hazffamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_komakie_hazfname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_komakie_hazftedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_komakie_hazfnoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_komakie_hazfname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_komakie_hazftedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_komakie_hazfsh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_komakie_hazfsomn: TFloatField
      FieldName = 'somn'
    end
    object ADOQ_komakie_hazfentegale_somn: TWideStringField
      FieldName = 'entegale_somn'
      Size = 5
    end
    object ADOQ_komakie_hazfmax_entegal: TFloatField
      FieldName = 'max_entegal'
      ReadOnly = True
    end
    object ADOQ_komakie_hazfkharid_somn: TWideStringField
      FieldName = 'kharid_somn'
      Size = 5
    end
  end
end
