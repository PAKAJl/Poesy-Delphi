unit Picture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.MPlayer, Vcl.OleCtrls, WMPLib_TLB,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompSilverlight, ShellApi;

type
  TForm12 = class(TForm)
    BG: TImage;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  PathVideo: string;
implementation
uses DB, ContentPictures;
{$R *.dfm}
function CheckSubStr(SubStr, MainStr: string): Boolean;
begin
  Result := False;
  if (Pos(SubStr, MainStr) = 0) = False then Result := True;
end;

procedure TForm12.Button1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open','C:\Program Files (x86)\Windows Media Player\wmplayer.exe', PWideChar(WideString(PathVideo)), nil,SW_SHOWNORMAL);
end;

procedure TForm12.FormShow(Sender: TObject);
begin
Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Pictures WHERE Id='+inttostr(ContentPictures.curId)+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('pathPictures').Value);
  if Form6.ADOQuery1.FieldByName('videoPath').Value <> null then
      PathVideo:= ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('videoPath').Value else
      Button1.Visible:=false;
  Label2.Caption := Form6.ADOQuery1.FieldByName('Name').Value;
  Label1.Caption := Form6.ADOQuery1.FieldByName('Description').Value;
end;

procedure TForm12.Image1Click(Sender: TObject);
begin
  Form9.Show;
  Form12.Hide;
end;


end.
