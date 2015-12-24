unit Unit_dll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TFormdll = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function ShowModalForm:Integer;
var
  Formdll: TFormdll;

implementation

{$R *.dfm}
function ShowModalForm:Integer;
begin
 formdll:=TFormdll.Create(Application);
 Result:=formdll.ShowModal();
 formdll.Free;
end;
procedure TFormdll.Button1Click(Sender: TObject);
begin
 formdll.Close;
end;

end.
