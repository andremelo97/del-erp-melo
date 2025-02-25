﻿inherited FormFiltroVendas: TFormFiltroVendas
  Caption = 'Buscar vendas'
  ClientHeight = 395
  ClientWidth = 751
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 767
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 751
    Height = 105
    ExplicitWidth = 751
    ExplicitHeight = 105
    inherited Label1: TLabel
      Top = 52
      Width = 33
      Caption = 'Cliente'
      ExplicitTop = 52
      ExplicitWidth = 33
    end
    object Código: TLabel [1]
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel [2]
      Left = 214
      Top = 6
      Width = 88
      Height = 13
      Caption = 'Per'#237'odo de cria'#231#227'o'
    end
    inherited edtFiltro: TEdit
      Top = 71
      Width = 200
      ExplicitTop = 71
      ExplicitWidth = 200
    end
    inherited btnFiltro: TButton
      Left = 214
      Top = 71
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 214
      ExplicitTop = 71
    end
    inherited Panel2: TPanel
      Left = 628
      Height = 103
      ExplicitLeft = 628
      ExplicitHeight = 103
    end
    object edtDataCriacao1: TDateTimePicker
      Left = 214
      Top = 25
      Width = 99
      Height = 21
      Date = 44586.000000000000000000
      Time = 0.612371631941641700
      TabOrder = 3
    end
    object edtDataCriacao2: TDateTimePicker
      Left = 319
      Top = 25
      Width = 99
      Height = 21
      Date = 44586.000000000000000000
      Time = 0.612371631941641700
      TabOrder = 4
    end
    object edtCodigoVenda: TEdit
      Left = 8
      Top = 25
      Width = 100
      Height = 21
      TabOrder = 5
    end
    object cbFaturado: TCheckBox
      Left = 127
      Top = 27
      Width = 73
      Height = 17
      Caption = 'Faturado?'
      TabOrder = 6
    end
    object btnImprimir: TButton
      Left = 424
      Top = 25
      Width = 75
      Height = 21
      Caption = 'Imprimir'
      TabOrder = 7
      OnClick = btnImprimirClick
    end
    object btnAbrirCadastro: TButton
      Left = 376
      Top = 71
      Width = 88
      Height = 21
      Caption = 'Abrir Venda'
      TabOrder = 8
      OnClick = btnAbrirCadastroClick
    end
    object btnNovo: TButton
      Left = 295
      Top = 71
      Width = 75
      Height = 21
      Caption = 'Novo'
      TabOrder = 9
      OnClick = btnNovoClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 105
    Width = 751
    Height = 290
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT V.ID_VENDA,'
      '       V.ID_CLIENTE,'
      
        '       DECODE(C.TIPO_FJ, '#39'F'#39', c.NOME, c.RAZAO_SOCIAL) NOMECLIENT' +
        'E,'
      '       V.data_criacao,'
      '       COALESCE(V.faturado,'#39'N'#39') FATURADO,'
      '       V.data_faturado'
      ''
      'FROM VENDA V INNER JOIN CLIENTE C ON C.ID_CLIENTE = V.ID_CLIENTE')
    Left = 616
    Top = 200
    object fdQryFiltroID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryFiltroNOMECLIENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryFiltroDATA_CRIACAO: TDateField
      FieldName = 'DATA_CRIACAO'
      Origin = 'DATA_CRIACAO'
    end
    object fdQryFiltroFATURADO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object fdQryFiltroDATA_FATURADO: TDateField
      FieldName = 'DATA_FATURADO'
      Origin = 'DATA_FATURADO'
    end
  end
  inherited dsFiltro: TDataSource
    Left = 624
    Top = 256
  end
  inherited fdTransaction: TFDTransaction
    Left = 624
  end
  object frVendas: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44588.584806423600000000
    ReportOptions.LastChange = 44588.621714768520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 160
    Datasets = <
      item
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
      end>
    Variables = <>
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
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDAS')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        Condition = 'frDBVendas."NOMECLIENTE"'
        object frDBVendasNOMECLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NOMECLIENTE'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBVendas."NOMECLIENTE"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 75.590600000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr Unit'#225'rio')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 98.267780000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
        RowCount = 0
        Stretched = True
        object frDBVendasPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'PRODUTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBVendas."PRODUTO"]')
          ParentFont = False
        end
        object frDBVendasQTD: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTD'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."QTD"]')
          ParentFont = False
        end
        object frDBVendasUNITARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'UNITARIO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."UNITARIO"]')
          ParentFont = False
        end
        object frDBVendasSUBTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SUBTOTAL'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."SUBTOTAL"]')
          ParentFont = False
        end
        object frDBVendasDESCONTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."DESCONTO"]')
          ParentFont = False
        end
        object frDBVendasTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."TOTAL"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAIS:')
          ParentFont = False
        end
      end
    end
  end
  object frDBVendas: TfrxDBDataset
    UserName = 'frDBVendas'
    CloseDataSource = False
    DataSet = fdQryRelatorio
    BCDToCurrency = False
    DataSetOptions = []
    Left = 504
    Top = 224
  end
  object fdQryRelatorio: TFDQuery
    Active = True
    Connection = dmDados.fdConexao
    SQL.Strings = (
      'SELECT V.ID_VENDA,'
      '       V.ID_CLIENTE,'
      
        '       DECODE(C.TIPO_FJ, '#39'F'#39', c.NOME, c.RAZAO_SOCIAL) NOMECLIENT' +
        'E,'
      '       V.data_criacao,'
      '       COALESCE(V.faturado,'#39'N'#39') FATURADO,'
      '       V.data_faturado,'
      '       P.descricao as PRODUTO,'
      '       VI.qtd as QTD,'
      '       VI.Vlr_unit as UNITARIO,'
      '       VI.Vlr_unit * VI.qtd as SUBTOTAL,'
      '       COALESCE(VI.desconto,0) as DESCONTO,'
      
        '       (VI.Vlr_unit * VI.qtd ) - COALESCE(VI.desconto,0) as TOTA' +
        'L'
      ''
      ''
      'FROM VENDA V INNER JOIN CLIENTE C ON C.ID_CLIENTE = V.ID_CLIENTE'
      
        '             INNER JOIN VENDA_ITEM VI ON VI.ID_VENDA = V.ID_VEND' +
        'A'
      
        '             INNER JOIN PRODUTO P ON P.ID_PRODUTO = VI.ID_PRODUT' +
        'O'
      ''
      'WHERE 1=1'
      ''
      'ORDER BY DECODE(C.TIPO_FJ, '#39'F'#39', c.NOME, c.RAZAO_SOCIAL),'
      '         P.descricao')
    Left = 504
    Top = 280
    object fdQryRelatorioID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryRelatorioID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryRelatorioNOMECLIENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioDATA_CRIACAO: TDateField
      FieldName = 'DATA_CRIACAO'
      Origin = 'DATA_CRIACAO'
    end
    object fdQryRelatorioFATURADO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object fdQryRelatorioDATA_FATURADO: TDateField
      FieldName = 'DATA_FATURADO'
      Origin = 'DATA_FATURADO'
    end
    object fdQryRelatorioPRODUTO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioQTD: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioUNITARIO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'UNITARIO'
      Origin = 'VLR_UNIT'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioSUBTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioDESCONTO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
