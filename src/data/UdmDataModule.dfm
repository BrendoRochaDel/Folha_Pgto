object dmDataModule: TdmDataModule
  Height = 353
  Width = 526
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\brend\OneDrive\Documentos\Embarcadero\Studio\P' +
        'rojects\Folha_Pgto\banco\AULACLIENTS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Left = 32
    Top = 24
  end
  object qryEmp: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM TBLEMP WHERE SITEMP = 1')
    Left = 104
    Top = 24
  end
  object dtsEmp: TDataSource
    DataSet = qryEmp
    Left = 104
    Top = 80
  end
end
