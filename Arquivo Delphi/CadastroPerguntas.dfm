object F_CadPerguntas: TF_CadPerguntas
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'CadPerguntas'
  ClientHeight = 553
  ClientWidth = 663
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  DesignSize = (
    663
    553)
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 663
    Height = 553
    Align = alClient
    ExplicitTop = 1
    ExplicitWidth = 650
  end
  object Label1: TLabel
    Left = 56
    Top = 136
    Width = 118
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Question:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 105
  end
  object Label2: TLabel
    Left = 57
    Top = 231
    Width = 36
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    Caption = 'A:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 23
  end
  object Label3: TLabel
    Left = 57
    Top = 270
    Width = 35
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    Caption = 'B:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 22
  end
  object Label4: TLabel
    Left = 57
    Top = 309
    Width = 35
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    Caption = 'C:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 22
  end
  object Label5: TLabel
    Left = 57
    Top = 344
    Width = 37
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    Caption = 'D:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 24
  end
  object Label6: TLabel
    Left = 57
    Top = 382
    Width = 34
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    Caption = 'E:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 21
  end
  object Label7: TLabel
    Left = 331
    Top = 439
    Width = 174
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'Correct Answer:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 318
  end
  object Label8: TLabel
    Left = 57
    Top = 443
    Width = 81
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Score:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 68
  end
  object Label9: TLabel
    Left = 56
    Top = 72
    Width = 65
    Height = 23
    Caption = 'Level:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 154
    Top = 8
    Width = 299
    Height = 32
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Questions Register'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 286
  end
  object Edit2: TEdit
    Left = 86
    Top = 236
    Width = 491
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    TabOrder = 2
    ExplicitWidth = 478
  end
  object Edit3: TEdit
    Left = 85
    Top = 272
    Width = 491
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    TabOrder = 3
    ExplicitWidth = 478
  end
  object Edit4: TEdit
    Left = 85
    Top = 309
    Width = 491
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    TabOrder = 4
    ExplicitWidth = 478
  end
  object Edit5: TEdit
    Left = 87
    Top = 346
    Width = 489
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    TabOrder = 5
    ExplicitWidth = 476
  end
  object Edit6: TEdit
    Left = 87
    Top = 384
    Width = 489
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    TabOrder = 6
    Text = 'NDA'
    ExplicitWidth = 476
  end
  object Edit7: TEdit
    Left = 184
    Top = 445
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object Button1: TButton
    Left = 56
    Top = 487
    Width = 520
    Height = 38
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 9
    OnClick = Button1Click
    ExplicitWidth = 507
  end
  object UpDown1: TUpDown
    Left = 249
    Top = 445
    Width = 16
    Height = 21
    Associate = Edit7
    Increment = 5
    TabOrder = 10
  end
  object ComboBoxEx1: TComboBoxEx
    Left = 511
    Top = 444
    Width = 65
    Height = 22
    ItemsEx = <
      item
        Caption = 'A'
      end
      item
        Caption = 'B'
      end
      item
        Caption = 'C'
      end
      item
        Caption = 'D'
      end
      item
        Caption = 'E'
      end>
    Style = csExDropDownList
    Anchors = [akTop, akRight]
    TabOrder = 8
    ExplicitLeft = 498
  end
  object ComboBoxEx2: TComboBoxEx
    Left = 56
    Top = 101
    Width = 520
    Height = 22
    ItemsEx = <
      item
        Caption = 'B'#225'sico'
      end
      item
        Caption = 'Intermedi'#225'rio'
      end
      item
        Caption = 'Conference'
      end>
    Style = csExDropDownList
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    ExplicitWidth = 507
  end
  object RichEdit1: TRichEdit
    Left = 57
    Top = 161
    Width = 519
    Height = 43
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Zoom = 100
    OnKeyPress = RichEdit1KeyPress
    ExplicitWidth = 506
  end
end
