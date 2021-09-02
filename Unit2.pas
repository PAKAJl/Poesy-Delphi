unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm4 = class(TForm)
    BG: TImage;
    Label4: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image3: TImage;
    Label2: TLabel;
    Image4: TImage;
    Label3: TLabel;
    Image5: TImage;
    Label5: TLabel;
    Image6: TImage;
    Label6: TLabel;
    Image7: TImage;
    Label7: TLabel;
    Image8: TImage;
    Label8: TLabel;
    Image9: TImage;
    Label9: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  ArtistsName,ArtistsDesc,ArtistsPathIcon: String;
  id: integer;
implementation


uses Unit5, DB, Unit1, Unit4, Unit3, Unit8;
{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
begin
 id := -1;
end;

procedure TForm4.Image1Click(Sender: TObject);
begin
  Form8.Show;
  Form4.Close;
end;

procedure TForm4.Image2Click(Sender: TObject);
begin
  id:=1;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form4.Hide;
end;

procedure TForm4.Image3Click(Sender: TObject);
begin
  id:= 2;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form4.Hide;
end;

procedure TForm4.Image4Click(Sender: TObject);
begin
  id:= 3;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form4.Hide;
end;

procedure TForm4.Image5Click(Sender: TObject);
begin
  id:= 4;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form4.Hide;
end;

procedure TForm4.Image6Click(Sender: TObject);
begin
  id:= 5;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form4.Hide;
end;

procedure TForm4.Image7Click(Sender: TObject);
begin
  id:= 6;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form4.Hide;
end;

procedure TForm4.Image8Click(Sender: TObject);
begin
  id:= 7;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form4.Hide;
end;

procedure TForm4.Image9Click(Sender: TObject);
begin
  id:= 8;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form4.Hide;
end;

end.
