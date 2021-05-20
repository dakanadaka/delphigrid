unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, Vcl.StdCtrls,
  FireDAC.Phys.SQLite, Data.DB, FireDAC.Comp.Client, fireDAC.Dapt,
   Vcl.Grids;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    Button1: TButton;
    Button2: TButton;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    Memo1.Text := '';
    FDConnection1.DriverName := 'SQLITE';
    FDConnection1.Params.Values['Database'] :=
    'sqlite3\db.db';
    try
      // Establish the connection.
      FDConnection1.Open;
      Button2.Enabled := True;
      Memo1.Lines.Add('Connection established!');
    except
      on E: EDatabaseError do
        Memo1.Lines.Add('Exception raised with message' + E.Message);
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
  var
    query: TFDQuery;
    I : Integer;
begin
  query := TFDQuery.Create(nil);

  try
    query.Connection := FDConnection1;
    query.SQL.Text := 'SELECT * FROM users';
    query.Open();
    Memo1.Text := '';
    // Add the field names from the table.
    Memo1.Lines.Add(String.Format('|%8s|%25s|%25s|', [' ID ', ' Firstname ',
      ' Lastname ']));
    I := 0;
    // Add one line to the memo for each record in the table.
    while not query.Eof do
    begin
      I := I + 1;
      //StringGrid1.Parent := Form1;
      //StringGrid1.Align := alClient;
      StringGrid1.Cells[I,I] := query.FieldByName('email').AsString;
      Memo1.Lines.Add(String.Format('|%8d|%-25s|%-25s|%-25s|',
        [query.FieldByName('id').AsInteger, query.FieldByName('firstname').AsString,
        query.FieldByName('lastname').AsString,
        query.FieldByName('email').AsString
        ]));
      query.Next;
    end;

  finally
    query.Close;
    query.DisposeOf;
  end;

end;

end.
