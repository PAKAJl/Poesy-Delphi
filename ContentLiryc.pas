unit ContentLiryc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TForm11 = class(TForm)
    BG: TImage;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Label1: TLabel;
    Memo2: TMemo;
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation
  uses Unit5, DB;
{$R *.dfm}

procedure TForm11.FormShow(Sender: TObject);
begin
 Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add('SELECT * FROM Lyrics WHERE artistID='+Unit5.curId.ToString+';');
  Form6.ADOQuery1.Open;
  if Form6.ADOQuery1.IsEmpty then ShowMessage('ops');


  Label1.Caption := Form6.ADOQuery1.FieldByName('Name_lir').Value;
    Memo1.Text :=  Form6.ADOQuery1.FieldByName('Text_lyric').Value;

  Form6.ADOQuery1.Next;


 Label3.Caption := Form6.ADOQuery1.FieldByName('Name_lir').Value;
    Memo2.Text :=  Form6.ADOQuery1.FieldByName('Text_lyric').Value;
   Form6.ADOQuery1.Next;

  
  end;

procedure TForm11.Image1Click(Sender: TObject);
begin
       Form5.Show;
    Form11.Hide;
end;

end.
