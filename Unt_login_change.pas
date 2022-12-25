unit Unt_login_change;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIButton, ExtCtrls, SUIForm;

type
  TFrm_login_change = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    suiBtaeed: TsuiButton;
    suibexit: TsuiButton;
    Elogin: TEdit;
    Edit1: TEdit;
    procedure suibexitClick(Sender: TObject);
    procedure updatelogin;
    procedure suiBtaeedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_login_change: TFrm_login_change;

implementation

uses unt_main, unt_login;

{$R *.dfm}
procedure TFrm_login_change.updatelogin;
begin

  Frm_login.ADOlogin.SQL.Text:='update t_login set login='+QuotedStr(Elogin.Text);
  Frm_login.ADOlogin.ExecSQL;
  MessageBox(Handle,'òœ «„‰Ì Ì ÃœÌœ Ã«Ìê“Ì‰ ‘œ !','»Â —Ê“ —”«‰Ì!',MB_ok or MB_ICONINFORMATION or MB_RTLREADING or MB_RIGHT);
  Elogin.Text:='';
  Edit1.Text:='';
end;

procedure TFrm_login_change.suibexitClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_login_change.suiBtaeedClick(Sender: TObject);
begin
  if Edit1.Text='' then
    MessageBox(Handle,'òœ ›⁄·Ì —« Ê«—œ ‰„«ÌÌœ','Œÿ« !',MB_ok or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
  else
  begin
    if trim(Edit1.Text)<>Frm_login.getloginfromdatabase then
      begin
        MessageBox(Handle,'òœ ›⁄·Ì òÂ Ê«—œ ‘œÂ «‘ »«Â «”  ° «Ã«“Â  €ÌÌ— ‰œ«—Ìœ','Œÿ« ! !',MB_ok or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
        Frm_login_change.Close;
      end
      else
          if (Elogin.Text='') and (Edit1.Text<>'') then
             MessageBox(Handle,'òœ ÃœÌœ —« Ê«—œ ‰„«ÌÌœ','Œÿ« !',MB_ok or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT)
          else
          if trim(Edit1.Text)=Frm_login.getloginfromdatabase then
            begin
              if MessageBox(Handle,'òœ «„‰Ì Ì ÃœÌœ Ã«Ìê“Ì‰ ‘Êœ ø',' «ÌÌœ »Â —Ê“ —”«‰Ì !',MB_YESNO or MB_ICONQUESTION or MB_RTLREADING or MB_RIGHT)=idyes then
                 updatelogin
              else
              begin
               MessageBox(Handle,'òœ «„‰Ì Ì  €ÌÌ—Ì ‰ò—œ !','·€Ê ⁄„·Ì«  !',MB_ok or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT);
               Elogin.Text:='';
               Edit1.Text:='';
              end;
            end;
  end;





end;

procedure TFrm_login_change.FormShow(Sender: TObject);
begin
  Edit1.Text:='';
  Elogin.Text:='';
end;

end.
