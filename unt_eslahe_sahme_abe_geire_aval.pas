unit unt_eslahe_sahme_abe_geire_aval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, SUIEdit, ExtCtrls, DBCtrls, DB,math;

type
  Tfrm_eslahe_sahme_abe_geire_aval = class(TForm)
    Label6: TLabel;
    e_search: TsuiEdit;
    l_id: TLabel;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    l_tedad_sahme_abe_ashari: TLabel;
    Label5: TLabel;
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
    RadioGroup2: TRadioGroup;
    G_mahzari: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    e_roz_mahzar: TsuiEdit;
    e_mah_mahzar: TsuiEdit;
    e_sal_mahzar: TsuiEdit;
    e_sh_mahzar: TsuiEdit;
    e_sh_sanade_sabti: TsuiEdit;
    e_shahre_mahzar: TsuiEdit;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    e_sh_parvande: TsuiEdit;
    Bt: TButton;
    G_geire_mahzari: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    e_roz: TsuiEdit;
    e_mah: TsuiEdit;
    e_sal: TsuiEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label24: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DataSource1: TDataSource;
    CheckBox1: TCheckBox;
    l_entegal_az_id: TLabel;
    procedure typ_tedade_sahm;
    procedure RadioGroup1Click(Sender: TObject);
    procedure e_roz_mahzarKeyPress(Sender: TObject; var Key: Char);
    procedure e_mah_mahzarKeyPress(Sender: TObject; var Key: Char);
    procedure e_sal_mahzarKeyPress(Sender: TObject; var Key: Char);
    procedure suiEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure suiEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure suiEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure e_roz_mahzarExit(Sender: TObject);
    procedure e_mah_mahzarExit(Sender: TObject);
    procedure suiEdit1Exit(Sender: TObject);
    procedure e_rozExit(Sender: TObject);
    procedure e_mahExit(Sender: TObject);
    procedure e_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_adadiChange(Sender: TObject);
    procedure e_adadiKeyPress(Sender: TObject; var Key: Char);
    procedure e_soratKeyPress(Sender: TObject; var Key: Char);
    procedure e_makhrajKeyPress(Sender: TObject; var Key: Char);
    procedure e_zaribKeyPress(Sender: TObject; var Key: Char);
    procedure e_adadiExit(Sender: TObject);
    procedure kasri_to_ashari;
    procedure e_soratChange(Sender: TObject);
    procedure e_zaribChange(Sender: TObject);
    procedure e_makhrajChange(Sender: TObject);
    procedure e_zaribExit(Sender: TObject);
    procedure show_entegalha;
    procedure FormShow(Sender: TObject);
    procedure e_searchChange(Sender: TObject);
    procedure type_mahzar;
    procedure RadioGroup2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    function check_vorod_moshakhasate_kharida:boolean;
    procedure BtClick(Sender: TObject);
    function entegalha_az_entekhabi_be_bagie:boolean;

    procedure update_aval_bedone_taghire_sahm_ba_vagf(noe_entegal:string);
    procedure update_aval_kahesh_sahm_ba_vagf(noe_entegal:string);
    procedure update_aval_afzayeshe_sahm_ba_vagf(noe_entegal:string);

    procedure update_aval_bedone_taghire_sahm(noe_entegal:string);
    procedure update_aval_kahesh_sahm(noe_entegal:string);
    procedure update_aval_afzayeshe_sahm(noe_entegal:string);
    function jam_sahme_abe_entegali_az_entekhabi:boolean;

    function check_tedade_sahme_feli_dahande:boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_sahme_abe_geire_aval: Tfrm_eslahe_sahme_abe_geire_aval;

implementation

uses unt_data_input, unt_Dm_eslah, unt_dm, unt_show_exist_entegal,
  unt_show_exist_entegal2;

{$R *.dfm}
function Tfrm_eslahe_sahme_abe_geire_aval.check_tedade_sahme_feli_dahande:boolean;
  var x1,x2,temp:double;
             temp2,temp3:integer;
begin
      check_tedade_sahme_feli_dahande:=true;

      Dm.ADOQ_komakie_hazf.SQL.Text:='select  tarikh,family,name,tedade_sahme_ashari,noe_entegal,name_pedar,tedade_sahme_ashari_avalie'+
      ',sh_parvande,somn,entegale_somn,(tedade_sahme_ashari-somn) as max_entegal,kharid_somn from t_sahamdaran where id='+
      l_entegal_az_id.Caption;
      Dm.ADOQ_komakie_hazf.Open;

     x1:=Dm.ADOQ_komakie_hazftedade_sahme_ashari.AsFloat-Dm.ADOQ_komakie_hazfsomn.AsFloat;

     x2:=StrToFloat(l_tedad_sahme_abe_ashari.Caption)-StrToFloat(Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsString);

     temp:=abs(x1-x2);

     temp3:=0;
     if (temp < 1)and(temp<>0) then
     begin
      temp2:=(round(1/temp) div 10);

      while temp2 > 0 do
      begin
        temp3:=temp3+1;
        temp2:=temp2 div 10;
      end;
      temp3:=temp3+1;
     end ;

      if temp3=1 then
      begin
        x1:=RoundTo(x1,-4);
        x2:=RoundTo(x2,-4);
      end
      else
      begin
        x1:=RoundTo(x1,-temp3);
        x2:=RoundTo(x2,-temp3);
      end;
     
    if (x1)<(x2) then
    begin
      check_tedade_sahme_feli_dahande:=false;
      MessageBox(Handle,pchar(' ?????? ?? ???? ????? << '+FloatToStr(x1)+' >> ??? ?? ?? ????? ??? ??????? ????? ????'),'??? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
      frm_show_exist_entegal2.ShowModal;
    end;
end;
/////////////

function Tfrm_eslahe_sahme_abe_geire_aval.jam_sahme_abe_entegali_az_entekhabi:boolean;
var jadid:real;
begin
    jadid:=StrToFloat(l_tedad_sahme_abe_ashari.Caption);

    jam_sahme_abe_entegali_az_entekhabi:=true;
    Dm.ADOQ_jame_kole_sahme_ab.SQL.Text:='select sum(tedade_sahme_ashari_avalie) as kol_ from t_sahamdaran '+
    ' where cod_reshteei like '+
    QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString+'_____')+' and cod_reshteei<>'+
    QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString);
    Dm.ADOQ_jame_kole_sahme_ab.Open;

    if (Dm.ADOQ_jame_kole_sahme_abkol_.AsFloat) >(jadid) then
    begin
      jam_sahme_abe_entegali_az_entekhabi:=false;
      MessageBox(Handle,pchar('????? ??? ?? ???? ??? ?? ????? ????? ??? ?????? ?? ?? ??? ???? ?????? ????? ??? = '+Dm.ADOQ_jame_kole_sahme_abkol_.AsString+' ???? ?? ???? ? ??? ???? ??? ????? ????? ??? ?? ??? ???? ?? ????? ?? '+l_tedad_sahme_abe_ashari.Caption+' ??? ?????? '),'??? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);


      Dm.ADOQ_show_afrad.SQL.Text:='select tarikh,family,name,tedade_sahme_ashari,noe_entegal,name_pedar,tedade_sahme_ashari_avalie'+
  ',sh_parvande,cod_reshteei,entegal_az_id,id,somn,entegale_somn,(tedade_sahme_ashari-somn) as max_entegal,kharid_somn from t_sahamdaran where cod_reshteei like '+
      QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString+'_____')+' and cod_reshteei<>'+QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString)+
      '  order by id';
      Dm.ADOQ_show_afrad.Open;

      if Dm.ADOQ_show_afrad.RecordCount>0 then
      begin
        frm_show_exist_entegal.L_code_reshteie_feli.Caption:=Dm.ADOQ_show_afradcod_reshteei.AsString;

        frm_show_exist_entegal.Caption:='?????????? ?? ???????? ?? '+Dm_eslah.ADOQ_show_entegalhaname.AsString+' '+Dm_eslah.ADOQ_show_entegalhafamily.AsString+' ????? ??? ???';
        frm_show_exist_entegal.ShowModal;
      end;

    end;
end;
////////////////

procedure Tfrm_eslahe_sahme_abe_geire_aval.update_aval_kahesh_sahm(noe_entegal:string);
var tedad_sahm_aval,ekhtelaf,somn:real;
    tarikh:string;
begin
  if RadioGroup2.ItemIndex=1 then
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)
  else
      tarikh:=trim(e_sal_mahzar.Text+'/'+e_mah_mahzar.Text+'/'+e_roz_mahzar.Text);
      
      if tarikh='//' then
        tarikh:='';

      tedad_sahm_aval:=Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat;
      somn:=Dm_eslah.ADOQ_show_entegalhasomn.AsFloat;

      ekhtelaf:=tedad_sahm_aval-StrToFloat(l_tedad_sahme_abe_ashari.Caption);

      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set tedade_sahme_ashari=tedade_sahme_ashari-'+FloatToStr(ekhtelaf)+
      ',sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',tedade_sahme_ashari_avalie='+l_tedad_sahme_abe_ashari.Caption+
      ',sh_sanade_mahzari='+QuotedStr(e_sh_sanade_sabti.Text)+
      ',sh_mahzar='+QuotedStr(e_sh_mahzar.Text)+',shahre_mahzar='+QuotedStr(e_shahre_mahzar.Text)+',noe_entegal='+QuotedStr(noe_entegal);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;

      if somn > 0 then
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+',somn=somn-'+FloatToStr(ekhtelaf*(1/8));


      Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+' where id='+l_id.Caption;

      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;


      //////////////////////////////////////
      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set tedade_sahme_ashari_avalie=tedade_sahme_ashari_avalie-'+
      FloatToStr(ekhtelaf*(1/8))+',tedade_sahme_ashari=tedade_sahme_ashari-'+FloatToStr(ekhtelaf*(1/8))+
      ' where entegal_az_id='+l_id.Caption+
      ' and noe_entegal='+QuotedStr('??? ??????');
      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;

     //////////////////////////////////////

      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set tedade_sahme_ashari=tedade_sahme_ashari+'+FloatToStr(ekhtelaf)+
      ' where id='+l_entegal_az_id.Caption;
      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;
     ////////////////////////
      show_entegalha;

     MessageBox(Handle,pchar('?????? ??? ?? ??? ??? ? ???? ????? ?????'),'???? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.update_aval_bedone_taghire_sahm(noe_entegal:string);
var    tarikh:string;
begin
  if RadioGroup2.ItemIndex=1 then
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)
  else
      tarikh:=trim(e_sal_mahzar.Text+'/'+e_mah_mahzar.Text+'/'+e_roz_mahzar.Text);

      if tarikh='//' then
        tarikh:='';

if Dm_eslah.ADOQ_show_entegalhash_parvande.AsInteger=StrToInt(e_sh_parvande.Text) then
begin

      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',sh_sanade_mahzari='+QuotedStr(e_sh_sanade_sabti.Text)+
      ',sh_mahzar='+QuotedStr(e_sh_mahzar.Text)+',shahre_mahzar='+QuotedStr(e_shahre_mahzar.Text)+',noe_entegal='+QuotedStr(noe_entegal);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;

      Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+' where id='+l_id.Caption;
      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;
     /////////////////////////
      show_entegalha;
     MessageBox(Handle,pchar('?????? ??? ?? ??? ??? ? ???? ????? ?????'),'???? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end
else
begin /////tagire shomare parvande
    Dm.ADOQ_show_afrad.SQL.Text:='select * from t_sahamdaran where cod_reshteei like '+
    QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString+'%')+' and cod_reshteei<>'+QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString)+
    ' and sh_parvande='+QuotedStr(Dm_eslah.ADOQ_show_entegalhash_parvande.AsString)+
    '  order by id';
    Dm.ADOQ_show_afrad.Open;

    if Dm.ADOQ_show_afrad.RecordCount>0 then
    begin
      MessageBox(Handle,pchar('?????????? ?? ??? ??? ?? ??????? ???? ????? ?? ?? ????? ?????? ???? ??? ??? ??? ???? ???? ???? ????? ?????? ??? ???? ?? ??? ????? ????'),'???? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);

        frm_show_exist_entegal.L_code_reshteie_feli.Caption:=Dm.ADOQ_show_afradcod_reshteei.AsString;

        frm_show_exist_entegal.Caption:='?????????? ?? ???????? ?? '+Dm_eslah.ADOQ_show_entegalhaname.AsString+' '+Dm_eslah.ADOQ_show_entegalhafamily.AsString+' ????? ??? ???';

      frm_show_exist_entegal.ShowModal;
    end
    else
    begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
        ',tarikh='+QuotedStr(tarikh)+',sh_sanade_mahzari='+QuotedStr(e_sh_sanade_sabti.Text)+
        ',sh_mahzar='+QuotedStr(e_sh_mahzar.Text)+',shahre_mahzar='+QuotedStr(e_shahre_mahzar.Text)+',noe_entegal='+QuotedStr(noe_entegal);

        if RadioGroup1.ItemIndex=0 then
        begin
         Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
        end
        else
        begin
         Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
         ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
        end;

        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+' where id='+l_id.Caption;
        Dm_eslah.ADOQ_show_entegalha2.ExecSQL;
        /////////////////////////
        show_entegalha;
        MessageBox(Handle,pchar('?????? ??? ?? ??? ??? ? ???? ????? ?????'),'???? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);

    end;
end;

end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.update_aval_afzayeshe_sahm(noe_entegal:string);
var tedad_sahm_aval,ekhtelaf,somn:real;
    tarikh:string;
begin
  if RadioGroup2.ItemIndex=1 then
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)
  else
      tarikh:=trim(e_sal_mahzar.Text+'/'+e_mah_mahzar.Text+'/'+e_roz_mahzar.Text);

      if tarikh='//' then
        tarikh:='';

      tedad_sahm_aval:=Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat;
      somn:=Dm_eslah.ADOQ_show_entegalhasomn.AsFloat;

      ekhtelaf:=StrToFloat(l_tedad_sahme_abe_ashari.Caption)-tedad_sahm_aval;

      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',tedade_sahme_ashari_avalie='+l_tedad_sahme_abe_ashari.Caption+
      ',tedade_sahme_ashari=tedade_sahme_ashari+'+FloatToStr(ekhtelaf)+',sh_sanade_mahzari='+QuotedStr(e_sh_sanade_sabti.Text)+
      ',sh_mahzar='+QuotedStr(e_sh_mahzar.Text)+',shahre_mahzar='+QuotedStr(e_shahre_mahzar.Text)+',noe_entegal='+QuotedStr(noe_entegal);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;

      if somn >0 then
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+',somn=somn+'+FloatToStr(ekhtelaf*(1/8));


      Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+' where id='+l_id.Caption;

      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;

      //////////////////////////////////////
      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set tedade_sahme_ashari_avalie=tedade_sahme_ashari_avalie+'+
      FloatToStr(ekhtelaf*(1/8))+',tedade_sahme_ashari=tedade_sahme_ashari+'+FloatToStr(ekhtelaf*(1/8))+
      ' where entegal_az_id='+l_id.Caption+
      ' and noe_entegal='+QuotedStr('??? ??????');
      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;

     //////////////////////////////////////
      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set tedade_sahme_ashari=tedade_sahme_ashari-'+FloatToStr(ekhtelaf)+
      ' where id='+l_entegal_az_id.Caption;

      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;
     ////////////////////////
      show_entegalha;

     MessageBox(Handle,pchar('?????? ??? ?? ??? ??? ? ???? ????? ?????'),'???? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;






/////////////////// ba vagf ////////////
procedure Tfrm_eslahe_sahme_abe_geire_aval.update_aval_kahesh_sahm_ba_vagf(noe_entegal:string);
var tedad_sahm_aval,ekhtelaf:real;
    tarikh:string;
begin
  if RadioGroup2.ItemIndex=1 then
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)
  else
      tarikh:=trim(e_sal_mahzar.Text+'/'+e_mah_mahzar.Text+'/'+e_roz_mahzar.Text);
      
      if tarikh='//' then
        tarikh:='';

      tedad_sahm_aval:=Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat;
      ekhtelaf:=tedad_sahm_aval-StrToFloat(l_tedad_sahme_abe_ashari.Caption);

      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',tedade_sahme_ashari_avalie='+l_tedad_sahme_abe_ashari.Caption+
      ',tedade_sahme_ashari=tedade_sahme_ashari-'+FloatToStr(ekhtelaf)+',noe_entegal='+QuotedStr(noe_entegal)+',sh_sanade_mahzari='+QuotedStr(e_sh_sanade_sabti.Text)+
      ',sh_mahzar='+QuotedStr(e_sh_mahzar.Text)+',shahre_mahzar='+QuotedStr(e_shahre_mahzar.Text);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;


      Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+' where id='+l_id.Caption;

      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;
     /////////////////////////
      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set tedade_sahme_ashari=tedade_sahme_ashari+'+FloatToStr(ekhtelaf)+
      ' where id='+l_entegal_az_id.Caption;
      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;
     ////////////////////////
           
      show_entegalha;

     MessageBox(Handle,pchar('?????? ??? ?? ??? ??? ? ???? ????? ?????'),'???? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.update_aval_afzayeshe_sahm_ba_vagf(noe_entegal:string);
var tedad_sahm_aval,ekhtelaf:real;
    tarikh:string;
begin
  if RadioGroup2.ItemIndex=1 then
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)
  else
      tarikh:=trim(e_sal_mahzar.Text+'/'+e_mah_mahzar.Text+'/'+e_roz_mahzar.Text);
      
      if tarikh='//' then
        tarikh:='';

      tedad_sahm_aval:=Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat;
      ekhtelaf:=StrToFloat(l_tedad_sahme_abe_ashari.Caption)-tedad_sahm_aval;

      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',tedade_sahme_ashari_avalie='+l_tedad_sahme_abe_ashari.Caption+
      ',tedade_sahme_ashari=tedade_sahme_ashari+'+FloatToStr(ekhtelaf)+',noe_entegal='+QuotedStr(noe_entegal)+',sh_sanade_mahzari='+QuotedStr(e_sh_sanade_sabti.Text)+
      ',sh_mahzar='+QuotedStr(e_sh_mahzar.Text)+',shahre_mahzar='+QuotedStr(e_shahre_mahzar.Text);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;


      Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+' where id='+l_id.Caption;

      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;

           /////////////////////////
      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set tedade_sahme_ashari=tedade_sahme_ashari-'+FloatToStr(ekhtelaf)+
      ' where id='+l_entegal_az_id.Caption;

      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;
     ////////////////////////
     
      show_entegalha;

     MessageBox(Handle,pchar('?????? ??? ?? ??? ??? ? ???? ????? ?????'),'???? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;



procedure Tfrm_eslahe_sahme_abe_geire_aval.update_aval_bedone_taghire_sahm_ba_vagf(noe_entegal:string);
var    tarikh:string;
begin
  if RadioGroup2.ItemIndex=1 then
      tarikh:=trim(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)
  else
      tarikh:=trim(e_sal_mahzar.Text+'/'+e_mah_mahzar.Text+'/'+e_roz_mahzar.Text);

      if tarikh='//' then
        tarikh:='';

      Dm_eslah.ADOQ_show_entegalha2.sql.Text:='update t_sahamdaran set sh_parvande='+QuotedStr(e_sh_parvande.Text)+
      ',tarikh='+QuotedStr(tarikh)+',noe_entegal='+QuotedStr(noe_entegal)+',sh_sanade_mahzari='+QuotedStr(e_sh_sanade_sabti.Text)+
      ',sh_mahzar='+QuotedStr(e_sh_mahzar.Text)+',shahre_mahzar='+QuotedStr(e_shahre_mahzar.Text);

      if RadioGroup1.ItemIndex=0 then
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr(e_zarib.Text)+',sahm_sorate_kasr='+QuotedStr(e_sorat.Text)+',sahm_makhraje_kasr='+QuotedStr(e_makhraj.Text);
      end
      else
      begin
        Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+
        ',sahm_zaribe_kasr='+QuotedStr('')+',sahm_sorate_kasr='+QuotedStr('')+',sahm_makhraje_kasr='+QuotedStr('');
      end;

      Dm_eslah.ADOQ_show_entegalha2.sql.Text:=Dm_eslah.ADOQ_show_entegalha2.sql.Text+' where id='+l_id.Caption;
      Dm_eslah.ADOQ_show_entegalha2.ExecSQL;
     /////////////////////////
      show_entegalha;
     MessageBox(Handle,pchar('?????? ??? ?? ??? ??? ? ???? ????? ?????'),'???? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);

end;
/////////////////// ba vagf ////////////






function Tfrm_eslahe_sahme_abe_geire_aval.entegalha_az_entekhabi_be_bagie:boolean;
begin
    entegalha_az_entekhabi_be_bagie:=False;

    Dm.ADOQ_show_afrad.SQL.Text:='select tarikh,family,name,tedade_sahme_ashari,noe_entegal,name_pedar,tedade_sahme_ashari_avalie'+
  ',sh_parvande,somn,entegale_somn,(tedade_sahme_ashari-somn) as max_entegal,kharid_somn,cod_reshteei,entegal_az_id,id,somn,entegale_somn,(tedade_sahme_ashari-somn) as max_entegal,kharid_somn from t_sahamdaran where cod_reshteei like '+
    QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString+'_____')+' and cod_reshteei<>'+QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString)+
    '  order by id';
    Dm.ADOQ_show_afrad.Open;

    if Dm.ADOQ_show_afrad.RecordCount>0 then
    begin
      entegalha_az_entekhabi_be_bagie:=true;

      MessageBox(Handle,pchar('?? ???? ?? ?? ??? ?? ???? ? ?????????? ?? ???? ????? ????? ????? ? ??? ?????? ??? ?? ?? ?? ???? ??? ??? ??????. ?? ?????? ??? ????????? ????? ??? ?? ??? ????? ??? ??? ?? ?? ?? ???? ??? ??? ??????.'),'??? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);

       frm_show_exist_entegal.L_code_reshteie_feli.Caption:=Dm.ADOQ_show_afradcod_reshteei.AsString;

        frm_show_exist_entegal.Caption:='?????????? ?? ???????? ?? '+Dm_eslah.ADOQ_show_entegalhaname.AsString+' '+Dm_eslah.ADOQ_show_entegalhafamily.AsString+' ????? ??? ???';       

      frm_show_exist_entegal.ShowModal;
    end;


end;

///////////////////
function Tfrm_eslahe_sahme_abe_geire_aval.check_vorod_moshakhasate_kharida:boolean;
var s:string;
begin
  check_vorod_moshakhasate_kharida:=true;
  s:='';

  if e_sh_parvande.Text='' then
  begin
    s:=s+' ????? ?????? ';
    e_sh_parvande.SetFocus;
  end;

  if (CheckBox1.Checked)and(ComboBox1.Text='') then
  begin
    s:=s+' ??? ?????? ??? ?? ';
    ComboBox1.SetFocus;
  end;

  if (trim(l_tedad_sahme_abe_ashari.Caption)='')or(trim(l_tedad_sahme_abe_ashari.Caption)='0') then
  begin
    s:=s+' ????? ??? ?? ';
    if RadioGroup1.ItemIndex=0 then
      e_zarib.SetFocus
    else
      e_adadi.SetFocus;
  end;

  if s<>'' then
  begin
    check_vorod_moshakhasate_kharida:=false;
    MessageBox(Handle,pchar(s+' ???? ???? ???'),'!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;
/////////////////////////////
procedure Tfrm_eslahe_sahme_abe_geire_aval.type_mahzar;
begin
 if RadioGroup2.ItemIndex=0 then
 begin
  G_mahzari.Visible:=true;
  G_geire_mahzari.Visible:=false;
 end
 else
 begin
  G_mahzari.Visible:=false;
  G_geire_mahzari.Visible:=true;
 end;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.show_entegalha;
begin
  Dm_eslah.ADOQ_show_entegalha.sql.Text:='select * from t_sahamdaran where az_family<>'+QuotedStr('')+
  ' order by family,name,name_pedar';
  Dm_eslah.ADOQ_show_entegalha.Open;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.kasri_to_ashari;
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

procedure Tfrm_eslahe_sahme_abe_geire_aval.typ_tedade_sahm;
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


procedure Tfrm_eslahe_sahme_abe_geire_aval.RadioGroup1Click(
  Sender: TObject);
begin
  typ_tedade_sahm;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_roz_mahzarKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_mah_mahzarKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_sal_mahzarKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.suiEdit1KeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.suiEdit2KeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.suiEdit3KeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_roz_mahzarExit(
  Sender: TObject);
begin
  if strlen(pchar(e_roz_mahzar.Text))=1 then
  e_roz_mahzar.Text:='0'+e_roz_mahzar.Text;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_mah_mahzarExit(
  Sender: TObject);
begin
 if strlen(pchar(e_mah_mahzar.Text))=1 then
  e_mah_mahzar.Text:='0'+e_mah_mahzar.Text;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.suiEdit1Exit(Sender: TObject);
begin
 if strlen(pchar(e_roz.Text))=1 then
  e_roz.Text:='0'+e_roz.Text;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_rozExit(Sender: TObject);
begin
 if strlen(pchar(e_roz.Text))=1 then
  e_roz.Text:='0'+e_roz.Text;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_mahExit(Sender: TObject);
begin
 if strlen(pchar(e_mah.Text))=1 then
  e_mah.Text:='0'+e_mah.Text;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_adadiChange(Sender: TObject);
begin
  if frm_data_input.check_ashar(e_adadi.Text) then
    l_tedad_sahme_abe_ashari.Caption:=e_adadi.Text
  else
    begin
      e_adadi.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_adadiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_soratKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_makhrajKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_zaribKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_adadiExit(Sender: TObject);
begin
  if frm_data_input.check_ashar(e_adadi.Text) then
    l_tedad_sahme_abe_ashari.Caption:=e_adadi.Text
  else
    begin
      e_adadi.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_soratChange(Sender: TObject);
begin
  kasri_to_ashari;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_zaribChange(Sender: TObject);
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

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_makhrajChange(
  Sender: TObject);
begin
  kasri_to_ashari;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_zaribExit(Sender: TObject);
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

procedure Tfrm_eslahe_sahme_abe_geire_aval.FormShow(Sender: TObject);
begin
  CheckBox1.Checked:=false;
  if CheckBox1.Checked then
  begin
    ComboBox1.Visible:=true;
    Label1.Visible:=true;
  end
  else
  begin
    ComboBox1.Visible:=false;
    Label1.Visible:=false;
  end;
  show_entegalha;
  frm_show_exist_entegal.btn_hazf.Visible:=true;
  frm_show_exist_entegal.Caption:='';  
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.e_searchChange(Sender: TObject);
begin
 Dm_eslah.ADOQ_show_entegalha.Locate('family',e_search.Text,[loPartialKey]);
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.RadioGroup2Click(
  Sender: TObject);
begin
  type_mahzar;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    ComboBox1.Visible:=true;
    Label1.Visible:=true;
  end
  else
  begin
    ComboBox1.Visible:=false;
    Label1.Visible:=false;
  end;
end;

procedure Tfrm_eslahe_sahme_abe_geire_aval.BtClick(Sender: TObject);
begin
  if Dm_eslah.ADOQ_show_entegalha.RecordCount>0 then
  begin
    if Dm_eslah.ADOQ_show_entegalhanoe_entegal.AsString='??? ??????' then
    begin
           MessageBox(Handle,pchar('????? ????? ?????? ??????? ????? ??? ??? ?????? ???? ??/???? ???? ? ????? ??? ??? ???? ????? ??? ?? ????? ???'),'??? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
     exit;
    end;


    if not CheckBox1.Checked then//combo
    begin
    if Dm_eslah.ADOQ_show_entegalhanoe_entegal.AsString<>'???' then ////vagf nabashe
    begin
      if check_vorod_moshakhasate_kharida then
      begin

        if StrToFloat(l_tedad_sahme_abe_ashari.Caption)>(Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat) then
        begin
          if check_tedade_sahme_feli_dahande then
            update_aval_afzayeshe_sahm(Dm_eslah.ADOQ_show_entegalhanoe_entegal.AsString);
        end
        else
        begin
          if StrToFloat(l_tedad_sahme_abe_ashari.Caption)=Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
            update_aval_bedone_taghire_sahm(Dm_eslah.ADOQ_show_entegalhanoe_entegal.AsString) ///true
          else
          begin
            if StrToFloat(l_tedad_sahme_abe_ashari.Caption)<Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
              If jam_sahme_abe_entegali_az_entekhabi then
                update_aval_kahesh_sahm(Dm_eslah.ADOQ_show_entegalhanoe_entegal.AsString);///true
          end;
        end;
      end;
    end
    else
    begin /// vagf bashe

        if not entegalha_az_entekhabi_be_bagie then  //entegal az vagf nadarim
        begin
          if StrToFloat(l_tedad_sahme_abe_ashari.Caption)>Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
          begin
            if check_tedade_sahme_feli_dahande then
              update_aval_afzayeshe_sahm_ba_vagf(Dm_eslah.ADOQ_show_entegalhanoe_entegal.AsString);///true
          end
          else
          begin
            if StrToFloat(l_tedad_sahme_abe_ashari.Caption)=Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
              update_aval_bedone_taghire_sahm_ba_vagf(Dm_eslah.ADOQ_show_entegalhanoe_entegal.AsString) ///true
            else
            begin
              if StrToFloat(l_tedad_sahme_abe_ashari.Caption)<Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
                If jam_sahme_abe_entegali_az_entekhabi then
                  update_aval_kahesh_sahm_ba_vagf(Dm_eslah.ADOQ_show_entegalhanoe_entegal.AsString);///true
            end;
          end;
        end //entegal az vagf nadarim
        else
        begin

        end;

    end;// vagf nabashe
    end
    else
    //////////////////////
    //////////////////////
    /////////////////////
    begin

    if ComboBox1.Text<>'???' then ////vagf nabashe
    begin
      if check_vorod_moshakhasate_kharida then
      begin

        if StrToFloat(l_tedad_sahme_abe_ashari.Caption)>Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
        begin
          if check_tedade_sahme_feli_dahande then
            update_aval_afzayeshe_sahm(ComboBox1.Text);
        end
        else
        begin
          if StrToFloat(l_tedad_sahme_abe_ashari.Caption)=Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
            update_aval_bedone_taghire_sahm(ComboBox1.Text) ///true
          else
          begin
            if StrToFloat(l_tedad_sahme_abe_ashari.Caption)<Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
              If jam_sahme_abe_entegali_az_entekhabi then
                update_aval_kahesh_sahm(ComboBox1.Text);///true
          end;
        end;
      end;
    end
    else
    begin /// vagf nabashe

        if not entegalha_az_entekhabi_be_bagie then  //entegal az vagf nadarim
        begin
          if StrToFloat(l_tedad_sahme_abe_ashari.Caption)>Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
          begin
            if check_tedade_sahme_feli_dahande then
              update_aval_afzayeshe_sahm_ba_vagf(ComboBox1.Text);///true
          end
          else
          begin
            if StrToFloat(l_tedad_sahme_abe_ashari.Caption)=Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
              update_aval_bedone_taghire_sahm_ba_vagf(ComboBox1.Text) ///true
            else
            begin
              if StrToFloat(l_tedad_sahme_abe_ashari.Caption)<Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsFloat then
                If jam_sahme_abe_entegali_az_entekhabi then
                  update_aval_kahesh_sahm_ba_vagf(ComboBox1.Text);///true
            end;
          end;
        end //entegal az vagf nadarim
        else
        begin

        end;

    end;// vagf nabashe
    end;//combo
  end;
end;

end.
