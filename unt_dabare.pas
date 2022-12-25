unit unt_dabare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDCustomLabelFill,
  LMDLabelFill, jpeg;

type
  Tfrm_dabare = class(TForm)
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Timer1: TTimer;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dabare: Tfrm_dabare;

implementation

{$R *.dfm}

procedure Tfrm_dabare.FormShow(Sender: TObject);
var t:HRGN;
begin
    t:=CreateRoundRectRgn(0,0,Width,Height,50,50);
    SetWindowRgn(Handle,t,true);
end;

procedure Tfrm_dabare.Timer1Timer(Sender: TObject);
begin
 close;
end;

end.
