unit ServerNexusDB_Delphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, nxreRemoteServerEngine, nxdb, nxllComponent,
  nxsdServerEngine, nxsrServerEngine;

type
  TForm1 = class(TForm)
    nxServerEngine1: TnxServerEngine;
    nxSession1: TnxSession;
    nxDatabase1: TnxDatabase;
    nxQuery1: TnxQuery;
    nxRemoteServerEngine1: TnxRemoteServerEngine;
    nxWinsockTransport1: TnxWinsockTransport;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    nxTable1: TnxTable;
    DBNavigator1: TDBNavigator;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
