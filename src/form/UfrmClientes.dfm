inherited frmClientes: TfrmClientes
  Caption = 'Clientes'
  ClientWidth = 578
  ExplicitWidth = 578
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 578
  end
  inherited DBGrid1: TDBGrid
    Width = 578
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
  end
  inherited dts: TDataSource
    DataSet = qryCli
  end
  object qryCli: TFDQuery
    Active = True
    Connection = dmDataModule.conexao
    SQL.Strings = (
      'SELECT *'
      'FROM TBLCLI')
    Left = 24
    Top = 208
    object qryCliCODCLI: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCliNOMCLI: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMCLI'
      Origin = 'NOMCLI'
      Required = True
      Size = 50
    end
    object qryCliCPFCLI: TStringField
      DisplayLabel = 'Inscri'#231#227'o'
      FieldName = 'CPFCLI'
      Origin = 'CPFCLI'
      Required = True
      Size = 14
    end
  end
end
