object frm_show_exist_entegal2: Tfrm_show_exist_entegal2
  Left = 56
  Top = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 648
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    890
    648)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGrid
    Left = 1
    Top = 4
    Width = 882
    Height = 638
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
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_sanade_mahzari'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_parvande'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'noe_entegal'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1575#1606#1578#1602#1575#1604
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedade_sahme_ashari_avalie'
        Title.Caption = #1578#1593#1583#1575#1583' '#1587#1607#1605' '#1575#1606#1578#1602#1575#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedade_sahme_ashari'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1587#1607#1605' '#1601#1593#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'somn'
        Title.Alignment = taCenter
        Title.Caption = #1579#1605#1606' '#1575#1593#1610#1575#1606#1610
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
        FieldName = 'family'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_pedar'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Width = 90
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Dm.ADOQ_komakie_hazf
    Left = 272
    Top = 232
  end
end
