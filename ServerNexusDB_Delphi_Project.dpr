program ServerNexusDB_Delphi_Project;

uses
  Vcl.Forms,
  ServerNexusDB_Delphi in 'ServerNexusDB_Delphi.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
