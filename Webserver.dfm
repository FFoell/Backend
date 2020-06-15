object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'HTTP-Server'
  ClientHeight = 303
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    396
    303)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object Label3: TLabel
    Left = 192
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Passwort:'
  end
  object Edit1: TEdit
    Left = 54
    Top = 29
    Width = 33
    Height = 21
    TabOrder = 0
    Text = '80'
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 88
    Width = 257
    Height = 177
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Protokoll(User: 0)'
    TabOrder = 1
    DesignSize = (
      257
      177)
    object Memo1: TMemo
      Left = 8
      Top = 16
      Width = 241
      Height = 145
      Anchors = [akLeft, akTop, akRight, akBottom]
      Lines.Strings = (
        'Server 1.0')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Edit2: TEdit
    Left = 54
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 93
    Top = 31
    Width = 124
    Height = 17
    Caption = 'Passwortgesichert'
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 246
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 24
    Top = 271
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Start'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 105
    Top = 271
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Stopp'
    Enabled = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 186
    Top = 271
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Clear'
    TabOrder = 7
    OnClick = Button3Click
  end
  object XPManifest1: TXPManifest
    Left = 192
    Top = 136
  end
  object Server: TIdHTTPServer
    Bindings = <>
    OnConnect = ServerConnect
    OnDisconnect = ServerDisconnect
    OnCommandGet = ServerCommandGet
    Left = 112
    Top = 144
  end
end
