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
    Button2: TButton;
    Button3: TButton;

    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 Tmyfun = function (a,b,c:integer):integer; stdcall;
 Tmydll= function ():Integer; //stdcall;
var
  Form1: TForm1;
  myfun1:Tmyfun;
  myfun2:Tmyfun;
  mydll:Tmydll;

implementation

{$R *.dfm}


procedure TForm1.Button3Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
var h:integer;
begin
h:=LoadLibrary('lab2_dll.dll');
if h<>0 then
begin
 @myfun1:=GetProcAddress(h,'shet1');
 @myfun2:=GetProcAddress(h,'shet2');
 @mydll:=GetProcAddress(h,'ShowModalForm');
 if @myfun1<>nil then
edit4.Text:=inttostr(myfun1(strtoint(edit1.Text),strtoint(edit2.Text),strtoint(edit3.Text)));
 if @myfun2<>nil then
edit5.Text:=inttostr(myfun2(strtoint(edit1.Text),strtoint(edit2.Text),strtoint(edit3.Text)));
 if @mydll<>nil then
   mydll;
 FreeLibrary(h);
end;


end;

end.
