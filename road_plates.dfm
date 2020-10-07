object Main: TMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1058#1057' '#1076#1086#1088#1086#1078#1085#1099#1077' '#1087#1083#1080#1090#1099
  ClientHeight = 372
  ClientWidth = 644
  Color = clWindowText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 644
    Height = 5
    Align = alTop
    BevelOuter = bvSpace
    Color = clYellow
    ParentBackground = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 5
    Width = 644
    Height = 367
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvSpace
    BorderWidth = 5
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 511
      Top = 7
      Width = 128
      Height = 328
      BevelInner = bvRaised
      BevelOuter = bvNone
      BorderWidth = 1
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 6
        Top = 73
        Width = 113
        Height = 36
        Caption = 'PDF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object Button1: TButton
        Left = 6
        Top = 30
        Width = 113
        Height = 36
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' @mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object ShowReport: TCheckBox
      Left = 8
      Top = 341
      Width = 166
      Height = 17
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1086#1090#1095#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = ShowReportClick
    end
    object Panel4: TPanel
      Left = 1
      Top = 6
      Width = 510
      Height = 74
      BevelInner = bvRaised
      TabOrder = 2
      object Label1: TLabel
        Left = 3
        Top = 10
        Width = 92
        Height = 15
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1090#1091
        Color = clGradientActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 371
        Top = 10
        Width = 96
        Height = 15
        Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 3
        Top = 31
        Width = 123
        Height = 23
        Date = 43907.000000000000000000
        Time = 0.571621446761128000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object ComboBox1: TComboBox
        Left = 372
        Top = 31
        Width = 123
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Items.Strings = (
          #1042#1072#1089#1080#1083#1100#1095#1077#1085#1082#1086' '#1054'.'#1057
          #1064#1080#1087#1086#1074#1089#1082#1080#1081' '#1045'.'#1040)
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 80
      Width = 254
      Height = 255
      BevelInner = bvRaised
      Color = clGradientActiveCaption
      TabOrder = 3
      object Label3: TLabel
        Left = 8
        Top = 51
        Width = 101
        Height = 15
        Caption = #8470' '#1080' '#1076#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      end
      object Label4: TLabel
        Left = 8
        Top = 115
        Width = 105
        Height = 15
        Caption = #8470' '#1082#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 168
        Width = 91
        Height = 15
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1096#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 8
        Top = 224
        Width = 86
        Height = 15
        Caption = #1055#1083#1086#1097#1072#1076#1100' '#1084'.'#1082#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 5
        Width = 89
        Height = 15
        Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object RadioButton1: TRadioButton
        Left = 120
        Top = 5
        Width = 113
        Height = 17
        Caption = '3,0 * 1.2 * 0,22'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 120
        Top = 42
        Width = 45
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 120
        Top = 107
        Width = 45
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 120
        Top = 160
        Width = 125
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 120
        Top = 216
        Width = 125
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object MaskEdit1: TMaskEdit
        Left = 188
        Top = 43
        Width = 57
        Height = 23
        EditMask = '!99/99/00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 5
        Text = '  .  .  '
      end
      object MaskEdit2: TMaskEdit
        Left = 188
        Top = 107
        Width = 57
        Height = 23
        EditMask = '!99/99/00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 6
        Text = '  .  .  '
      end
    end
    object Panel6: TPanel
      Left = 257
      Top = 80
      Width = 254
      Height = 255
      BevelInner = bvRaised
      TabOrder = 4
      object Label7: TLabel
        Left = 9
        Top = 51
        Width = 101
        Height = 15
        Caption = #8470' '#1080' '#1076#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 9
        Top = 115
        Width = 105
        Height = 15
        Caption = #8470' '#1082#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 9
        Top = 168
        Width = 91
        Height = 15
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1096#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 9
        Top = 224
        Width = 86
        Height = 15
        Caption = #1055#1083#1086#1097#1072#1076#1100' '#1084'.'#1082#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 9
        Top = 5
        Width = 89
        Height = 15
        Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object RadioButton2: TRadioButton
        Left = 122
        Top = 5
        Width = 113
        Height = 17
        Caption = '3,0 * 1.5 * 0,22'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit5: TEdit
        Left = 122
        Top = 43
        Width = 45
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit6: TEdit
        Left = 122
        Top = 107
        Width = 45
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Edit7: TEdit
        Left = 122
        Top = 160
        Width = 123
        Height = 23
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Edit8: TEdit
        Left = 122
        Top = 216
        Width = 123
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object MaskEdit3: TMaskEdit
        Left = 188
        Top = 43
        Width = 57
        Height = 23
        EditMask = '!99/99/00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 5
        Text = '  .  .  '
      end
      object MaskEdit4: TMaskEdit
        Left = 188
        Top = 107
        Width = 57
        Height = 23
        EditMask = '!99/99/00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 6
        Text = '  .  .  '
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    ShowDialog = False
    FileName = #1044#1055
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    OpenAfterExport = False
    PrintOptimized = False
    Outline = True
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Title = 'for the ATC company'
    Author = #1042#1072#1089#1080#1083#1100#1095#1077#1085#1082#1086' '#1054'.'#1057
    Subject = 'FastReport PDF export'
    Creator = #1042#1072#1089#1080#1083#1100#1095#1077#1085#1082#1086' '#1054'.'#1057
    Producer = #1042#1072#1089#1080#1083#1100#1095#1077#1085#1082#1086' '#1054'.'#1057
    ProtectionFlags = [ePrint, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 519
    Top = 307
  end
  object frxReport1: TfrxReport
    Version = '6.6.17'
    DataSet = frxUserDataSet1
    DataSetName = 'frxUserDataSet1'
    DotMatrixReport = False
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43930.481389791700000000
    ReportOptions.LastChange = 43965.999401817100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnAfterPrint = frxReport1AfterPrint
    OnGetValue = frxReport1GetValue
    Left = 564
    Top = 267
    Datasets = <
      item
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'DateSet'
        Value = Null
      end
      item
        Name = 'DpSmol'
        Value = Null
      end
      item
        Name = 'order'
        Value = Null
      end
      item
        Name = 'OrderDate'
        Value = Null
      end
      item
        Name = 'equipment'
        Value = Null
      end
      item
        Name = 'DateEuipment'
        Value = Null
      end
      item
        Name = 'amount'
        Value = Null
      end
      item
        Name = 'SmolArea'
        Value = Null
      end
      item
        Name = 'DpBig'
        Value = Null
      end
      item
        Name = 'OrderBig'
        Value = Null
      end
      item
        Name = 'BigOrderDate'
        Value = Null
      end
      item
        Name = 'BigEquipment'
        Value = Null
      end
      item
        Name = 'DateBigEquipment'
        Value = Null
      end
      item
        Name = 'BigAmount'
        Value = Null
      end
      item
        Name = 'BigArea'
        Value = Null
      end
      item
        Name = 'NewName'
        Value = Null
      end
      item
        Name = 'Global'
        Value = Null
      end
      item
        Name = 'GlobalArea'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1043#1050' '#1040#1074#1090#1086#1058#1077#1093#1057#1090#1088#1086#1081
            '__________________'
            '__________________')
          ParentFont = False
        end
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'roboto'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1057#1083#1091#1078#1077#1073#1085#1072#1103' '#1079#1072#1087#1080#1089#1082#1072)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 185.196970000000000000
        Top = 185.196970000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'roboto'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #1086#1073' '#1086#1090#1075#1088#1091#1079#1082#1077' '#1076#1086#1088#1086#1078#1085#1099#1093' '#1087#1083#1080#1090' '#1086#1090)
        ParentFont = False
      end
      object Shape1: TfrxShapeView
        AllowVectorExport = True
        Left = 41.574830000000000000
        Top = 264.567100000000000000
        Width = 653.858690000000000000
        Height = 336.378170000000000000
        Frame.Typ = []
      end
      object Line1: TfrxLineView
        AllowVectorExport = True
        Left = 41.574830000000000000
        Top = 381.732530000000000000
        Width = 653.858690000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line2: TfrxLineView
        AllowVectorExport = True
        Left = 170.078850000000000000
        Top = 264.567100000000000000
        Height = 336.378170000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line3: TfrxLineView
        AllowVectorExport = True
        Left = 302.362400000000000000
        Top = 264.567100000000000000
        Height = 336.378170000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line4: TfrxLineView
        AllowVectorExport = True
        Left = 438.425480000000000000
        Top = 264.567100000000000000
        Height = 336.378170000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line5: TfrxLineView
        AllowVectorExport = True
        Left = 566.929500000000000000
        Top = 264.567100000000000000
        Height = 336.378170000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line6: TfrxLineView
        AllowVectorExport = True
        Left = 41.574830000000000000
        Top = 457.323130000000000000
        Width = 653.858690000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line7: TfrxLineView
        AllowVectorExport = True
        Left = 41.574830000000000000
        Top = 529.134200000000000000
        Width = 653.858690000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 45.354360000000000000
        Top = 275.905690000000000000
        Width = 120.944960000000000000
        Height = 68.031540000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072' '#1085#1072' '#1089#1082#1083#1072#1076#1077' '#1043#1055)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 173.858380000000000000
        Top = 264.567100000000000000
        Width = 124.724490000000000000
        Height = 109.606370000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1053#1086#1084#1077#1088' '#1080' '#1076#1072#1090#1072' '#1079#1072#1082#1072#1079#1072' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 291.023810000000000000
        Width = 120.944960000000000000
        Height = 52.913420000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1053#1086#1084#1077#1088' '#1080' '#1076#1072#1090#1072' '#1082#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1080' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 442.205010000000000000
        Top = 287.244280000000000000
        Width = 120.944960000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1096#1090#1091#1082)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 570.709030000000000000
        Top = 275.905690000000000000
        Width = 120.944960000000000000
        Height = 52.913420000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1055#1083#1086#1097#1072#1076#1100' '#1084'.'#1082#1074)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo9: TfrxMemoView
        AllowVectorExport = True
        Left = 41.574830000000000000
        Top = 642.520100000000000000
        Width = 563.149970000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #1048#1089#1087#1088#1072#1074#1083#1077#1085#1085#1099#1077' '#1074#1077#1076#1086#1084#1086#1089#1090#1080' '#1074#1099#1076#1072#1085#1099' '#1074#1086#1076#1080#1090#1077#1083#1102' '#1076#1083#1103' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1076#1077#1089#1087#1077#1090#1095#1077#1088#1091)
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        AllowVectorExport = True
        Left = 41.574830000000000000
        Top = 676.535870000000000000
        Width = 559.370440000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #1050#1086#1087#1080#1103' '#1089#1083#1091#1078#1077#1073#1085#1086#1081' '#1079#1072#1087#1080#1089#1082#1080' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1072' '#1074' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1102)
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 173.858380000000000000
        Top = 408.189240000000000000
        Width = 124.724490000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1086#1090)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo12: TfrxMemoView
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 408.189240000000000000
        Width = 120.944960000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1086#1090)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        AllowVectorExport = True
        Left = 45.354360000000000000
        Top = 536.693260000000000000
        Width = 117.165430000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1080#1090#1086#1075#1086' :')
        ParentFont = False
        VAlign = vaCenter
      end
      object NewName: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 41.574830000000000000
        Top = 721.890230000000000000
        Width = 408.189240000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[NewName]')
        ParentFont = False
      end
      object DateSet: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 427.086890000000000000
        Top = 185.196970000000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[DateSet]')
        ParentFont = False
      end
      object DpSmol: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 45.354360000000000000
        Top = 389.291590000000000000
        Width = 120.944960000000000000
        Height = 60.472480000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DpSmol]')
        ParentFont = False
        VAlign = vaCenter
      end
      object order: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 173.858380000000000000
        Top = 389.291590000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[order]')
        ParentFont = False
        VAlign = vaCenter
      end
      object OrderDate: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 173.858380000000000000
        Top = 430.866420000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[OrderDate]')
        ParentFont = False
        VAlign = vaCenter
      end
      object equipment: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 389.291590000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[equipment]')
        ParentFont = False
        VAlign = vaCenter
      end
      object DateEuipment: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 430.866420000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DateEuipment]')
        ParentFont = False
        VAlign = vaCenter
      end
      object amount: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 442.205010000000000000
        Top = 389.291590000000000000
        Width = 120.944960000000000000
        Height = 60.472480000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[amount]')
        ParentFont = False
        VAlign = vaCenter
      end
      object SmolArea: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 570.709030000000000000
        Top = 389.291590000000000000
        Width = 120.944960000000000000
        Height = 60.472480000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[SmolArea]')
        ParentFont = False
        VAlign = vaCenter
      end
      object DpBig: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 45.354360000000000000
        Top = 464.882190000000000000
        Width = 120.944960000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DpBig]')
        ParentFont = False
        VAlign = vaCenter
      end
      object OrderBig: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 173.858380000000000000
        Top = 461.102660000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[OrderBig]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        AllowVectorExport = True
        Left = 173.858380000000000000
        Top = 483.779840000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1086#1090)
        ParentFont = False
        VAlign = vaCenter
      end
      object BigOrderDate: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 173.858380000000000000
        Top = 502.677490000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[BigOrderDate]')
        ParentFont = False
        VAlign = vaCenter
      end
      object BigEquipment: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 464.882190000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[BigEquipment]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo15: TfrxMemoView
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 483.779840000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1086#1090)
        ParentFont = False
        VAlign = vaCenter
      end
      object DateBigEquipment: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 502.677490000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DateBigEquipment]')
        ParentFont = False
        VAlign = vaCenter
      end
      object BigAmount: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 442.205010000000000000
        Top = 464.882190000000000000
        Width = 120.944960000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[BigAmount]')
        ParentFont = False
        VAlign = vaCenter
      end
      object BigArea: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 570.709030000000000000
        Top = 464.882190000000000000
        Width = 120.944960000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[BigArea]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Global: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 442.205010000000000000
        Top = 536.693260000000000000
        Width = 120.944960000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Global]')
        ParentFont = False
        VAlign = vaCenter
      end
      object GlobalArea: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 570.709030000000000000
        Top = 536.693260000000000000
        Width = 120.944960000000000000
        Height = 56.692950000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[GlobalArea]')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxUserDataSet1: TfrxUserDataSet
    RangeEnd = reCount
    RangeEndCount = 1
    UserName = 'frxUserDataSet1'
    Left = 520
    Top = 264
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 567
    Top = 308
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 519
    Top = 220
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 567
    Top = 220
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 519
    Top = 180
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 567
    Top = 180
  end
end
