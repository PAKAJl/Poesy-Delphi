unit ContentMusic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage,ShellApi;

type
  TForm10 = class(TForm)
    BG: TImage;
    Image1: TImage;
    Label2: TLabel;
    Image7: TImage;
    Label4: TLabel;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label3: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  PathVideo1,PathVideo2,PathVideo3:string;
implementation
     uses Unit5, DB;
{$R *.dfm}

procedure TForm10.FormShow(Sender: TObject);
begin
   Form6.ADOQuery1.SQL.Clear;
ShowMessage(inttostr(Unit5.curId));
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Music WHERE ArtistsID='+#39+inttostr(Unit5.curId)+#39+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');


  Label1.Caption := Form6.ADOQuery1.FieldByName('Music_name').Value;
  if Form6.ADOQuery1.FieldByName('pathMusic').Value <> null then
  PathVideo1:= ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('pathMusic').Value ;
  Form6.ADOQuery1.Next;

 Label4.Caption := Form6.ADOQuery1.FieldByName('Music_name').Value;
   if Form6.ADOQuery1.FieldByName('pathMusic').Value <> null then
      PathVideo2:= ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('pathMusic').Value;
      Form6.ADOQuery1.Next;

  Label3.Caption := Form6.ADOQuery1.FieldByName('Music_name').Value;
  if Form6.ADOQuery1.FieldByName('pathMusic').Value <> null then
      PathVideo3:= ExtractFilePath(Application.ExeName)+'\Resources\Images\Pictures\'+Form6.ADOQuery1.FieldByName('pathMusic').Value;
end;

procedure TForm10.Image1Click(Sender: TObject);
begin
Form5.Show;
Form10.Hide;
end;

procedure TForm10.Image2Click(Sender: TObject);
begin
ShellExecute(Handle, 'open','C:\Program Files (x86)\Windows Media Player\wmplayer.exe', PWideChar(WideString(PathVideo1)), nil,SW_SHOWNORMAL);
end;

procedure TForm10.Image3Click(Sender: TObject);
begin
ShellExecute(Handle, 'open','C:\Program Files (x86)\Windows Media Player\wmplayer.exe', PWideChar(WideString(PathVideo3)), nil,SW_SHOWNORMAL);
end;

procedure TForm10.Image7Click(Sender: TObject);
begin
ShellExecute(Handle, 'open','C:\Program Files (x86)\Windows Media Player\wmplayer.exe', PWideChar(WideString(PathVideo2)), nil,SW_SHOWNORMAL);
end;

end.
