object frm_trace_entegal: Tfrm_trace_entegal
  Left = -11
  Top = 17
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1662#1610#1711#1610#1585#1610' '#1575#1606#1578#1602#1575#1604' '#1570#1576
  ClientHeight = 710
  ClientWidth = 994
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
    994
    710)
  PixelsPerInch = 96
  TextHeight = 13
  object G_entegale_mostagim: TGroupBox
    Left = 202
    Top = 11
    Width = 789
    Height = 246
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = #1575#1606#1578#1582#1575#1576' '#1575#1586' '#1588#1605#1575#1585#1607' '#1711#1585#1608#1607#1607#1575#1610' '#1602#1576#1604#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      789
      246)
    object DBGrid_be: TDBGrid
      Left = 6
      Top = 25
      Width = 778
      Height = 214
      Anchors = [akLeft, akTop, akBottom]
      BiDiMode = bdRightToLeft
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id_entegal_dahande'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'az_family'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'az_name'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'az_name_pedar'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1662#1583#1585
          Width = 110
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sh_parvande'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607' '#1579#1576#1578#1610
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'nafare_aval'
          Title.Alignment = taCenter
          Title.Caption = #1606#1601#1585' '#1575#1608#1604'/'#1594#1610#1585#1575#1608#1604
          Width = 116
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'noe_entegal'
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1575#1606#1578#1602#1575#1604
          Width = 85
          Visible = True
        end>
    end
    object DBGrid_az: TDBGrid
      Left = 6
      Top = 25
      Width = 778
      Height = 214
      Anchors = [akLeft, akTop, akBottom]
      BiDiMode = bdRightToLeft
      DataSource = DataSource2
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
          FieldName = 'cod_shakhs'
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
          FieldName = 'sh_parvande'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607' '#1579#1576#1578#1610
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'nafare_aval'
          Title.Alignment = taCenter
          Title.Caption = #1606#1601#1585' '#1575#1608#1604'/'#1594#1610#1585#1575#1608#1604
          Width = 116
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'noe_entegal'
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1575#1606#1578#1602#1575#1604
          Width = 85
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 202
    Top = 320
    Width = 789
    Height = 378
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1605#1588#1582#1589#1575#1578' '#1575#1601#1585#1575#1583' '#1588#1585#1705#1578' '#1705#1606#1606#1583#1607' '#1583#1585' '#1575#1606#1578#1602#1575#1604' '#1576#1607' '#1578#1585#1578#1610#1576'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      789
      378)
    object DBGrid1: TDBGrid
      Left = 5
      Top = 24
      Width = 778
      Height = 344
      Anchors = [akLeft, akTop, akBottom]
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
          FieldName = 'az_name'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1583#1607#1606#1583#1607' '#1587#1607#1605
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'az_family'
          Title.Alignment = taCenter
          Title.Caption = #1601#1575#1605#1610#1604' '#1583#1607#1606#1583#1607' '#1587#1607#1605
          Width = 110
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tedade_sahme_ashari_avalie'
          Title.Alignment = taCenter
          Title.Caption = #1578#1593#1583#1575#1583' '#1587#1607#1605
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'noe_entegal'
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1575#1606#1578#1602#1575#1604
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1711#1610#1585#1606#1583#1607' '#1587#1607#1605
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'family'
          Title.Alignment = taCenter
          Title.Caption = #1601#1575#1605#1610#1604' '#1711#1610#1585#1606#1583#1607' '#1587#1607#1605
          Width = 110
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sh_parvande'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sh_sanade_mahzari'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583' '#1605#1581#1590#1585#1610
          Width = 110
          Visible = True
        end>
    end
  end
  object Button1: TButton
    Left = 420
    Top = 273
    Width = 353
    Height = 25
    Anchors = [akTop]
    Caption = #1575#1583#1575#1605#1607' '#1576#1585' '#1575#1587#1575#1587' '#1575#1606#1578#1602#1575#1604' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1583#1585' '#1576#1575#1604#1575
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object dxToolButton1: TdxToolButton
    Left = 0
    Top = 0
    Align = alTop
    OnClick = dxToolButton1Click
    ToolType = ttRestore
  end
  object TreeView1: TTreeView
    Left = 9
    Top = 25
    Width = 190
    Height = 681
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Indent = 19
    ParentFont = False
    TabOrder = 4
  end
  object Button2: TButton
    Left = 203
    Top = 264
    Width = 147
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #1606#1605#1575#1610#1588' '#1582#1604#1575#1589#1607' '#1583#1585' '#1583#1585#1582#1578' '#1575#1606#1578#1602#1575#1604
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 6
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = Dm.ADOQ_show_tempe_entegal
    Left = 254
    Top = 496
  end
  object DataSource2: TDataSource
    DataSet = Dm.ADOQ_show_entegale_mostagim
    Left = 312
    Top = 123
  end
  object DataSource3: TDataSource
    DataSet = Dm.ADOQ_show_entegale_mostagim_be
    Left = 544
    Top = 216
  end
end
