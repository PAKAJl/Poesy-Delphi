unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls,   Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    BG: TImage;
    Label4: TLabel;
    Image1: TImage;
    Image3: TImage;
    Label2: TLabel;
    Image6: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Image7: TImage;
    Label1: TLabel;
    Image2: TImage;
    Image4: TImage;
    Label3: TLabel;
    Image8: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Image9: TImage;
    Label5: TLabel;
    Image5: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
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
  Form3: TForm3;
  ArtistsName,ArtistsDesc,ArtistsPathIcon: String;
  id: integer;

implementation

uses Unit1, Unit2, Unit3, Unit5, DB;
{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
id :=-1;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
 Form1.Show;
 Form3.Close;
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
  id:= 22;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form3.Hide;
end;

procedure TForm3.Image3Click(Sender: TObject);
begin
     id:= 21;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form3.Hide;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin
   id:= 23;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form3.Hide;
end;

procedure TForm3.Image5Click(Sender: TObject);
begin
  id:= 24;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form3.Hide;
end;

procedure TForm3.Image6Click(Sender: TObject);
begin
  id:= 25;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form3.Hide;
end;

procedure TForm3.Image7Click(Sender: TObject);
begin
  id:= 26;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form3.Hide;
end;

procedure TForm3.Image8Click(Sender: TObject);
begin
   id:= 27;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form3.Hide;
end;

procedure TForm3.Image9Click(Sender: TObject);
begin
  id:= 28;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form3.Hide;
end;

end.
