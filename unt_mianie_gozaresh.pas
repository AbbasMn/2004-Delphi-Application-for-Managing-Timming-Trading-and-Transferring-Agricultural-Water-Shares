unit unt_mianie_gozaresh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls;

type
  Tfrm_mianie_gozaresh = class(TForm)
    DBGrid_az: TDBGrid;
    DataSource1: TDataSource;
    L_type: TLabel;
    Button1: TButton;
    L_type_trace: TLabel;
    DBGrid_be: TDBGrid;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure show_miani_az_fard(cod_entegal_dahande:string);
    procedure add_to_temp(id_entegal:string);
    procedure find_fard_in_any_level_of_tree(cod:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mianie_gozaresh: Tfrm_mianie_gozaresh;

implementation

uses unt_dm, unt_trace_entegal, unt_show_afrad_mabnaye_gozaresh;

{$R *.dfm}
procedure Tfrm_mianie_gozaresh.find_fard_in_any_level_of_tree(cod:string);
var cod_shakhs,cod_reshte:string;
begin

  cod_shakhs:=cod;

  if StrToInt(cod_shakhs)>(9999) then
   cod_reshte:=cod_shakhs
   else
    begin
      if StrToInt(cod_shakhs)>(999) then
        cod_reshte:='0'+cod_shakhs
      else
      begin
        if StrToInt(cod_shakhs)>(99) then
          cod_reshte:='00'+cod_shakhs
        else
        begin
          if StrToInt(cod_shakhs)>(9) then
            cod_reshte:='000'+cod_shakhs
            else
              cod_reshte:='0000'+cod_shakhs;
        end;
      end;
    end;
  Dm.ADOQ_show_mianie_entegal_be.SQL.Text:='select sh_parvande,az_name,az_family,id,cod_reshteei,cod_shakhs,name,family,id_entegal_dahande  from t_sahamdaran'+
  ' where cod_reshteei like '+QuotedStr('%'+cod_reshte)+' and cod_reshteei<>'+QuotedStr(cod_reshte);

  //+' group by sh_parvande';
  Dm.ADOQ_show_mianie_entegal_be.Open;
end;

procedure Tfrm_mianie_gozaresh.add_to_temp(id_entegal:string);
begin
  frm_trace_entegal.id_entegal:=id_entegal;

  Dm.ADOQ_for_insert_into_temp_gozaresh.SQL.Text:='select sh_parvande,name,family,tarikh,'+
  'name_pedar,noe_entegal,sh_sanade_mahzari,tedade_sahme_ashari_avalie,az_name,az_family,az_name_pedar'+
  ' from t_sahamdaran where id='+frm_trace_entegal.id_entegal;
  Dm.ADOQ_for_insert_into_temp_gozaresh.Open;

  frm_trace_entegal.name:=Dm.ADOQ_for_insert_into_temp_gozareshname.AsString;

  frm_trace_entegal.family:=Dm.ADOQ_for_insert_into_temp_gozareshfamily.AsString;

  frm_trace_entegal.sh_parvande:=Dm.ADOQ_for_insert_into_temp_gozareshsh_parvande.AsString;

  frm_trace_entegal.tarikh:=Dm.ADOQ_for_insert_into_temp_gozareshtarikh.AsString;

  frm_trace_entegal.name_pedar:=Dm.ADOQ_for_insert_into_temp_gozareshname_pedar.AsString;

  frm_trace_entegal.noe_entegal:=Dm.ADOQ_for_insert_into_temp_gozareshnoe_entegal.AsString;

  frm_trace_entegal.sh_sanade_mahzari:=Dm.ADOQ_for_insert_into_temp_gozareshsh_sanade_mahzari.AsString;

  frm_trace_entegal.tedade_sahme_ashari_avalie:=Dm.ADOQ_for_insert_into_temp_gozareshtedade_sahme_ashari_avalie.AsString;



  frm_trace_entegal.az_family:=Dm.ADOQ_for_insert_into_temp_gozareshaz_family.AsString;

  frm_trace_entegal.az_name:=Dm.ADOQ_for_insert_into_temp_gozareshaz_name.AsString;

  frm_trace_entegal.az_name_pedar:=Dm.ADOQ_for_insert_into_temp_gozareshaz_name_pedar.AsString;

  frm_trace_entegal.insert_to_temp_gozaresh;

  if frm_mianie_gozaresh.L_type_trace.Caption='az' then
    frm_trace_entegal.show_temp_gozaresh_az
  else
    frm_trace_entegal.show_temp_gozaresh_be;
end;

procedure Tfrm_mianie_gozaresh.show_miani_az_fard(cod_entegal_dahande:string);
begin
  Dm.ADOQ_show_mianie_entegal.SQL.Text:='select sh_parvande,name,family,id,cod_reshteei,cod_shakhs from t_sahamdaran'+
  ' where id_entegal_dahande='+cod_entegal_dahande;
  //+' group by sh_parvande';
  Dm.ADOQ_show_mianie_entegal.Open;
end;

procedure Tfrm_mianie_gozaresh.Button1Click(Sender: TObject);
begin
  if L_type_trace.Caption='az' then
  begin
    if Dm.ADOQ_show_mianie_entegal.RecordCount >0 then
    begin
      frm_trace_entegal.az_family:=Dm.ADOQ_show_mianie_entegalfamily.AsString;
      frm_trace_entegal.az_name:=Dm.ADOQ_show_mianie_entegalname.AsString;

      frm_trace_entegal.G_entegale_mostagim.Caption:='ãÔÎÕÇÊ ˜ÓÇäí ˜å Óåã ÂÈ ÎæÏ ÑÇ ãÓÊŞíãÇğ ÇÒ   '+
      frm_trace_entegal.az_name+' '+frm_trace_entegal.az_family+' ÈÇ ˜Ï ÔäÇÓÇíí '+Dm.ADOQ_show_mianie_entegalcod_shakhs.AsString+'  ÏÑíÇİÊ äãæÏå ÇäÏ';

      frm_mianie_gozaresh.add_to_temp(Dm.ADOQ_show_mianie_entegalid.AsString);

      frm_show_afrad_mabnaye_gozaresh.gozaresh_entegalha_az_fard_be_bagie(Dm.ADOQ_show_mianie_entegalcod_reshteei.AsString);

      frm_trace_entegal.DBGrid_az.Visible:=true;
      frm_trace_entegal.DBGrid_be.Visible:=false;

      frm_trace_entegal.show_temp_gozaresh_az;

      if Dm.ADOQ_show_tempe_entegal.RecordCount=0 then
        frm_trace_entegal.cod_dar_tree:=Dm.ADOQ_show_entegale_mostagimcod_shakhs.AsString
      else
        frm_trace_entegal.cod_dar_tree:='-1';
      frm_trace_entegal.ShowModal;
    end;
  end;
  if L_type_trace.Caption='be' then
  begin
    if Dm.ADOQ_show_mianie_entegal_be.RecordCount >0 then
    begin
      frm_trace_entegal.az_family:=Dm.ADOQ_show_mianie_entegal_beaz_family.AsString;
      frm_trace_entegal.az_name:=Dm.ADOQ_show_mianie_entegal_beaz_name.AsString;

      frm_trace_entegal.G_entegale_mostagim.Caption:='ãÔÎÕÇÊ ˜ÓÇäí ˜å Óåã ÂÈ ÎæÏ ÑÇ ãÓÊŞíãÇğ Èå  '+
      frm_trace_entegal.az_name+' '+frm_trace_entegal.az_family+' ÈÇ ˜Ï ÔäÇÓÇíí '+Dm.ADOQ_show_mianie_entegal_beid_entegal_dahande.AsString+' ãäÊŞá äãæÏå ÇäÏ ';

      frm_mianie_gozaresh.add_to_temp(Dm.ADOQ_show_mianie_entegal_beid.AsString);

      frm_trace_entegal.DBGrid_az.Visible:=false;
      frm_trace_entegal.DBGrid_be.Visible:=true;

      frm_show_afrad_mabnaye_gozaresh.down_to_root(Dm.ADOQ_show_mianie_entegal_becod_reshteei.AsString);

      frm_trace_entegal.ShowModal;
    end
  end;
end;

end.

