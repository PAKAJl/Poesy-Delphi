unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm7 = class(TForm)
    BG: TImage;
    Image1: TImage;
    Label4: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Image4: TImage;
    Label3: TLabel;
    Image5: TImage;
    Label5: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  ArtistsName,ArtistsDesc,ArtistsPathIcon: String;
  id: integer;

implementation

{$R *.dfm}
uses  Unit8, DB, Unit5;

procedure TForm7.FormShow(Sender: TObject);
begin
  id := -1;
end;

procedure TForm7.Image1Click(Sender: TObject);
begin
  Form8.Show;
  Form7.Close;
end;

procedure TForm7.Image2Click(Sender: TObject);
begin
    id:=9;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form7.Hide;
end;

procedure TForm7.Image3Click(Sender: TObject);
begin
id:=10;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form7.Hide;
end;
procedure TForm7.Image4Click(Sender: TObject);
begin
  id:=11;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form7.Hide;
end;

procedure TForm7.Image5Click(Sender: TObject);
begin
    id:=12;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form7.Hide;
end;
end.
