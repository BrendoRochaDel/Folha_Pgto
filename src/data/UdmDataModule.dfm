object dmDataModule: TdmDataModule
  OnCreate = DataModuleCreate
  Height = 353
  Width = 526
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Brendo-PC\Documents\projetos\delphi\Folha_Pgto' +
        '\banco\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'Protocol=TCPIP'
      'DriverID=FB')
    Connected = True
    Left = 32
    Top = 24
  end
  object qryEmp: TFDQuery
    Active = True
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
