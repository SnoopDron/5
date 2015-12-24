unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function shet1(a,b,c:integer):integer; external 'lab2_dll.dll' ;
function shet2(a,b,c:integer):integer; external 'lab2_dll.dll' ;
function ShowModalForm:Integer; external 'lab2_dll.dll';

procedure TForm1.Button1Click(Sender: TObject);
begin
edit4.Text:=inttostr(shet1(strtoint(edit1.Text),strtoint(edit2.Text),strtoint(edit3.Text)));
edit5.Text:=inttostr(shet2(strtoint(edit1.Text),strtoint(edit2.Text),strtoint(edit3.Text)));
ShowModalForm;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
end;

end.
