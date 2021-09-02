unit ContentPictures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls,ShellApi;

type
  TForm9 = class(TForm)
    BG: TImage;
    Image1: TImage;
    Label2: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  id1,id2,id3:integer;
  curId:integer;
  PathVideo1,PathVideo2,PathVideo3: string;

implementation
uses Unit5, DB, Picture;
{$R *.dfm}

procedure TForm9.FormShow(Sender: TObject);
begin
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Pictures WHERE artistID='+Unit5.curId.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');

  id1 := Form6.ADOQuery1.FieldByName('Id').Value;
  Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('pathPictures').Value);
  Label1.Caption := Form6.ADOQuery1.FieldByName('Name').Value;
  if Form6.ADOQuery1.FieldByName('videoPath').Value <> null then
      PathVideo1:= ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('videoPath').Value else
      Image5.Visible:=false;

  Form6.ADOQuery1.Next;

  id2 := Form6.ADOQuery1.FieldByName('Id').Value;
  Image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('pathPictures').Value);
  Label3.Caption := Form6.ADOQuery1.FieldByName('Name').Value;
   if Form6.ADOQuery1.FieldByName('videoPath').Value <> null then
      PathVideo2:= ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('videoPath').Value else
      Image6.Visible:=false;
  Form6.ADOQuery1.Next;

  id3 := Form6.ADOQuery1.FieldByName('Id').Value;
  Image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('pathPictures').Value);
  Label4.Caption := Form6.ADOQuery1.FieldByName('Name').Value;
  if Form6.ADOQuery1.FieldByName('videoPath').Value <> null then
      PathVideo3:= ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('videoPath').Value else
      Image7.Visible:=false;

end;

procedure TForm9.Image1Click(Sender: TObject);
begin
    Form5.Show;
    Form9.Hide;
end;

procedure TForm9.Image5Click(Sender: TObject);
begin
ShellExecute(Handle, 'open','C:\Program Files (x86)\Windows Media Player\wmplayer.exe', PWideChar(WideString(PathVideo1)), nil,SW_SHOWNORMAL);
end;

procedure TForm9.Image6Click(Sender: TObject);
begin
ShellExecute(Handle, 'open','C:\Program Files (x86)\Windows Media Player\wmplayer.exe', PWideChar(WideString(PathVideo2)), nil,SW_SHOWNORMAL);
end;

procedure TForm9.Image7Click(Sender: TObject);
begin
ShellExecute(Handle, 'open','C:\Program Files (x86)\Windows Media Player\wmplayer.exe', PWideChar(WideString(PathVideo3)), nil,SW_SHOWNORMAL);
end;

end.
