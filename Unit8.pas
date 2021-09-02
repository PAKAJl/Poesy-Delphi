unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm8 = class(TForm)
    BG: TImage;
    Image1: TImage;
    Label4: TLabel;
    Image3: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit7;

procedure TForm8.Image1Click(Sender: TObject);
begin
  Form1.Show;
  Form8.Close;
end;

procedure TForm8.Image2Click(Sender: TObject);
begin
  Form4.Show;
  Form8.Close;
end;

procedure TForm8.Image3Click(Sender: TObject);
begin
  Form7.Show;
  Form8.Close;
end;

end.
