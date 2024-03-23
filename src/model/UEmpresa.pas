unit UEmpresa;

interface

type
  TEmpresa = class
    private
      FCodEmp: integer;
      FDscEmp: string;
      FInsEmp: string;
      FSitEmp: integer;

    published
      property CodEmp: integer read FCodEmp write FCodEmp;
      property DscEmp: string  read FDscEmp write FDscEmp;
      property InsEmp: string  read FInsEmp write FInsEmp;
      property SitEmp: integer read FSitEmp write FSitEmp;
  end;

implementation

end.
