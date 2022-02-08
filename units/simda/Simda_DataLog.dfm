object frmSimdaDataLog: TfrmSimdaDataLog
  Left = 0
  Top = 0
  ClientHeight = 530
  ClientWidth = 1009
  Caption = 'Tampilkan 100 Aktivitas Terakhir Penggunan'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object dbgSimdaDataLog: TUniDBGrid
    Left = 0
    Top = 0
    Width = 1009
    Height = 530
    Hint = ''
    DataSource = dsqSimdaDataLog
    WebOptions.FetchAll = True
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 0
    Columns = <
      item
        FieldName = 'DataTime'
        Title.Alignment = taCenter
        Title.Caption = 'DataTime'
        Title.Font.Style = [fsBold]
        Width = 124
      end
      item
        FieldName = 'Category'
        Title.Alignment = taCenter
        Title.Caption = 'Aktivitas'
        Title.Font.Style = [fsBold]
        Width = 255
      end
      item
        FieldName = 'DataLog'
        Title.Alignment = taCenter
        Title.Caption = 'Data Log'
        Title.Font.Style = [fsBold]
        Width = 607
      end>
  end
  object qSimdaDataLog: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT TOP 100 * FROM webapp_BPKAD.dbo.AppSimda_Log'
      'WHERE Category LIKE '#39'%BPKADHST_SP%'#39
      'ORDER BY ID DESC ')
    Left = 280
    Top = 192
    object qSimdaDataLogId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qSimdaDataLogCategory: TStringField
      FieldName = 'Category'
      Origin = 'Category'
      Required = True
      Size = 50
    end
    object qSimdaDataLogDataLog: TStringField
      FieldName = 'DataLog'
      Origin = 'DataLog'
      Required = True
      Size = 100
    end
    object qSimdaDataLogDataTime: TSQLTimeStampField
      FieldName = 'DataTime'
      Origin = 'DataTime'
      Required = True
    end
  end
  object dsqSimdaDataLog: TDataSource
    DataSet = qSimdaDataLog
    Left = 464
    Top = 208
  end
end
