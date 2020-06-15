unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdCustomTCPServer, IdCustomHTTPServer, IdHTTPServer, Vcl.XPMan, Vcl.StdCtrls,
  IdContext;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    Label3: TLabel;
    XPManifest1: TXPManifest;
    Server: TIdHTTPServer;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ServerConnect(AContext: TIdContext);
    procedure ServerDisconnect(AContext: TIdContext);
    procedure ServerCommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;
  user: Integer;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Server.DefaultPort:=Strtoint(Edit1.Text);
Server.Active:=True;

Memo1.Lines.Add('Status: '+ datetostr(date) + ' | '+timetostr(time) +': Server gestarted.');

Button1.Enabled:=False;
Button2.Enabled:=True;
Label1.Enabled:=False;
Edit1.Enabled:= False;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Server.Active:=False;

Memo1.Lines.Add('Status: '+ datetostr(date) + ' | '+timetostr(time) +': Server gestoppt.');

Button1.Enabled:=True;
Button2.Enabled:=False;
Label1.Enabled:=True;
Edit1.Enabled:= False;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Memo1.Lines.clear;
Memo1.Lines.Add('Server 1.0');
end;

procedure TForm2.ServerCommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
  var Stream: TFileStream;
  Groesse: String;
begin
  if (Checkbox1.Checked=True) and ((ARequestinfo.AuthUsername<>Edit2.Text) or (ARequestinfo.AuthPassword<>Edit3.Text)) then
  begin
    AResponseinfo.ContentText:='Benutzernamen und Kennwort bitte...';
    AResponseinfo.AuthRealm:='Scheff-Interface';
    end else
    begin
    if ARequestinfo.Document='/' then
    begin
      AResponseinfo.ContentType:='text/html';
      Stream:=TFileStream.Create('htdocs/test.html' ,fmOpenRead or FmShareDenyWrite);
      AResponseinfo.ContentStream:=Stream;
      setlength(Groesse, Stream.Size);
      Stream.Read(Groesse[1],Stream.Size);
      Memo1.Lines.Add(datetostr(date) + ' | ' + timetostr(time) + ': Client' + ARequestinfo.RemoteIP + ' hat die Datei test.html(' + inttostr(round(Stream.Size /1024)) +'kb) angefordert.');
    end;
  end;
end;

procedure TForm2.ServerConnect(AContext: TIdContext);
begin
User:=User +1;
Groupbox1.Caption:='Protokoll (User: ' + inttostr (user) + '):';
end;

procedure TForm2.ServerDisconnect(AContext: TIdContext);
begin
User:=User -1;
Groupbox1.Caption:='Protokoll (User: ' + inttostr (user) + '):';
end;

end.
