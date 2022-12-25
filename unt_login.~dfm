object Frm_login: TFrm_login
  Left = 510
  Top = 369
  BorderStyle = bsDialog
  Caption = #1608#1585#1608#1583' '#1576#1607' '#1587#1610#1587#1578#1605
  ClientHeight = 89
  ClientWidth = 224
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 3
    Width = 224
    Height = 86
    BiDiMode = bdRightToLeft
    Caption = '  '#1705#1583' '#1575#1605#1606#1610#1578#1610' '#1608#1585#1608#1583' '#1576#1607' '#1587#1610#1587#1578#1605'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object suiBtaeed: TsuiButton
      Left = 71
      Top = 56
      Width = 39
      Height = 25
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1578#1575#1610#1610#1583
      AutoSize = False
      ParentFont = False
      FileTheme = frm_main.suiFileTheme1
      UIStyle = FromThemeFile
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiBtaeedClick
      ResHandle = 0
    end
    object suibexit: TsuiButton
      Left = 113
      Top = 56
      Width = 39
      Height = 25
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Caption = #1582#1585#1608#1580
      AutoSize = False
      ParentFont = False
      FileTheme = frm_main.suiFileTheme1
      UIStyle = FromThemeFile
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suibexitClick
      ResHandle = 0
    end
    object Elogin: TEdit
      Left = 19
      Top = 27
      Width = 186
      Height = 22
      Hint = #1581#1583#1575#1705#1579#1585' 10'#1705#1575#1585#1575#1705#1578#1585
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 8
      Top = 8
      Width = 65
      Height = 21
      TabOrder = 3
      Visible = False
    end
    object Egettarikh: TEdit
      Left = 89
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 4
      Visible = False
    end
  end
  object ADOlogin: TADOQuery
    Active = True
    Connection = frm_main.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_login')
    Left = 16
    Top = 59
    object ADOloginlogin: TWideStringField
      FieldName = 'login'
      Size = 10
    end
    object ADOloginserial: TWideStringField
      FieldName = 'serial'
      Size = 40
    end
    object ADOloginback: TWideStringField
      FieldName = 'back'
      Size = 255
    end
  end
end
