object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 453
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 39
    Width = 345
    Height = 290
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 64
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object nxServerEngine1: TnxServerEngine
    ServerName = ''
    Options = []
    TableExtension = 'nx1'
    Left = 256
    Top = 344
  end
  object nxSession1: TnxSession
    ActiveDesigntime = True
    ServerEngine = nxRemoteServerEngine1
    Left = 64
    Top = 344
  end
  object nxDatabase1: TnxDatabase
    ActiveRuntime = True
    ActiveDesigntime = True
    Session = nxSession1
    AliasName = 'Mitarbeiter'
    Left = 112
    Top = 392
  end
  object nxQuery1: TnxQuery
    Left = 8
    Top = 344
  end
  object nxRemoteServerEngine1: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxWinsockTransport1
    Left = 24
    Top = 392
  end
  object nxWinsockTransport1: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameDesigntime = '127.0.0.1'
    Left = 176
    Top = 344
  end
  object DataSource1: TDataSource
    DataSet = nxTable1
    Left = 120
    Top = 344
  end
  object nxTable1: TnxTable
    ActiveRuntime = True
    ActiveDesigntime = True
    Database = nxDatabase1
    TableName = 'Mitarbeiter'
    Left = 176
    Top = 392
  end
end
