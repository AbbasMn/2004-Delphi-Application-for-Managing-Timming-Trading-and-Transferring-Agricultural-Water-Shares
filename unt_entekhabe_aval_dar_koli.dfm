object frm_entekhabe_aval_dar_koli: Tfrm_entekhabe_aval_dar_koli
  Left = 6
  Top = 52
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1606#1578#1582#1575#1576' '#1606#1601#1585' '#1575#1606#1578#1602#1575#1604' '#1583#1607#1606#1583#1607' '#1583#1585' '#1575#1606#1578#1602#1575#1604' '#1705#1604#1610
  ClientHeight = 638
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    937
    638)
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 640
    Top = 13
    Width = 292
    Height = 16
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1605#1575#1604#1705' '#1601#1593#1604#1610' '#1587#1607#1605' '#1570#1576':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label20: TLabel
    Left = 640
    Top = 41
    Width = 62
    Height = 16
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1606#1608#1593' '#1575#1606#1578#1602#1575#1604' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 123
    Top = 8
    Width = 117
    Height = 16
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1578#1593#1583#1575#1583' '#1587#1607#1605' '#1576#1607' '#1575#1593#1588#1575#1585':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object l_tedad_sahme_abe_ashari: TLabel
    Left = 25
    Top = 30
    Width = 312
    Height = 21
    Alignment = taCenter
    Anchors = [akTop, akRight]
    AutoSize = False
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1578#1593#1583#1575#1583' '#1587#1607#1605' '#1570#1576' '#1608#1575#1585#1583' '#1588#1583#1607' '#1576#1607' '#1589#1608#1585#1578' '#1575#1593#1588#1575#1585#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 159
    Width = 924
    Height = 452
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'family'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_pedar'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_parvande'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
        Width = 74
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'noe_entegal'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1575#1606#1578#1602#1575#1604
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_sanade_mahzari'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583' '#1579#1576#1578#1610
        Width = 93
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedade_sahme_ashari_avalie'
        Title.Caption = #1578#1593#1583#1575#1583' '#1587#1607#1605' '#1575#1608#1604#1610#1607
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedade_sahme_ashari'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1587#1607#1605' '#1601#1593#1604#1610
        Width = 93
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'somn'
        Title.Alignment = taCenter
        Title.Caption = #1579#1605#1606' '#1575#1593#1610#1575#1606#1610
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'max_entegal'
        Title.Alignment = taCenter
        Title.Caption = '('#1579#1605#1606'-'#1601#1593#1604#1610')='#1602#1575#1576#1604' '#1575#1606#1578#1602#1575#1604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nafare_aval'
        Title.Alignment = taCenter
        Title.Caption = #1575#1608#1604'/'#1594#1610#1585' '#1575#1608#1604
        Width = 69
        Visible = True
      end>
  end
  object e_search: TsuiEdit
    Left = 480
    Top = 10
    Width = 157
    Height = 23
    UIStyle = WinXP
    BorderColor = 6842472
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Color = clMenu
    Ctl3D = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 40
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnChange = e_searchChange
  end
  object Bt: TButton
    Left = 67
    Top = 100
    Width = 145
    Height = 25
    Caption = #1575#1606#1578#1582#1575#1576' '#1608' '#1575#1583#1575#1605#1607
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BtClick
  end
  object ComboBox1: TComboBox
    Left = 480
    Top = 39
    Width = 157
    Height = 22
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 1
    Items.Strings = (
      #1601#1585#1608#1588
      #1605#1607#1585#1610#1607
      #1575#1585#1579
      #1605#1589#1575#1604#1581#1607
      #1608#1602#1601)
  end
  object G_adadi: TGroupBox
    Left = 303
    Top = 72
    Width = 320
    Height = 81
    BiDiMode = bdRightToLeft
    Caption = ' '#1608#1585#1608#1583' '#1578#1593#1583#1575#1583' '#1587#1607#1605' '#1570#1576' '#1576#1607' '#1589#1608#1585#1578' '#1593#1583#1583#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    TabStop = True
    DesignSize = (
      320
      81)
    object Label14: TLabel
      Left = 190
      Top = 37
      Width = 90
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1578#1593#1583#1575#1583' '#1587#1607#1605' '#1570#1576':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object e_adadi: TsuiEdit
      Left = 39
      Top = 34
      Width = 130
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clMenu
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = e_adadiChange
      OnExit = e_adadiExit
      OnKeyPress = e_adadiKeyPress
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 634
    Top = 72
    Width = 248
    Height = 81
    BiDiMode = bdRightToLeft
    Caption = '  '#1578#1593#1583#1575#1583' '#1587#1607#1605' '#1570#1576' '#1576#1585#1575#1610' '#1575#1606#1578#1602#1575#1604' '#1575#1586' '#1588#1582#1589' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1576#1607' '#1589#1608#1585#1578' '#1590#1585#1610#1576' '#1583#1585' '#1705#1587#1585
      #1576#1607' '#1589#1608#1585#1578' '#1593#1583#1583#1610'('#1575#1593#1588#1575#1585#1610')')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    TabStop = True
    OnClick = RadioGroup1Click
  end
  object G_kasri: TGroupBox
    Left = 303
    Top = 72
    Width = 320
    Height = 81
    BiDiMode = bdRightToLeft
    Caption = ' '#1608#1585#1608#1583' '#1578#1593#1583#1575#1583' '#1587#1607#1605' '#1570#1576' '#1576#1607' '#1589#1608#1585#1578' '#1590#1585#1610#1576' '#1583#1585' '#1705#1587#1585' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    TabStop = True
    DesignSize = (
      320
      81)
    object Label10: TLabel
      Left = 160
      Top = 41
      Width = 28
      Height = 13
      Caption = '-------'
    end
    object Label11: TLabel
      Left = 57
      Top = 41
      Width = 44
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = ':'#1590#1585#1610#1576'*'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 217
      Top = 25
      Width = 45
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1589#1608#1585#1578':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 217
      Top = 57
      Width = 42
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1605#1582#1585#1580':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object e_makhraj: TsuiEdit
      Left = 159
      Top = 54
      Width = 31
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clMenu
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 3
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnChange = e_makhrajChange
      OnKeyPress = e_makhrajKeyPress
    end
    object e_sorat: TsuiEdit
      Left = 159
      Top = 22
      Width = 31
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clMenu
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 3
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnChange = e_soratChange
      OnKeyPress = e_soratKeyPress
    end
    object e_zarib: TsuiEdit
      Left = 111
      Top = 38
      Width = 38
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clMenu
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 3
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = e_zaribChange
      OnKeyPress = e_zaribKeyPress
    end
  end
  object DataSource1: TDataSource
    DataSet = Dm_koli.ADOQ_dahande_dar_koli
    Left = 232
    Top = 280
  end
end
