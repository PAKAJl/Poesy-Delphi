unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls,  Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    BG: TImage;
    Label4: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Image3: TImage;
    Image2: TImage;
    Label1: TLabel;
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
  Form2: TForm2;
  ArtistsName,ArtistsDesc,ArtistsPathIcon: String;
  id: integer;

implementation
              uses Unit1, Unit2, Unit4,DB, Unit5;
{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
  id :=-1;
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
 Form1.Show;
  Form2.Close;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  id:= 14;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form2.Hide;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
   id:= 13;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form2.Hide;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
   id:= 15;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form2.Hide;
end;

procedure TForm2.Image5Click(Sender: TObject);
begin
     id:= 16;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form2.Hide;
end;

procedure TForm2.Image6Click(Sender: TObject);
begin
     id:= 17;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form2.Hide;
end;

procedure TForm2.Image7Click(Sender: TObject);
begin
     id:= 18;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form2.Hide;
end;

procedure TForm2.Image8Click(Sender: TObject);
begin
     id:= 19;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form2.Hide;
end;

procedure TForm2.Image9Click(Sender: TObject);
begin
     id:= 20;
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Artists WHERE ID='+id.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');
  ArtistsName := Form6.ADOQuery1.FieldByName('Artist_name').Value;
  ArtistsDesc := Form6.ADOQuery1.FieldByName('Description').Value;
  ArtistsPathIcon:= Form6.ADOQuery1.FieldByName('imagePath').Value;
  Form5.Show;
  Form2.Hide;
end;

end.
