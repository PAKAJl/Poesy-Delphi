unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    BG: TImage;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image3: TImage;
    procedure FormShoww(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  BackForm :TForm;
  curId: integer;

implementation

{$R *.dfm}

uses Unit2, Unit7, Unit3, Unit4, ContentLiryc,ContentPictures,ContentMusic;

procedure TForm5.FormShoww(Sender: TObject);
begin
  if Unit2.id <> -1 then
  begin
  curId := Unit2.id;
   BackForm := Form4;
  Label2.Caption := Unit2.ArtistsName;
  Label1.Caption := Unit2.ArtistsDesc;
  Label1.Width:= 537;
  Label1.Height:= 473;
  Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+Unit2.ArtistsPathIcon);
  end;
  if Unit7.id <> -1 then
  begin
  curId := Unit7.id;
   BackForm := Form7;
  Label2.Caption := Unit7.ArtistsName;
  Label1.Caption := Unit7.ArtistsDesc;
  Label1.Width:= 537;
  Label1.Height:= 473;
  Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+Unit7.ArtistsPathIcon);
  end;
  if Unit3.id <> -1 then
  begin
  curId := Unit3.id;
  BackForm := Form2;
  Label2.Caption := Unit3.ArtistsName;
  Label1.Caption := Unit3.ArtistsDesc;
  Label1.Width:= 537;
  Label1.Height:= 473;
  Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+Unit3.ArtistsPathIcon);
  end;
  if Unit4.id <> -1 then
  begin
  curId := Unit4.id;
  BackForm := Form3;
  Label2.Caption := Unit4.ArtistsName;
  Label1.Caption := Unit4.ArtistsDesc;
  Label1.Width:= 537;
  Label1.Height:= 473;
  Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+Unit4.ArtistsPathIcon);
  end;
end;

procedure TForm5.Image1Click(Sender: TObject);
begin
  Unit3.id := -1;
  Unit2.id := -1;
  Unit7.id := -1;
  Unit4.id := -1;
  BackForm.Show;
  Form5.Close;
end;

procedure TForm5.Image3Click(Sender: TObject);
begin
  if Unit2.id <> -1 then
  begin
    Form9.Show;
    Form5.Hide;
  end;
  if Unit7.id <> -1 then
  begin
    Form9.Show;
    Form5.Hide;
  end;
  if Unit3.id <> -1 then
  begin
    Form10.Show;
    Form5.Hide;
  end;
  if Unit4.id <> -1 then
  begin
    Form11.Show;
    Form5.Hide;
  end;
end;

end.
