object Dm_eslah: TDm_eslah
  OldCreateOrder = False
  Left = 303
  Top = 240
  Height = 181
  Width = 215
  object ADOQ_show_entegalha: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_show_entegalhaAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_sahamdaran')
    Left = 48
    Top = 16
    object ADOQ_show_entegalhash_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_show_entegalhaname: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_entegalhafamily: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_entegalhatedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_show_entegalhaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_show_entegalhacod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_show_entegalhatarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_show_entegalhaname_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_show_entegalhasahm_zaribe_kasr: TWideStringField
      FieldName = 'sahm_zaribe_kasr'
      Size = 3
    end
    object ADOQ_show_entegalhasahm_sorate_kasr: TWideStringField
      FieldName = 'sahm_sorate_kasr'
      Size = 3
    end
    object ADOQ_show_entegalhasahm_makhraje_kasr: TWideStringField
      FieldName = 'sahm_makhraje_kasr'
      Size = 3
    end
    object ADOQ_show_entegalhanoe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_show_entegalhash_sanade_mahzari: TWideStringField
      FieldName = 'sh_sanade_mahzari'
      Size = 15
    end
    object ADOQ_show_entegalhash_mahzar: TWideStringField
      FieldName = 'sh_mahzar'
      Size = 10
    end
    object ADOQ_show_entegalhashahre_mahzar: TWideStringField
      FieldName = 'shahre_mahzar'
    end
    object ADOQ_show_entegalhanafare_aval: TWideStringField
      FieldName = 'nafare_aval'
      Size = 10
    end
    object ADOQ_show_entegalhash_radife_koli_nafare_aval: TIntegerField
      FieldName = 'sh_radife_koli_nafare_aval'
    end
    object ADOQ_show_entegalhaid_entegal_dahande: TIntegerField
      FieldName = 'id_entegal_dahande'
    end
    object ADOQ_show_entegalhatedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_show_entegalhaaz_name: TWideStringField
      FieldName = 'az_name'
      Size = 40
    end
    object ADOQ_show_entegalhaaz_family: TWideStringField
      FieldName = 'az_family'
      Size = 40
    end
    object ADOQ_show_entegalhaaz_name_pedar: TWideStringField
      FieldName = 'az_name_pedar'
      Size = 40
    end
    object ADOQ_show_entegalhacod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_show_entegalhakoli: TWideStringField
      FieldName = 'koli'
      Size = 10
    end
    object ADOQ_show_entegalhaid_koli_moaian_be: TIntegerField
      FieldName = 'id_koli_moaian_be'
    end
    object ADOQ_show_entegalhaid_koli_na_moaian_be: TIntegerField
      FieldName = 'id_koli_na_moaian_be'
    end
    object ADOQ_show_entegalhaentegal_az_id: TIntegerField
      FieldName = 'entegal_az_id'
    end
    object ADOQ_show_entegalhasomn: TFloatField
      FieldName = 'somn'
    end
    object ADOQ_show_entegalhatozihe_somn: TWideStringField
      FieldName = 'tozihe_somn'
      Size = 40
    end
    object ADOQ_show_entegalhaentegale_somn: TWideStringField
      FieldName = 'entegale_somn'
      Size = 5
    end
    object ADOQ_show_entegalhakharid_somn: TWideStringField
      FieldName = 'kharid_somn'
      Size = 5
    end
  end
  object ADOQ_show_entegalha2: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_sahamdaran')
    Left = 104
    Top = 80
    object ADOQ_show_entegalha2sh_parvande: TWideStringField
      FieldName = 'sh_parvande'
    end
    object ADOQ_show_entegalha2name: TWideStringField
      FieldName = 'name'
      Size = 40
    end
    object ADOQ_show_entegalha2family: TWideStringField
      FieldName = 'family'
      Size = 40
    end
    object ADOQ_show_entegalha2tedade_sahme_ashari: TFloatField
      FieldName = 'tedade_sahme_ashari'
    end
    object ADOQ_show_entegalha2id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_show_entegalha2cod_reshteei: TMemoField
      FieldName = 'cod_reshteei'
      BlobType = ftMemo
    end
    object ADOQ_show_entegalha2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 12
    end
    object ADOQ_show_entegalha2name_pedar: TWideStringField
      FieldName = 'name_pedar'
      Size = 40
    end
    object ADOQ_show_entegalha2sahm_zaribe_kasr: TWideStringField
      FieldName = 'sahm_zaribe_kasr'
      Size = 3
    end
    object ADOQ_show_entegalha2sahm_sorate_kasr: TWideStringField
      FieldName = 'sahm_sorate_kasr'
      Size = 3
    end
    object ADOQ_show_entegalha2sahm_makhraje_kasr: TWideStringField
      FieldName = 'sahm_makhraje_kasr'
      Size = 3
    end
    object ADOQ_show_entegalha2noe_entegal: TWideStringField
      FieldName = 'noe_entegal'
      Size = 10
    end
    object ADOQ_show_entegalha2sh_sanade_mahzari: TWideStringField
      FieldName = 'sh_sanade_mahzari'
      Size = 15
    end
    object ADOQ_show_entegalha2sh_mahzar: TWideStringField
      FieldName = 'sh_mahzar'
      Size = 10
    end
    object ADOQ_show_entegalha2shahre_mahzar: TWideStringField
      FieldName = 'shahre_mahzar'
    end
    object ADOQ_show_entegalha2nafare_aval: TWideStringField
      FieldName = 'nafare_aval'
      Size = 10
    end
    object ADOQ_show_entegalha2sh_radife_koli_nafare_aval: TIntegerField
      FieldName = 'sh_radife_koli_nafare_aval'
    end
    object ADOQ_show_entegalha2id_entegal_dahande: TIntegerField
      FieldName = 'id_entegal_dahande'
    end
    object ADOQ_show_entegalha2tedade_sahme_ashari_avalie: TFloatField
      FieldName = 'tedade_sahme_ashari_avalie'
    end
    object ADOQ_show_entegalha2az_name: TWideStringField
      FieldName = 'az_name'
      Size = 40
    end
    object ADOQ_show_entegalha2az_family: TWideStringField
      FieldName = 'az_family'
      Size = 40
    end
    object ADOQ_show_entegalha2az_name_pedar: TWideStringField
      FieldName = 'az_name_pedar'
      Size = 40
    end
    object ADOQ_show_entegalha2cod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_show_entegalha2koli: TWideStringField
      FieldName = 'koli'
      Size = 10
    end
    object ADOQ_show_entegalha2id_koli_moaian_be: TIntegerField
      FieldName = 'id_koli_moaian_be'
    end
    object ADOQ_show_entegalha2id_koli_na_moaian_be: TIntegerField
      FieldName = 'id_koli_na_moaian_be'
    end
    object ADOQ_show_entegalha2entegal_az_id: TIntegerField
      FieldName = 'entegal_az_id'
    end
    object ADOQ_show_entegalha2somn: TFloatField
      FieldName = 'somn'
    end
    object ADOQ_show_entegalha2tozihe_somn: TWideStringField
      FieldName = 'tozihe_somn'
      Size = 40
    end
    object ADOQ_show_entegalha2entegale_somn: TWideStringField
      FieldName = 'entegale_somn'
      Size = 5
    end
    object ADOQ_show_entegalha2kharid_somn: TWideStringField
      FieldName = 'kharid_somn'
      Size = 5
    end
  end
end
