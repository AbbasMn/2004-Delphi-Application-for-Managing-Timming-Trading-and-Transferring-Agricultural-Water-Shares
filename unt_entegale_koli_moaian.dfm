object frm_entegale_koli_moaian: Tfrm_entegale_koli_moaian
  Left = 351
  Top = 25
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1606#1578#1602#1575#1604' '#1587#1607#1605' '#1570#1576' '#1576#1607' '#1589#1608#1585#1578' '#1705#1604#1610' '#1608' '#1605#1593#1610#1606
  ClientHeight = 590
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    497
    590)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 112
    Top = 156
    Width = 273
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #1575#1590#1575#1601#1607' '#1606#1605#1608#1583#1606' '#1587#1607#1605' '#1570#1576' '#1576#1585#1575#1610' '#1575#1606#1578#1602#1575#1604' '#1576#1607' '#1588#1582#1589' '#1711#1610#1585#1606#1583#1607
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 192
    Width = 494
    Height = 217
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = ' '#1587#1607#1605' '#1570#1576' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1575#1586' '#1575#1588#1582#1575#1589' '#1576#1585#1575#1610' '#1575#1606#1578#1602#1575#1604'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      494
      217)
    object DBGrid2: TDBGrid
      Left = 5
      Top = 22
      Width = 483
      Height = 163
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
      TabOrder = 0
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
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605
          Width = 49
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
          Width = 77
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tedade_sahme_ashari'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583' '#1587#1607#1605' '#1576#1585#1575#1610' '#1575#1606#1578#1602#1575#1604
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'noe_entegal'
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1575#1606#1578#1602#1575#1604
          Visible = True
        end>
    end
    object Button3: TButton
      Left = 184
      Top = 188
      Width = 123
      Height = 25
      Caption = #1581#1584#1601' '#1605#1608#1585#1583' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object Bt: TButton
    Left = 156
    Top = 9
    Width = 185
    Height = 25
    Caption = #1575#1606#1578#1582#1575#1576' '#1588#1582#1589' '#1711#1610#1585#1606#1583#1607' '#1587#1607#1605' '#1570#1576
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 34
    Width = 481
    Height = 113
    BiDiMode = bdRightToLeft
    Caption = '    '#1588#1582#1589' '#1711#1610#1585#1606#1583#1607' '#1587#1607#1605' '#1570#1576'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      481
      113)
    object Label2: TLabel
      Left = 311
      Top = 20
      Width = 105
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1606#1575#1605'                   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object L_name: TLabel
      Left = 64
      Top = 19
      Width = 238
      Height = 22
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
    object l_family: TLabel
      Left = 64
      Top = 41
      Width = 238
      Height = 22
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
    object Label4: TLabel
      Left = 309
      Top = 44
      Width = 108
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610'      :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 309
      Top = 66
      Width = 105
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1606#1575#1605' '#1662#1583#1585'                :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object l_pedar: TLabel
      Left = 64
      Top = 63
      Width = 238
      Height = 22
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
    object Label15: TLabel
      Left = 309
      Top = 88
      Width = 107
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object l_sh_sh: TLabel
      Left = 64
      Top = 82
      Width = 238
      Height = 22
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
  end
  object RadioGroup2: TRadioGroup
    Left = 88
    Top = 416
    Width = 320
    Height = 52
    BiDiMode = bdRightToLeft
    Caption = '  '#1579#1576#1578' '#1575#1606#1578#1602#1575#1604' '#1583#1585' '#1605#1581#1590#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1579#1576#1578' '#1575#1606#1578#1602#1575#1604' '#1583#1585' '#1605#1581#1590#1585' '#1575#1587#1606#1575#1583' '#1585#1587#1605#1610
      #1579#1576#1578' '#1575#1606#1578#1602#1575#1604' '#1594#1610#1585' '#1605#1581#1590#1585#1610)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    TabStop = True
    OnClick = RadioGroup2Click
  end
  object G_geire_mahzari: TGroupBox
    Left = 8
    Top = 467
    Width = 481
    Height = 90
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1579#1576#1578' '#1594#1610#1585' '#1605#1581#1590#1585#1610' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
    DesignSize = (
      481
      90)
    object Label17: TLabel
      Left = 293
      Top = 36
      Width = 31
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1575#1585#1610#1582':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 253
      Top = 36
      Width = 5
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object Label19: TLabel
      Left = 211
      Top = 36
      Width = 5
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object e_roz: TsuiEdit
      Left = 260
      Top = 33
      Width = 28
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
      MaxLength = 2
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = e_rozExit
      OnKeyPress = e_rozKeyPress
    end
    object e_mah: TsuiEdit
      Left = 218
      Top = 33
      Width = 28
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
      MaxLength = 2
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = e_mahExit
      OnKeyPress = e_mahKeyPress
    end
    object e_sal: TsuiEdit
      Left = 158
      Top = 33
      Width = 47
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
      MaxLength = 4
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnKeyPress = e_salKeyPress
    end
  end
  object Button2: TButton
    Left = 140
    Top = 561
    Width = 217
    Height = 25
    Caption = #1579#1576#1578' '#1705#1604#1610#1607' '#1575#1606#1578#1602#1575#1604#1607#1575' '#1576#1607' '#1588#1582#1589' '#1575#1606#1578#1582#1575#1576#1610' '#1583#1585' '#1576#1575#1604#1575
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object G_mahzari: TGroupBox
    Left = 8
    Top = 467
    Width = 481
    Height = 90
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578' '#1579#1576#1578' '#1583#1585' '#1605#1581#1590#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    DesignSize = (
      481
      90)
    object Label7: TLabel
      Left = 382
      Top = 27
      Width = 31
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1575#1585#1610#1582':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 342
      Top = 27
      Width = 5
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object Label1: TLabel
      Left = 300
      Top = 27
      Width = 5
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object Label5: TLabel
      Left = 146
      Top = 27
      Width = 76
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1605#1575#1585#1607' '#1605#1581#1590#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 146
      Top = 65
      Width = 101
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583' '#1579#1576#1578#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label21: TLabel
      Left = 336
      Top = 65
      Width = 84
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1607#1585' '#1579#1576#1578' '#1587#1606#1583':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object e_roz_mahzar: TsuiEdit
      Left = 349
      Top = 24
      Width = 28
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
      MaxLength = 2
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = e_roz_mahzarExit
      OnKeyPress = e_roz_mahzarKeyPress
    end
    object e_mah_mahzar: TsuiEdit
      Left = 307
      Top = 24
      Width = 28
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
      MaxLength = 2
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = e_mah_mahzarExit
      OnKeyPress = e_mah_mahzarKeyPress
    end
    object e_sal_mahzar: TsuiEdit
      Left = 248
      Top = 24
      Width = 47
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
      MaxLength = 4
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnKeyPress = e_sal_mahzarKeyPress
    end
    object e_sh_mahzar: TsuiEdit
      Left = 62
      Top = 24
      Width = 83
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
      TabOrder = 3
    end
    object e_sh_sanade_sabti: TsuiEdit
      Left = 62
      Top = 62
      Width = 84
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
      MaxLength = 15
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object e_shahre_mahzar: TsuiEdit
      Left = 248
      Top = 62
      Width = 84
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
      MaxLength = 15
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Dm_koli.ADOQ_temp_avale_koli
    Left = 496
    Top = 176
  end
end
