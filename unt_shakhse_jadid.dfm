object frm_shakhse_jadid: Tfrm_shakhse_jadid
  Left = 220
  Top = 319
  Width = 418
  Height = 373
  BorderIcons = [biSystemMenu]
  Caption = #1608#1585#1608#1583' '#1605#1588#1582#1589#1575#1578' '#1588#1582#1589' '#1580#1583#1610#1583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object g_jadid: TGroupBox
    Left = 3
    Top = 9
    Width = 405
    Height = 328
    BiDiMode = bdRightToLeft
    Caption = '  '#1608#1585#1608#1583' '#1605#1588#1582#1589#1575#1578' '#1588#1582#1589' '#1610#1575' '#1605#1608#1587#1587#1607' '#1580#1583#1610#1583'  '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      405
      328)
    object Label2: TLabel
      Left = 275
      Top = 93
      Width = 105
      Height = 16
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
    object Label4: TLabel
      Left = 275
      Top = 136
      Width = 108
      Height = 16
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
      Left = 275
      Top = 180
      Width = 105
      Height = 16
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
    object Label15: TLabel
      Left = 275
      Top = 224
      Width = 107
      Height = 16
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
    object L_noe_nafar: TLabel
      Left = 312
      Top = 24
      Width = 71
      Height = 16
      Caption = 'L_noe_nafar'
      Visible = False
    end
    object Label1: TLabel
      Left = 275
      Top = 268
      Width = 108
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1606#1601#1585' '#1575#1608#1604' / '#1594#1610#1585' '#1575#1608#1604'    :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object e_name: TsuiEdit
      Left = 15
      Top = 90
      Width = 238
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
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
    end
    object e_family: TsuiEdit
      Left = 15
      Top = 133
      Width = 238
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
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
      TabOrder = 1
      OnExit = e_familyExit
    end
    object e_pedar: TsuiEdit
      Left = 15
      Top = 169
      Width = 238
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
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
      TabOrder = 2
    end
    object e_sh_sh: TsuiEdit
      Left = 15
      Top = 217
      Width = 238
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
      BiDiMode = bdRightToLeft
      Color = clMenu
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 20
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object Bt: TButton
      Left = 160
      Top = 298
      Width = 84
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1584#1582#1610#1585#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BtClick
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 268
      Width = 235
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = #1606#1601#1585#1575#1608#1604
      Items.Strings = (
        #1606#1601#1585#1575#1608#1604
        #1606#1601#1585#1594#1610#1585#1575#1608#1604)
    end
    object RadioGroup1: TRadioGroup
      Left = 10
      Top = 25
      Width = 385
      Height = 55
      Caption = #1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1608#1585#1608#1583' '#1605#1588#1582#1589#1575#1578' '#1576#1585#1575#1610' '#1588#1582#1589' '#1610#1575' '#1605#1608#1587#1587#1607'  '
      Columns = 2
      Items.Strings = (
        #1588#1582#1589' '#1581#1602#1610#1602#1610
        #1581#1587#1610#1606#1610#1607' '#1548' ...')
      TabOrder = 6
      OnClick = RadioGroup1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 99
    Width = 398
    Height = 162
    BiDiMode = bdRightToLeft
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 248
      Top = 76
      Width = 145
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1606#1575#1605' '#1605#1608#1587#1587#1607' '#1610#1575' '#1581#1587#1610#1606#1610#1607'   :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object e_hoseinie: TsuiEdit
      Left = 6
      Top = 73
      Width = 238
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
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
    end
  end
end
