inherited frmCadEmp: TfrmCadEmp
  Caption = 'Cadastro Empresa'
  ClientHeight = 291
  ClientWidth = 414
  ExplicitWidth = 426
  ExplicitHeight = 329
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 235
    Width = 414
    ExplicitTop = 234
    ExplicitWidth = 410
    inherited btnCon: TSpeedButton
      Left = 154
      ExplicitLeft = 154
    end
    inherited btnCan: TSpeedButton
      Left = 218
      ExplicitLeft = 218
    end
  end
  object RadioGroup1: TRadioGroup [1]
    Left = 18
    Top = 24
    Width = 377
    Height = 49
    Caption = 'Nome da Empresa'
    TabOrder = 1
  end
  object RadioGroup2: TRadioGroup [2]
    Left = 18
    Top = 89
    Width = 377
    Height = 49
    Caption = 'CNPJ Empresa'
    TabOrder = 2
  end
  object edtIns: TDBEdit [3]
    Left = 27
    Top = 108
    Width = 358
    Height = 23
    DataField = 'INSCEMP'
    DataSource = dts
    TabOrder = 3
  end
  object edtNom: TDBEdit [4]
    Left = 27
    Top = 42
    Width = 358
    Height = 23
    DataField = 'DSCEMP'
    DataSource = dts
    TabOrder = 4
  end
  object drgSit: TDBRadioGroup [5]
    Left = 18
    Top = 153
    Width = 377
    Height = 49
    Caption = 'Situa'#231#227'o da Empresa'
    Columns = 2
    DataField = 'SITEMP'
    DataSource = dts
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 5
    Values.Strings = (
      '1'
      '0')
  end
  inherited dts: TDataSource
    DataSet = cdsEmp
    Left = 8
    Top = 240
  end
  object cdsEmp: TFDQuery
    Connection = dmDataModule.conexao
    SQL.Strings = (
      'SELECT * FROM TBLEMP WHERE CODEMP = :iCodEmp')
    Left = 54
    Top = 240
    ParamData = <
      item
        Name = 'ICODEMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEmpCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'CODEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmpDSCEMP: TStringField
      FieldName = 'DSCEMP'
      Origin = 'DSCEMP'
      Required = True
      Size = 250
    end
    object cdsEmpINSCEMP: TStringField
      FieldName = 'INSCEMP'
      Origin = 'INSCEMP'
      Required = True
      Size = 18
    end
    object cdsEmpSITEMP: TIntegerField
      DefaultExpression = '1'
      FieldName = 'SITEMP'
      Origin = 'SITEMP'
      Required = True
    end
  end
end
