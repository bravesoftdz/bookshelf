unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql51conn, sqldb, FileUtil;

type

  { Tdm }

  Tdm = class(TDataModule)
    connection: TMySQL51Connection;
    query: TSQLQuery;
    transaction: TSQLTransaction;

    procedure DataModuleCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.lfm}

{ Tdm }

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  connection.HostName := 'localhost';
  connection.UserName:= 'root';
  connection.Password:= '3900878';
  connection.DatabaseName:='sakila';
  try
      connection.Open;
  except

  end;

end;

end.

