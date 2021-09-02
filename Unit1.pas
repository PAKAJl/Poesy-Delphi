unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Unit4, Unit3;

type
  TForm1 = class(TForm)
    BG: TImage;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses Unit8, Unit2, Unit7;

procedure TForm1.FormShow(Sender: TObject);
begin
  Unit2.id:=-1;
  Unit7.id:=-1;
  Unit4.id:=-1;
  Unit3.id:=-1;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  Form8.Show;
  Form1.Hide;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
Form3.Show;
Form1.Hide;

end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  Form2.Show;
  Form1.Hide;
end;

end.
