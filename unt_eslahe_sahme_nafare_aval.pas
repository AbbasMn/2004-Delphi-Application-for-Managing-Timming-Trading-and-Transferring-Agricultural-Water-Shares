unit unt_eslahe_sahme_nafare_aval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, SUIEdit, DB, DBCtrls, ExtCtrls;

type
  Tfrm_eslahe_sahme_nafare_aval = class(TForm)
    Label6: TLabel;
    e_search: TsuiEdit;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    l_tedad_sahme_abe_ashari: TLabel;
    Label5: TLabel;
    e_roz: TsuiEdit;
    e_sh_parvande: TsuiEdit;
    e_mah: TsuiEdit;
    e_sal: TsuiEdit;
    RadioGroup1: TRadioGroup;
    G_kasri: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    e_makhraj: TsuiEdit;
    e_sorat: TsuiEdit;
    e_zarib: TsuiEdit;
    G_adadi: TGroupBox;
    Label14: TLabel;
    e_adadi: TsuiEdit;
    CheckBox1: TCheckBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Bt: TButton;
    l_id: TLabel;
    procedure e_searchChange(Sender: TObject);
    procedure show_avlha;
    procedure FormShow(Sender: TObject);
    procedure typ_tedade_sahm;
    procedure RadioGroup1Click(Sender: TObject);
    procedure e_adadiChange(Sender: TObject);
    procedure e_adadiExit(Sender: TObject);
    procedure e_adadiKeyPress(Sender: TObject; var Key: Char);
    procedure e_zaribChange(Sender: TObject);
    procedure e_zaribExit(Sender: TObject);
    procedure e_zaribKeyPress(Sender: TObject; var Key: Char);
    procedure e_soratChange(Sender: TObject);
    procedure e_soratKeyPress(Sender: TObject; var Key: Char);
    procedure e_makhrajKeyPress(Sender: TObject; var Key: Char);
    procedure e_makhrajChange(Sender: TObject);
    procedure kasri_to_ashari;
    procedure e_rozExit(Sender: TObject);
    procedure e_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_mahExit(Sender: TObject);
    function check_vorod_moshakhasate_kharida:boolean;
    procedure BtClick(Sender: TObject);
    procedure update_aval_afzayeshe_sahm;
    procedure update_aval_bedone_taghire_sahm;
    procedure update_aval_kahesh_sahm;
    function entegalha_az_entekhabi_be_bagie:boolean;

    procedure update_aval_afzayeshe_sahm_ba_vagf;
    procedure update_aval_bedone_taghire_sahm_ba_vagf;
    procedure update_aval_kahesh_sahm_ba_vagf;

    function jam_sahme_abe_entegali_az_entekhabi:boolean;
    procedure e_rozKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_sahme_nafare_aval: Tfrm_eslahe_sahme_nafare_aval;

implementation

uses unt_dm, unt_data_input, unt_show_exist_entegal, Math;

{$R *.dfm}
function Tfrm_eslahe_sahme_nafare_aval.jam_sahme_abe_entegali_az_entekhabi:boolean;
begin
    jam_sahme_abe_entegali_az_entekhabi:=true;
    Dm.ADOQ_jame_kole_sahme_ab.SQL.Text:='select sum(tedade_sahme_ashari_avalie) as kol_ from t_sahamdaran '+
    ' where cod_reshteei like '+
    QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString+'_____')+' and cod_reshteei<>'+QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString);
    Dm.ADOQ_jame_kole_sahme_ab.Open;



    if (Dm.ADOQ_jame_kole_sahme_abkol_.AsFloat) >(StrToFloat(l_tedad_sahme_abe_ashari.Caption)) then
    begin
      Dm.ADOQ_show_afrad.SQL.Text:='select tarikh,family,name,tedade_sahme_ashari,noe_entegal,name_pedar,tedade_sahme_ashari_avalie'+
  ',sh_parvande,somn,entegale_somn,(tedade_sahme_ashari-somn) as max_entegal,kharid_somn,cod_reshteei,entegal_az_id,id from t_sahamdaran  where cod_reshteei like '+
      QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString+'_____')+' and cod_reshteei<>'+QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString)+
      '  order by id';
      Dm.ADOQ_show_afrad.Open;

      jam_sahme_abe_entegali_az_entekhabi:=false;
      MessageBox(Handle,pchar('����� ��� �� ���� ��� �� ����� ����� ��� ������ �� �� ��� ���� ������ ����� ��� = '+Dm.ADOQ_jame_kole_sahme_abkol_.AsString+' ���� �� ���� � ��� ���� ��� ����� ����� ��� �� ��� ���� �� ����� �� '+l_tedad_sahme_abe_ashari.Caption+' ��� ������ '),'��� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);


      frm_show_exist_entegal.L_code_reshteie_feli.Caption:=Dm.ADOQ_show_afradcod_reshteei.AsString;

      frm_show_exist_entegal.Caption:='���������� �� �������� �� '+Dm.ADOQ_show_nafarat_baraye_dadane_sahmname.AsString+' '+Dm.ADOQ_show_nafarat_baraye_dadane_sahmfamily.AsString+' ����� ��� ���';

      frm_show_exist_entegal.ShowModal;
    end;
end;


/////////////////// ba vagf ////////////
procedure Tfrm_eslahe_sahme_nafare_aval.update_aval_kahesh_sahm_ba_vagf;
var tedad_sahm_aval,ekhtelaf:real;
    tarikh:string;
begin
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text);
      if tarikh='//' then
        tarikh:='';

      tedad_sahm_aval:=Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat;
      ekhtelaf:=tedad_sahm_aval-StrToFloat(l_tedad_sahme_abe_ashari.Caption);

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',tedade_sahme_ashari_avalie='+l_tedad_sahme_abe_ashari.Caption+
      ',tedade_sahme_ashari=tedade_sahme_ashari-'+FloatToStr(ekhtelaf)+',noe_entegal='+QuotedStr('���');

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;


      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text+' where id='+l_id.Caption;

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.ExecSQL;
     /////////////////////////
      show_avlha;

     MessageBox(Handle,pchar('������ ��� �� ��� ��� � ���� ����� �����'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;

procedure Tfrm_eslahe_sahme_nafare_aval.update_aval_afzayeshe_sahm_ba_vagf;
var tedad_sahm_aval,ekhtelaf:real;
    tarikh:string;
begin
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text);
      if tarikh='//' then
        tarikh:='';

      tedad_sahm_aval:=Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat;
      ekhtelaf:=StrToFloat(l_tedad_sahme_abe_ashari.Caption)-tedad_sahm_aval;

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',tedade_sahme_ashari_avalie='+l_tedad_sahme_abe_ashari.Caption+
      ',tedade_sahme_ashari=tedade_sahme_ashari+'+FloatToStr(ekhtelaf)+',noe_entegal='+QuotedStr('���');

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;


      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text+' where id='+l_id.Caption;

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.ExecSQL;
     /////////////////////////
      show_avlha;

     MessageBox(Handle,pchar('������ ��� �� ��� ��� � ���� ����� �����'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;



procedure Tfrm_eslahe_sahme_nafare_aval.update_aval_bedone_taghire_sahm_ba_vagf;
var    tarikh:string;
begin
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text);
      if tarikh='//' then
        tarikh:='';

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',noe_entegal='+QuotedStr('���');

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text+' where id='+l_id.Caption;
      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.ExecSQL;
     /////////////////////////
      show_avlha;
     MessageBox(Handle,pchar('������ ��� �� ��� ��� � ���� ����� �����'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);

end;
/////////////////// ba vagf ////////////
function Tfrm_eslahe_sahme_nafare_aval.entegalha_az_entekhabi_be_bagie:boolean;
begin
    entegalha_az_entekhabi_be_bagie:=False;

    Dm.ADOQ_show_afrad.SQL.Text:='select * from t_sahamdaran where cod_reshteei like '+
    QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString+'_____')+' and cod_reshteei<>'+QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString)+
    '  order by id';
    Dm.ADOQ_show_afrad.Open;

    if Dm.ADOQ_show_afrad.RecordCount>0 then
    begin
      entegalha_az_entekhabi_be_bagie:=true;

      MessageBox(Handle,pchar('�� ���� �� �� ��� �� ���� � ���������� �� ���� ����� ����� ����� � ��� ������ ��� �� �� �� ���� ��� ��� ������. �� ������ ��� ��������� ����� ��� �� ��� ����� Ӂ� ��� �� �� �� ���� ��� ��� ������.'),'��� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);


      frm_show_exist_entegal.L_code_reshteie_feli.Caption:=Dm.ADOQ_show_afradcod_reshteei.AsString;

      frm_show_exist_entegal.Caption:='���������� �� �������� �� '+Dm.ADOQ_show_nafarat_baraye_dadane_sahmname.AsString+' '+Dm.ADOQ_show_nafarat_baraye_dadane_sahmfamily.AsString+' ����� ��� ���';

      frm_show_exist_entegal.ShowModal;
    end;


end;

procedure Tfrm_eslahe_sahme_nafare_aval.update_aval_kahesh_sahm;
var tedad_sahm_aval,ekhtelaf:real;
    tarikh:string;
begin
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text);
      if tarikh='//' then
        tarikh:='';

      tedad_sahm_aval:=Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat;
      ekhtelaf:=tedad_sahm_aval-StrToFloat(l_tedad_sahme_abe_ashari.Caption);

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:='update t_sahamdaran set noe_entegal='+QuotedStr('')+
      ',sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',tedade_sahme_ashari_avalie='+l_tedad_sahme_abe_ashari.Caption+
      ',tedade_sahme_ashari=tedade_sahme_ashari-'+FloatToStr(ekhtelaf);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;


      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text+' where id='+l_id.Caption;

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.ExecSQL;
     /////////////////////////
      show_avlha;

     MessageBox(Handle,pchar('������ ��� �� ��� ��� � ���� ����� �����'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;

procedure Tfrm_eslahe_sahme_nafare_aval.update_aval_bedone_taghire_sahm;
var    tarikh:string;
begin
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text);
      if tarikh='//' then
        tarikh:='';

if Dm.ADOQ_show_nafarat_baraye_dadane_sahmsh_parvande.AsInteger=StrToInt(e_sh_parvande.Text) then
begin
      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:='update t_sahamdaran set noe_entegal='+QuotedStr('')+
      ',sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text+' where id='+l_id.Caption;
      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.ExecSQL;
     /////////////////////////
      show_avlha;
     MessageBox(Handle,pchar('������ ��� �� ��� ��� � ���� ����� �����'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end
else
begin /////tagire shomare parvande
    Dm.ADOQ_show_afrad.SQL.Text:='select * from t_sahamdaran where cod_reshteei like '+
    QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString+'_____')+' and cod_reshteei<>'+QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString)+
    ' and sh_parvande='+QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmsh_parvande.AsString)+
    '  order by id';
    Dm.ADOQ_show_afrad.Open;

    if Dm.ADOQ_show_afrad.RecordCount>0 then
    begin
      MessageBox(Handle,pchar('���������� �� ��� ��� �� ������� ���� ����� �� �� ����� ������ ���� ��� ��� ��� ���� ���� ���� ����� ������ ��� ���� �� ��� ����� ����'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);

      frm_show_exist_entegal.L_code_reshteie_feli.Caption:=Dm.ADOQ_show_afradcod_reshteei.AsString;

      frm_show_exist_entegal.Caption:='���������� �� �������� �� '+Dm.ADOQ_show_nafarat_baraye_dadane_sahmname.AsString+' '+Dm.ADOQ_show_nafarat_baraye_dadane_sahmfamily.AsString+' ����� ��� ���';            

      frm_show_exist_entegal.ShowModal;
    end
    else
    begin
      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text+' where id='+l_id.Caption;
      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.ExecSQL;
     /////////////////////////
      show_avlha;
     MessageBox(Handle,pchar('������ ��� �� ��� ��� � ���� ����� �����'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
    end;
end;

end;

procedure Tfrm_eslahe_sahme_nafare_aval.update_aval_afzayeshe_sahm;
var tedad_sahm_aval,ekhtelaf:real;
    tarikh:string;
begin
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text);
      if tarikh='//' then
        tarikh:='';

      tedad_sahm_aval:=Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat;
      ekhtelaf:=StrToFloat(l_tedad_sahme_abe_ashari.Caption)-tedad_sahm_aval;

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:='update t_sahamdaran set noe_entegal='+QuotedStr('')+
      ',sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',tedade_sahme_ashari_avalie='+l_tedad_sahme_abe_ashari.Caption+
      ',tedade_sahme_ashari=tedade_sahme_ashari+'+FloatToStr(ekhtelaf);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;


      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text:=Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text+' where id='+l_id.Caption;

      Dm.ADOQ_show_nafarat_baraye_dadane_sahm.ExecSQL;
     /////////////////////////
      show_avlha;

     MessageBox(Handle,pchar('������ ��� �� ��� ��� � ���� ����� �����'),'���� !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;

function Tfrm_eslahe_sahme_nafare_aval.check_vorod_moshakhasate_kharida:boolean;
var s:string;
begin
  check_vorod_moshakhasate_kharida:=true;
  s:='';
  if e_sh_parvande.Text='' then
  begin
    s:=s+' ����� ������ ';
    e_sh_parvande.SetFocus;
  end;
  


 { if e_sal.Text='' then
  begin
    s:=s+' ��� ';
    e_sal.SetFocus;
  end;
    if e_mah.Text='' then
  begin
    s:=s+' ��� ';
    e_mah.SetFocus;
  end;  

   if e_roz.Text='' then
  begin
    s:=s+' ��� ';
    e_roz.SetFocus;
  end; }

  if trim(l_tedad_sahme_abe_ashari.Caption)='' then
  begin
    s:=s+' ����� ��� �� ';
    if RadioGroup1.ItemIndex=0 then
      e_zarib.SetFocus
    else
      e_adadi.SetFocus;
  end;
  {if l_pedar.caption='' then
  begin
    s:=s+' ��� ��� ';
    e_pedar.SetFocus;
  end; }
  {if l_sh_sh.caption='' then
  begin
    s:=s+' ����� �������� ';
  end; }

  {if l_family.caption='' then
  begin
    s:=s+' ��� �����ϐ� �� ��� �����';
  end; }
  {if l_name.caption='' then
  begin
    s:=s+' ��� ';
  end;}
  if s<>'' then
  begin
    check_vorod_moshakhasate_kharida:=false;
    MessageBox(Handle,pchar(s+' ���� ���� ���'),'!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;


procedure Tfrm_eslahe_sahme_nafare_aval.kasri_to_ashari;
var zarib,soret,makhraj:real;
begin
 if (e_zarib.Text='')or(e_zarib.Text='0') then
  zarib:=0
 else
  zarib:=StrToFloat(e_zarib.Text);

 if (e_sorat.Text='')or(e_sorat.Text='0') then
  soret:=0
 else
  soret:=StrToFloat(e_sorat.Text);

 if (e_makhraj.Text='')or(e_makhraj.Text='0') then
 begin
  l_tedad_sahme_abe_ashari.Caption:=FloatToStr(zarib);
 end
 else
 begin
  makhraj:=StrToFloat(e_makhraj.Text);
  l_tedad_sahme_abe_ashari.Caption:=FloatToStr(zarib+(soret/makhraj));
 end;

end;

procedure Tfrm_eslahe_sahme_nafare_aval.typ_tedade_sahm;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    G_kasri.Visible:=true;
    G_adadi.Visible:=false;
  end
  else
  begin
    G_kasri.Visible:=false;
    G_adadi.Visible:=true;
  end;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.show_avlha;
begin
  Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text:='select tarikh,sahm_zaribe_kasr,sahm_sorate_kasr,sahm_makhraje_kasr,family,name,tedade_sahme_ashari,'+
  'cod_reshteei,name_pedar,nafare_aval,tedade_sahme_ashari_avalie,cod_shakhs,id,sh_parvande,noe_entegal,entegal_az_id,somn,entegale_somn,(tedade_sahme_ashari-somn) as max_entegal,kharid_somn'+
  ' from t_sahamdaran'+
  ' where nafare_aval='+QuotedStr('������')+
  ' order by family,name,name_pedar';
  Dm.ADOQ_show_nafarat_baraye_dadane_sahm.Open;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_searchChange(Sender: TObject);
begin
 Dm.ADOQ_show_nafarat_baraye_dadane_sahm.Locate('family',e_search.Text,[loPartialKey]);
end;

procedure Tfrm_eslahe_sahme_nafare_aval.FormShow(Sender: TObject);
begin
  sleep(100);
  show_avlha;
  frm_show_exist_entegal.btn_hazf.Visible:=true;
  frm_show_exist_entegal.Caption:='';   
end;

procedure Tfrm_eslahe_sahme_nafare_aval.RadioGroup1Click(Sender: TObject);
begin
  typ_tedade_sahm;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_adadiChange(Sender: TObject);
begin
  if frm_data_input.check_ashar(e_adadi.Text) then
    l_tedad_sahme_abe_ashari.Caption:=e_adadi.Text
  else
    begin
      e_adadi.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_adadiExit(Sender: TObject);
begin
  if frm_data_input.check_ashar(e_adadi.Text) then
    l_tedad_sahme_abe_ashari.Caption:=e_adadi.Text
  else
    begin
      e_adadi.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_adadiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_zaribChange(Sender: TObject);
begin
  if frm_data_input.check_ashar(e_zarib.Text) then
  begin
      kasri_to_ashari;
  end
  else
    begin
      e_zarib.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_zaribExit(Sender: TObject);
begin
  if frm_data_input.check_ashar(e_zarib.Text) then
  begin
      kasri_to_ashari;
  end
  else
    begin
      e_zarib.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_zaribKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_soratChange(Sender: TObject);
begin
  kasri_to_ashari;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_soratKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_makhrajKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_makhrajChange(Sender: TObject);
begin
  kasri_to_ashari;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_rozExit(Sender: TObject);
begin
 if strlen(pchar(e_roz.Text))=1 then
  e_roz.Text:='0'+e_roz.Text;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_mahExit(Sender: TObject);
begin
 if strlen(pchar(e_mah.Text))=1 then
  e_mah.Text:='0'+e_mah.Text;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.BtClick(Sender: TObject);
begin
  if Dm.ADOQ_show_nafarat_baraye_dadane_sahm.RecordCount>0 then
  begin

    if not CheckBox1.Checked then ////tvagf nabashe
    begin
      if check_vorod_moshakhasate_kharida then
      begin

        if StrToFloat(l_tedad_sahme_abe_ashari.Caption)>Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat then
         update_aval_afzayeshe_sahm

        else

        if StrToFloat(l_tedad_sahme_abe_ashari.Caption)=Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat then
         update_aval_bedone_taghire_sahm

        else

        if StrToFloat(l_tedad_sahme_abe_ashari.Caption)<Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat then
         If jam_sahme_abe_entegali_az_entekhabi then
           update_aval_kahesh_sahm;

      end;
    end
    else
    begin /// vagf bashe
        if not entegalha_az_entekhabi_be_bagie then
        begin
          if StrToFloat(l_tedad_sahme_abe_ashari.Caption)>Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat then
            update_aval_afzayeshe_sahm_ba_vagf;

          if StrToFloat(l_tedad_sahme_abe_ashari.Caption)=Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat then
            update_aval_bedone_taghire_sahm_ba_vagf;

          if StrToFloat(l_tedad_sahme_abe_ashari.Caption)<Dm.ADOQ_show_nafarat_baraye_dadane_sahmtedade_sahme_ashari_avalie.AsFloat then
            If jam_sahme_abe_entegali_az_entekhabi then
              update_aval_kahesh_sahm_ba_vagf;
        end;
        
    end;
  end;
end;

procedure Tfrm_eslahe_sahme_nafare_aval.e_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
