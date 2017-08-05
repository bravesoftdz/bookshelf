unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql51conn, sqldb, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, DbCtrls, Buttons, Unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    MySQL51Connection1: TMySQL51Connection;
    Ayarlar: TSpeedButton;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  MySQL51Connection1.HostName := 'localhost';
  MySQL51Connection1.UserName:= 'root';
  MySQL51Connection1.Password:= '3900878';
  MySQL51Connection1.DatabaseName:='sakila';
  MySQL51Connection1.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.Show;
end;

end.

