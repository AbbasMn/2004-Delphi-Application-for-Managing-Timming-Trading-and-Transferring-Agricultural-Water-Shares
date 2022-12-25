object Frm_login_change: TFrm_login_change
  Left = 399
  Top = 368
  BorderStyle = bsDialog
  Caption = #1578#1594#1610#1610#1585' '#1705#1583' '#1575#1605#1606#1610#1578#1610
  ClientHeight = 156
  ClientWidth = 204
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 5
    Width = 203
    Height = 149
    BiDiMode = bdRightToLeft
    Caption = #1578#1594#1610#1610#1585' '#1705#1583' '#1575#1605#1606#1610#1578#1610' '#1608#1585#1608#1583' '#1576#1607' '#1587#1610#1587#1578#1605
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 20
      Width = 134
      Height = 14
      Caption = #1705#1583' '#1575#1605#1606#1610#1578#1610' '#1601#1593#1604#1610' '#1587#1610#1587#1578#1605' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 35
      Top = 73
      Width = 128
      Height = 14
      Caption = #1705#1583' '#1575#1605#1606#1610#1578#1610' '#1580#1583#1610#1583' '#1587#1610#1587#1578#1605':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object suiBtaeed: TsuiButton
      Left = 6
      Top = 120
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
      TabOrder = 2
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
      Left = 48
      Top = 120
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
      TabOrder = 3
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
      Left = 6
      Top = 94
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
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 6
      Top = 44
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
  end
end
