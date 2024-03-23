inherited frmEmp: TfrmEmp
  Caption = 'Empresas'
  TextHeight = 15
  inherited Panel1: TPanel
    inherited btnAdd: TSpeedButton
      OnClick = btnAddClick
    end
    inherited btnEdt: TSpeedButton
      Left = 76
      ExplicitLeft = 76
    end
  end
  inherited dbgGrid: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'CODEMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DSCEMP'
        Width = 267
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSCEMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITEMP'
        Visible = True
      end>
  end
  inherited dts: TDataSource
    DataSet = dtsEmp
  end
  object dtsEmp: TFDQuery
    Active = True
    Connection = dmDataModule.conexao
    SQL.Strings = (
      'SELECT * FROM TBLEMP')
    Left = 24
    Top = 200
    object dtsEmpCODEMP: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODEMP'
      Origin = 'CODEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtsEmpDSCEMP: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 55
      FieldName = 'DSCEMP'
      Origin = 'DSCEMP'
      Required = True
      Size = 250
    end
    object dtsEmpINSCEMP: TStringField
      DisplayLabel = 'Inscri'#231#227'o'
      FieldName = 'INSCEMP'
      Origin = 'INSCEMP'
      Required = True
      Size = 18
    end
    object dtsEmpSITEMP: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 10
      FieldName = 'SITEMP'
      Origin = 'SITEMP'
      Required = True
    end
  end
end
