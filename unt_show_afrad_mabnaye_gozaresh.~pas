unit unt_show_afrad_mabnaye_gozaresh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, ExtCtrls, SUIEdit;

type
  Tfrm_show_afrad_mabnaye_gozaresh = class(TForm)
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    Label6: TLabel;
    e_search: TsuiEdit;
    Button1: TButton;
    l_type: TLabel;
    procedure FormShow(Sender: TObject);
    procedure e_searchChange(Sender: TObject);
    procedure type_;
    procedure gozaresh_entegalha_az_fard_be_bagie(cod_reshtei:string);
    procedure down_to_root(cod:string);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure show_shomare_entegalhaye_koli_moaian_az;
    procedure show_shomare_entegalhaye_koli_moaian_be;
    procedure show_shomare_entegalhaye_koli_na_moaian_az;
    procedure show_shomare_entegalhaye_koli_na_moaian_be;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_afrad_mabnaye_gozaresh: Tfrm_show_afrad_mabnaye_gozaresh;

implementation

uses unt_dm, unt_vorode_moshakhasat, unt_trace_entegal,
  unt_mianie_gozaresh, unt_gozaresh_az_entegale_moayan, unt_Dm_koli,
  unt_gozaresh_az_entegale_na_moayan;

{$R *.dfm}

procedure Tfrm_show_afrad_mabnaye_gozaresh.show_shomare_entegalhaye_koli_na_moaian_be;
begin
 Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_be.SQL.Text:='select cod_shakhs,id_koli_na_moaian_be,family,name,koli from t_sahamdaran'+

 ' where cod_shakhs='+frm_gozaresh_az_entegale_na_moayan.L_code_shakhs.Caption+' and koli='+QuotedStr('˜áí äÇãÚíä')+

 ' group by  id_koli_na_moaian_be,family,name,koli,cod_shakhs order by  id_koli_na_moaian_be,family,name,koli,cod_shakhs';

 Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_be.Open;
end;



procedure Tfrm_show_afrad_mabnaye_gozaresh.show_shomare_entegalhaye_koli_na_moaian_az;
begin
 Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_az.SQL.Text:='select id_entegal_dahande,id_koli_na_moaian_be,az_family,az_name,koli from t_sahamdaran'+

 ' where id_entegal_dahande='+frm_gozaresh_az_entegale_na_moayan.L_code_shakhs.Caption+' and koli='+QuotedStr('˜áí äÇãÚíä')+
 ' group by  id_koli_na_moaian_be,az_family,az_name,koli,id_entegal_dahande order by  id_entegal_dahande,id_koli_na_moaian_be,az_family,az_name,koli';
 Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_az.Open;
end;
/////////////////////////////
procedure Tfrm_show_afrad_mabnaye_gozaresh.show_shomare_entegalhaye_koli_moaian_be;
begin
 Dm_koli.ADOQ_sh_entegalhaye_koli_moaian_be.SQL.Text:='select cod_shakhs,id_koli_moaian_be,family,name,koli from t_sahamdaran'+

 ' where cod_shakhs='+frm_gozaresh_az_entegale_moayan.L_code_shakhs.Caption+' and koli='+QuotedStr('˜áí ãÚíä')+

 ' group by  id_koli_moaian_be,family,name,koli,cod_shakhs order by  id_koli_moaian_be,family,name,koli,cod_shakhs';

 Dm_koli.ADOQ_sh_entegalhaye_koli_moaian_be.Open;
end;


procedure Tfrm_show_afrad_mabnaye_gozaresh.show_shomare_entegalhaye_koli_moaian_az;
begin
 Dm_koli.ADOQ_sh_entegalhaye_koli_moaian_az.SQL.Text:='select id_entegal_dahande,id_koli_moaian_be,az_family,az_name,koli from t_sahamdaran'+

 ' where id_entegal_dahande='+frm_gozaresh_az_entegale_moayan.L_code_shakhs.Caption+' and koli='+QuotedStr('˜áí ãÚíä')+
 ' group by  id_koli_moaian_be,az_family,az_name,koli,id_entegal_dahande order by  id_entegal_dahande,id_koli_moaian_be,az_family,az_name,koli';
 Dm_koli.ADOQ_sh_entegalhaye_koli_moaian_az.Open;
end;


procedure Tfrm_show_afrad_mabnaye_gozaresh.gozaresh_entegalha_az_fard_be_bagie(cod_reshtei:string);
begin
 Dm.ADOQ_show_entegale_mostagim.SQL.Text:='select * from t_sahamdaran where cod_reshteei like '+QuotedStr(cod_reshtei+'_____')+'  order by id';
 Dm.ADOQ_show_entegale_mostagim.Open;
end;

procedure Tfrm_show_afrad_mabnaye_gozaresh.down_to_root(cod:string);
var cod_reshte:string;
  i,j:integer;
begin

 cod_reshte:=cod;

 i:=strlen(pchar(cod_reshte));

 if i>10 then
 begin
  i:=i-5;
  cod_reshte:='';
  for j:=1 to i do
    cod_reshte:=cod_reshte+cod[j];
   
  Dm.ADOQ_show_entegale_mostagim_be.SQL.Text:='select * from t_sahamdaran where cod_reshteei='+QuotedStr(cod_reshte);
  Dm.ADOQ_show_entegale_mostagim_be.Open;
 end
 else
 begin
  Dm.ADOQ_show_entegale_mostagim_be.SQL.Text:='select * from t_sahamdaran where cod_reshteei='+QuotedStr('');
  Dm.ADOQ_show_entegale_mostagim_be.Open;
 end;
end;

procedure Tfrm_show_afrad_mabnaye_gozaresh.type_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    if l_type.Caption='trace' then
    begin
      frm_trace_entegal.az_family:=Dm.ADOQ_show_afrade_mojodfamily.AsString;
      frm_trace_entegal.az_name:=Dm.ADOQ_show_afrade_mojodname.AsString;
      frm_trace_entegal.az_cod_shakhs:=Dm.ADOQ_show_afrade_mojodcod.AsString;
      frm_mianie_gozaresh.L_type.Caption:='ÇäÊÞÇáåÇí ãÊÝÇæÊí ˜å ÔÎÕ ÇäÊÎÇÈí ÏÑ ÂäåÇ Óåã ÂÈ ÎæÏ ÑÇ ÇäÊÞÇá ÏÇÏå ÇÓÊ';

      frm_mianie_gozaresh.show_miani_az_fard(Dm.ADOQ_show_afrade_mojodcod_reshte.AsString);

      frm_mianie_gozaresh.DBGrid_az.Visible:=true;
      frm_mianie_gozaresh.DBGrid_be.Visible:=false;
      frm_mianie_gozaresh.ShowModal;
    end;


    if l_type.Caption='koli moaian' then
    begin
      frm_gozaresh_az_entegale_moayan.l_family.Caption:=Dm.ADOQ_show_afrade_mojodfamily.AsString;
      frm_gozaresh_az_entegale_moayan.L_name.Caption:=Dm.ADOQ_show_afrade_mojodname.AsString;
      frm_gozaresh_az_entegale_moayan.l_pedar.Caption:=Dm.ADOQ_show_afrade_mojodname_pedar.AsString;
      frm_gozaresh_az_entegale_moayan.l_sh_sh.Caption:=Dm.ADOQ_show_afrade_mojodsh_sh.AsString;
      frm_gozaresh_az_entegale_moayan.L_code_shakhs.Caption:=Dm.ADOQ_show_afrade_mojodcod.AsString;

      show_shomare_entegalhaye_koli_moaian_az;

      frm_gozaresh_az_entegale_moayan.Gb_sh_entegle_koli_moaian.Caption:='  ÇäÊÞÇáåÇí ˜áí ãÚíä ˜å ÔÎÕ ÇäÊÞÇá ÏåäÏå ÈæÏå  ' ;
      frm_gozaresh_az_entegale_moayan.DBGrid_az.Visible:=true;
      frm_gozaresh_az_entegale_moayan.DBGrid_be.Visible:=false;
      frm_gozaresh_az_entegale_moayan.btn_az.Visible:=true;
      frm_gozaresh_az_entegale_moayan.btn_be.Visible:=false;

      close;
    end;



    if l_type.Caption='koli na moaian' then
    begin
      frm_gozaresh_az_entegale_na_moayan.l_family.Caption:=Dm.ADOQ_show_afrade_mojodfamily.AsString;
      frm_gozaresh_az_entegale_na_moayan.L_name.Caption:=Dm.ADOQ_show_afrade_mojodname.AsString;
      frm_gozaresh_az_entegale_na_moayan.l_pedar.Caption:=Dm.ADOQ_show_afrade_mojodname_pedar.AsString;
      frm_gozaresh_az_entegale_na_moayan.l_sh_sh.Caption:=Dm.ADOQ_show_afrade_mojodsh_sh.AsString;
      frm_gozaresh_az_entegale_na_moayan.L_code_shakhs.Caption:=Dm.ADOQ_show_afrade_mojodcod.AsString;

      show_shomare_entegalhaye_koli_na_moaian_az;

      frm_gozaresh_az_entegale_na_moayan.Gb_sh_entegle_koli_moaian.Caption:='  ÇäÊÞÇáåÇí ˜áí äÇãÚíä ˜å ÔÎÕ ÇäÊÞÇá ÏåäÏå ÈæÏå  ' ;
      frm_gozaresh_az_entegale_na_moayan.DBGrid_az.Visible:=true;
      frm_gozaresh_az_entegale_na_moayan.DBGrid_be.Visible:=false;
      frm_gozaresh_az_entegale_na_moayan.btn_az.Visible:=true;
      frm_gozaresh_az_entegale_na_moayan.btn_be.Visible:=false;

      close;
    end;
  end;


  if RadioGroup1.ItemIndex=1 then
  begin
    if l_type.Caption='trace' then
    begin
      frm_trace_entegal.az_family:=Dm.ADOQ_show_afrade_mojodfamily.AsString;
      frm_trace_entegal.az_name:=Dm.ADOQ_show_afrade_mojodname.AsString;
      frm_trace_entegal.az_cod_shakhs:=Dm.ADOQ_show_afrade_mojodcod.AsString;
      frm_mianie_gozaresh.L_type.Caption:='  ÇäÊÞÇáåÇí ãÊÝÇæÊí ˜å ÔÎÕ ÇäÊÎÇÈí ÏÑ ÂäåÇ Óåã ÂÈ ÏÑíÇÝÊ äãæÏå ÇÓÊ';

      frm_mianie_gozaresh.find_fard_in_any_level_of_tree(Dm.ADOQ_show_afrade_mojodcod.AsString);

      frm_mianie_gozaresh.DBGrid_az.Visible:=false;
      frm_mianie_gozaresh.DBGrid_be.Visible:=true;
      frm_mianie_gozaresh.ShowModal;
    end;


    if l_type.Caption='koli moaian' then
    begin
      frm_gozaresh_az_entegale_moayan.l_family.Caption:=Dm.ADOQ_show_afrade_mojodfamily.AsString;
      frm_gozaresh_az_entegale_moayan.L_name.Caption:=Dm.ADOQ_show_afrade_mojodname.AsString;
      frm_gozaresh_az_entegale_moayan.l_pedar.Caption:=Dm.ADOQ_show_afrade_mojodname_pedar.AsString;
      frm_gozaresh_az_entegale_moayan.l_sh_sh.Caption:=Dm.ADOQ_show_afrade_mojodsh_sh.AsString;
      frm_gozaresh_az_entegale_moayan.L_code_shakhs.Caption:=Dm.ADOQ_show_afrade_mojodcod.AsString;

      show_shomare_entegalhaye_koli_moaian_be;

      frm_gozaresh_az_entegale_moayan.Gb_sh_entegle_koli_moaian.Caption:='  ÇäÊÞÇáåÇí ˜áí ãÚíä ˜å ÔÎÕ íÑäÏå ÈæÏå  ';
      frm_gozaresh_az_entegale_moayan.DBGrid_az.Visible:=false;
      frm_gozaresh_az_entegale_moayan.DBGrid_be.Visible:=true;
      frm_gozaresh_az_entegale_moayan.btn_az.Visible:=false;
      frm_gozaresh_az_entegale_moayan.btn_be.Visible:=true;
      close;
    end;


    if l_type.Caption='koli na moaian' then
    begin
      frm_gozaresh_az_entegale_na_moayan.l_family.Caption:=Dm.ADOQ_show_afrade_mojodfamily.AsString;
      frm_gozaresh_az_entegale_na_moayan.L_name.Caption:=Dm.ADOQ_show_afrade_mojodname.AsString;
      frm_gozaresh_az_entegale_na_moayan.l_pedar.Caption:=Dm.ADOQ_show_afrade_mojodname_pedar.AsString;
      frm_gozaresh_az_entegale_na_moayan.l_sh_sh.Caption:=Dm.ADOQ_show_afrade_mojodsh_sh.AsString;
      frm_gozaresh_az_entegale_na_moayan.L_code_shakhs.Caption:=Dm.ADOQ_show_afrade_mojodcod.AsString;

      show_shomare_entegalhaye_koli_na_moaian_be;

      frm_gozaresh_az_entegale_na_moayan.Gb_sh_entegle_koli_moaian.Caption:='  ÇäÊÞÇáåÇí ˜áí äÇãÚíä ˜å ÔÎÕ íÑäÏå ÈæÏå  ';
      frm_gozaresh_az_entegale_na_moayan.DBGrid_az.Visible:=false;
      frm_gozaresh_az_entegale_na_moayan.DBGrid_be.Visible:=true;
      frm_gozaresh_az_entegale_na_moayan.btn_az.Visible:=false;
      frm_gozaresh_az_entegale_na_moayan.btn_be.Visible:=true;
      close;
    end;
  end;


end;

procedure Tfrm_show_afrad_mabnaye_gozaresh.FormShow(Sender: TObject);
begin
  frm_vorode_moshakhasat.shpw_afrade_mojod;
  RadioGroup1.ItemIndex:=0;

   if RadioGroup1.ItemIndex=0 then
   frm_mianie_gozaresh.L_type_trace.Caption:='az'
 else
   frm_mianie_gozaresh.L_type_trace.Caption:='be';
end;

procedure Tfrm_show_afrad_mabnaye_gozaresh.e_searchChange(Sender: TObject);
begin
  dm.ADOQ_show_afrade_mojod.Locate('family',e_search.Text,[loPartialKey]);
end;

procedure Tfrm_show_afrad_mabnaye_gozaresh.Button1Click(Sender: TObject);
begin
  if Dm.ADOQ_show_afrade_mojod.RecordCount>0 then
    type_;

end;

procedure Tfrm_show_afrad_mabnaye_gozaresh.RadioGroup1Click(
  Sender: TObject);
begin
 if RadioGroup1.ItemIndex=0 then
   frm_mianie_gozaresh.L_type_trace.Caption:='az'
 else
   frm_mianie_gozaresh.L_type_trace.Caption:='be';
end;

end.
