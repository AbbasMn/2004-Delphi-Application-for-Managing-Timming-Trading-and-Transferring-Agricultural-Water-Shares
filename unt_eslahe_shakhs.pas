unit unt_eslahe_shakhs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIEdit;

type
  Tfrm_eslahe_shakhs = class(TForm)
    g_jadid: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    L_noe_nafar: TLabel;
    Label1: TLabel;
    e_name: TsuiEdit;
    e_family: TsuiEdit;
    e_pedar: TsuiEdit;
    e_sh_sh: TsuiEdit;
    Bt: TButton;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    e_hoseinie: TsuiEdit;
    l_code: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    l_az_name: TLabel;
    l_az_family: TLabel;
    l_az_name_pedar: TLabel;
    procedure RadioGroup1Click(Sender: TObject);
    procedure type_;
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    function check_tekrarie_kamel:boolean;
    procedure BtClick(Sender: TObject);
    function check_vorod_moshakhasate_kharida:boolean;
    procedure update_shakhs;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_shakhs: Tfrm_eslahe_shakhs;

implementation

uses unt_dm, unt_show_afrade_mojod, unt_vorode_moshakhasat;

{$R *.dfm}
procedure Tfrm_eslahe_shakhs.update_shakhs;
begin
   if RadioGroup1.ItemIndex=0 then
   begin
      dm.ADOQ_show_afrade_mojod2.SQL.Text:='update T_afrade_mojod set name='+QuotedStr(e_name.Text)+
      ',family='+QuotedStr(e_family.Text)+',name_pedar='+QuotedStr(e_pedar.Text)+
      ',sh_sh='+QuotedStr(e_sh_sh.Text);

      if CheckBox1.Checked then
        dm.ADOQ_show_afrade_mojod2.SQL.Text:=dm.ADOQ_show_afrade_mojod2.SQL.Text+',nafare_aval='+QuotedStr(ComboBox1.Text);

      dm.ADOQ_show_afrade_mojod2.SQL.Text:=dm.ADOQ_show_afrade_mojod2.SQL.Text+' where cod='+l_code.Caption;
      dm.ADOQ_show_afrade_mojod2.ExecSQL;
      ///////////////////////////
      dm.ADOQ_show_afrad.SQL.Text:='update t_sahamdaran set name='+QuotedStr(e_name.Text)+
      ',family='+QuotedStr(e_family.Text)+',name_pedar='+QuotedStr(e_pedar.Text);

      if CheckBox1.Checked then
        dm.ADOQ_show_afrad.SQL.Text:=dm.ADOQ_show_afrad.SQL.Text+',nafare_aval='+QuotedStr(ComboBox1.Text);

      dm.ADOQ_show_afrad.SQL.Text:=dm.ADOQ_show_afrad.SQL.Text+' where cod_shakhs='+l_code.Caption;
      dm.ADOQ_show_afrad.ExecSQL;

     //////////////////////////
      dm.ADOQ_show_afrad.SQL.Text:='update t_sahamdaran set az_name='+QuotedStr(e_name.Text)+
      ',az_family='+QuotedStr(e_family.Text)+',az_name_pedar='+QuotedStr(e_pedar.Text);

      dm.ADOQ_show_afrad.SQL.Text:=dm.ADOQ_show_afrad.SQL.Text+' where az_name='+QuotedStr(l_az_name.Caption)+
      'and az_family='+QuotedStr(l_az_family.Caption)+' and az_name_pedar='+QuotedStr(l_az_name_pedar.Caption);
      dm.ADOQ_show_afrad.ExecSQL;
     /////////////////////////
     frm_vorode_moshakhasat.shpw_afrade_mojod;

     MessageBox(Handle,pchar('������ ��� ������� ���� ����� ��'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);

   end
   else
   begin
      dm.ADOQ_show_afrade_mojod2.SQL.Text:='update T_afrade_mojod set name='+QuotedStr('')+
      ',name_pedar='+QuotedStr('')+',family='+QuotedStr(e_hoseinie.Text)+
      ',sh_sh='+QuotedStr('');


      if CheckBox1.Checked then
        dm.ADOQ_show_afrade_mojod2.SQL.Text:=dm.ADOQ_show_afrade_mojod2.SQL.Text+',nafare_aval='+QuotedStr(ComboBox1.Text);

      dm.ADOQ_show_afrade_mojod2.SQL.Text:=dm.ADOQ_show_afrade_mojod2.SQL.Text+' where cod='+l_code.Caption;
      dm.ADOQ_show_afrade_mojod2.ExecSQL;

      /////////////////////////
      dm.ADOQ_show_afrad.SQL.Text:='update t_sahamdaran set name='+QuotedStr('')+
      ',family='+QuotedStr(e_hoseinie.Text)+',name_pedar='+QuotedStr('');

      if CheckBox1.Checked then
        dm.ADOQ_show_afrad.SQL.Text:=dm.ADOQ_show_afrad.SQL.Text+',nafare_aval='+QuotedStr(ComboBox1.Text);

      dm.ADOQ_show_afrad.SQL.Text:=dm.ADOQ_show_afrad.SQL.Text+' where cod_shakhs='+l_code.Caption;
      dm.ADOQ_show_afrad.ExecSQL;

     //////////////////////////

      dm.ADOQ_show_afrad.SQL.Text:='update t_sahamdaran set az_name='+QuotedStr('')+
      ',az_family='+QuotedStr(e_hoseinie.Text)+',az_name_pedar='+QuotedStr('');

      dm.ADOQ_show_afrad.SQL.Text:=dm.ADOQ_show_afrad.SQL.Text+' where az_name='+QuotedStr(l_az_name.Caption)+
      ' and az_family='+QuotedStr(l_az_family.Caption)+' and az_name_pedar='+QuotedStr(l_az_name_pedar.Caption);
      dm.ADOQ_show_afrad.ExecSQL;
     /////////////////////////
     frm_vorode_moshakhasat.shpw_afrade_mojod;
     MessageBox(Handle,pchar('������ ��� ������� ���� ����� ��'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);     
   end;
end;


function Tfrm_eslahe_shakhs.check_vorod_moshakhasate_kharida:boolean;
var s:string;
begin
  check_vorod_moshakhasate_kharida:=true;
  s:='';
if RadioGroup1.ItemIndex=0 then
begin
 if ComboBox1.Text='' then
  begin
    s:=s+' ��� ��� �� ��� ��� ';
    ComboBox1.SetFocus;
  end;

  if e_family.Text='' then
  begin
    s:=s+' ��� �����ϐ� ';
    e_family.SetFocus;
  end;
  if e_name.Text='' then
  begin
    s:=s+' ��� ';
    e_name.SetFocus;
  end;
end
else
begin
  if e_hoseinie.Text='' then
  begin
    s:=s+'��� ����������� � ... ';
    e_hoseinie.SetFocus;
  end;
end;
  if s<>'' then
  begin
    check_vorod_moshakhasate_kharida:=false;
    MessageBox(Handle,pchar(s+' ���� ���� ���'),'!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;


function Tfrm_eslahe_shakhs.check_tekrarie_kamel:boolean;
var s:string;
begin
  check_tekrarie_kamel:=false;

  if CheckBox1.Checked then
    s:=' and nafare_aval='+QuotedStr(ComboBox1.Text)
  else
    s:='';
  if RadioGroup1.ItemIndex=0 then
  begin
    dm.ADOQ_show_afrade_mojod2.SQL.Text:='select * from T_afrade_mojod where name='+QuotedStr(trim(e_name.Text))+
    ' and family='+QuotedStr(trim(e_family.Text))+' and name_pedar='+QuotedStr(trim(e_pedar.Text))+s;
  end
  else
  begin
    dm.ADOQ_show_afrade_mojod2.SQL.Text:='select * from T_afrade_mojod where family='+QuotedStr(trim(e_hoseinie.Text))+s;
  end;

  dm.ADOQ_show_afrade_mojod2.Open;
  if dm.ADOQ_show_afrade_mojod2.RecordCount>0 then
    check_tekrarie_kamel:=true;
end;

procedure Tfrm_eslahe_shakhs.type_;
begin
  if RadioGroup1.ItemIndex=0 then
    GroupBox1.Visible:=false
  else
    GroupBox1.Visible:=true;
end;

procedure Tfrm_eslahe_shakhs.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_eslahe_shakhs.FormShow(Sender: TObject);
begin
  CheckBox1.Checked:=false;
  Label1.Visible:=false;
  ComboBox1.Visible:=false;
end;

procedure Tfrm_eslahe_shakhs.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
 begin
  Label1.Visible:=true;
  ComboBox1.Visible:=true;
 end
 else
 begin
  Label1.Visible:=false;
  ComboBox1.Visible:=false;
 end;
end;

procedure Tfrm_eslahe_shakhs.BtClick(Sender: TObject);
begin
 if check_vorod_moshakhasate_kharida then
 begin
      if check_tekrarie_kamel then
      begin
        MessageBox(Handle,pchar('������ ����� ( ��� � ��� �����ϐ� � ��� ��� ) ����� � ��� ���� ��� ���'),'!���',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
      end
      else
      begin
        update_shakhs;
      end;
 end;
end;

end.
