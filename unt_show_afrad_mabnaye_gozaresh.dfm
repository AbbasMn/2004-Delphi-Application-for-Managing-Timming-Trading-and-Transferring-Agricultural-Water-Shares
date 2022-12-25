object frm_show_afrad_mabnaye_gozaresh: Tfrm_show_afrad_mabnaye_gozaresh
  Left = 172
  Top = 56
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1606#1578#1582#1575#1576' '#1601#1585#1583' '#1576#1585#1575#1610' '#1711#1586#1575#1585#1588' '#1711#1610#1585#1610' '#1576#1585' '#1605#1576#1606#1575#1610' '#1575#1608
  ClientHeight = 621
  ClientWidth = 614
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
    614
    621)
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 352
    Top = 118
    Width = 228
    Height = 16
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1580#1587#1578#1580#1608#1610' '#1588#1582#1589' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object l_type: TLabel
    Left = 496
    Top = 112
    Width = 28
    Height = 13
    Caption = 'l_type'
    Visible = False
  end
  object DBGrid2: TDBGrid
    Left = 1
    Top = 144
    Width = 610
    Height = 474
    Anchors = [akLeft, akTop, akRight, akBottom]
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'cod'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'family'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_sh'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_pedar'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nafare_aval'
        Title.Caption = #1606#1601#1585' '#1575#1608#1604'/'#1594#1610#1585#1575#1608#1604
        Width = 89
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 5
    Top = 8
    Width = 604
    Height = 97
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576'  '#1711#1586#1575#1585#1588' '#1711#1610#1585#1610'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      
        #1607#1605#1607' '#1705#1587#1575#1606#1610' '#1705#1607' '#1575#1586' '#1588#1582#1589' '#1575#1606#1578#1582#1575#1576#1610' '#1576#1607' '#1589#1608#1585#1578' '#1605#1587#1578#1602#1610#1605' '#1608' '#1594#1610#1585' '#1605#1587#1578#1602#1610#1605' '#1587#1607#1605' '#1570#1576' '#1583 +
        #1585#1610#1575#1601#1578' '#1705#1585#1583#1607' '#1575#1606#1583
      
        #1607#1605#1607' '#1705#1587#1575#1606#1610' '#1705#1607' '#1587#1607#1605' '#1570#1576' '#1570#1606#1607#1575' '#1576#1607' '#1589#1608#1585#1578' '#1605#1587#1578#1602#1610#1605' '#1610#1575' '#1594#1610#1585' '#1605#1587#1578#1602#1610#1605' '#1576#1607' '#1588#1582#1589' '#1575#1606#1578 +
        #1582#1575#1576#1610' '#1585#1587#1610#1583#1607' '#1575#1587#1578)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    TabStop = True
    OnClick = RadioGroup1Click
  end
  object e_search: TsuiEdit
    Left = 184
    Top = 115
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
    TabOrder = 2
    OnChange = e_searchChange
  end
  object Button1: TButton
    Left = 16
    Top = 113
    Width = 131
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #1606#1578#1610#1580#1607' '#1711#1586#1575#1585#1588
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = Dm.ADOQ_show_afrade_mojod
    Left = 264
    Top = 176
  end
end
