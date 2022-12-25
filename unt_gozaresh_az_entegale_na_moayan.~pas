unit unt_gozaresh_az_entegale_na_moayan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls;

type
  Tfrm_gozaresh_az_entegale_na_moayan = class(TForm)
    Button132132: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    L_name: TLabel;
    l_family: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    l_pedar: TLabel;
    Label15: TLabel;
    l_sh_sh: TLabel;
    L_code_shakhs: TLabel;
    Gb_sh_entegle_koli_moaian: TGroupBox;
    DBGrid_az: TDBGrid;
    DBGrid_be: TDBGrid;
    btn_az: TButton;
    btn_be: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure clear;
    procedure Button132132Click(Sender: TObject);
    procedure joziat_koli_na_moaian_be;
    procedure joziat_koli_na_moaian_az;
    procedure btn_beClick(Sender: TObject);
    procedure btn_azClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_gozaresh_az_entegale_na_moayan: Tfrm_gozaresh_az_entegale_na_moayan;

implementation

uses unt_Dm_koli, unt_show_afrad_mabnaye_gozaresh, unt_dm,
  unt_joziat_koli_moaian;

{$R *.dfm}

procedure Tfrm_gozaresh_az_entegale_na_moayan.joziat_koli_na_moaian_be;
begin
  dm.ADOQ_show_afrad.SQL.Text:='select * from t_sahamdaran where cod_shakhs='+
  Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_becod_shakhs.AsString+' and id_koli_na_moaian_be='+
  Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_beid_koli_na_moaian_be.AsString;
  dm.ADOQ_show_afrad.Open;
end;


procedure Tfrm_gozaresh_az_entegale_na_moayan.joziat_koli_na_moaian_az;
begin
  dm.ADOQ_show_afrad.SQL.Text:='select * from t_sahamdaran where id_entegal_dahande='+
  Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_azid_entegal_dahande.AsString+' and id_koli_na_moaian_be='+
  Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_azid_koli_na_moaian_be.AsString;
  dm.ADOQ_show_afrad.Open;
end;



procedure Tfrm_gozaresh_az_entegale_na_moayan.clear;
begin
  L_name.Caption:='';
  l_family.Caption:='';
  l_pedar.Caption:='';
  l_sh_sh.Caption:='';
  Gb_sh_entegle_koli_moaian.Caption:='';
end;

procedure Tfrm_gozaresh_az_entegale_na_moayan.FormShow(Sender: TObject);
begin
 Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_az.SQL.Text:='select id_entegal_dahande,id_koli_na_moaian_be,az_family,az_name,koli from t_sahamdaran'+

 ' where id_entegal_dahande <0'+
 ' group by  id_entegal_dahande,id_koli_na_moaian_be,az_family,az_name,koli order by  id_entegal_dahande,id_koli_na_moaian_be,az_family,az_name,koli';
 Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_az.Open;



 Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_be.SQL.Text:='select cod_shakhs,id_koli_na_moaian_be,family,name,koli from t_sahamdaran'+

 ' where cod_shakhs <0' +

 ' group by  id_koli_na_moaian_be,family,name,koli,cod_shakhs order by  id_koli_na_moaian_be,family,name,koli,cod_shakhs';

 Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_be.Open;

  clear;
end;

procedure Tfrm_gozaresh_az_entegale_na_moayan.Button132132Click(
  Sender: TObject);
begin
  frm_show_afrad_mabnaye_gozaresh.l_type.Caption:='koli na moaian';
  frm_show_afrad_mabnaye_gozaresh.ShowModal;
end;

procedure Tfrm_gozaresh_az_entegale_na_moayan.btn_beClick(Sender: TObject);
begin
if Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_be.RecordCount>0 then
begin
  joziat_koli_na_moaian_be;

  frm_joziat_koli_moaian.ShowModal;
end;
end;

procedure Tfrm_gozaresh_az_entegale_na_moayan.btn_azClick(Sender: TObject);
begin
if Dm_koli.ADOQ_sh_entegalhaye_koli_na_moaian_az.RecordCount>0 then
begin
  joziat_koli_na_moaian_az;

  frm_joziat_koli_moaian.ShowModal;
end;
end;

end.
