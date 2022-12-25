unit unt_entekhabe_aval_dar_koli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, SUIEdit, ExtCtrls;

type
  Tfrm_entekhabe_aval_dar_koli = class(TForm)
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Label6: TLabel;
    e_search: TsuiEdit;
    Bt: TButton;
    Label20: TLabel;
    ComboBox1: TComboBox;
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
    RadioGroup1: TRadioGroup;
    Label5: TLabel;
    l_tedad_sahme_abe_ashari: TLabel;
    procedure FormShow(Sender: TObject);
    procedure e_searchChange(Sender: TObject);
    procedure BtClick(Sender: TObject);
    procedure e_tedad_entegalKeyPress(Sender: TObject; var Key: Char);
    procedure insert_into_temp_avale_koli;
    function check_exist_same_sh_parvande_shakhs_tedede_sahm:boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure e_adadiChange(Sender: TObject);
    procedure e_adadiExit(Sender: TObject);
    procedure e_adadiKeyPress(Sender: TObject; var Key: Char);
    procedure e_zaribChange(Sender: TObject);
    procedure e_zaribKeyPress(Sender: TObject; var Key: Char);
    procedure e_soratKeyPress(Sender: TObject; var Key: Char);
    procedure e_makhrajKeyPress(Sender: TObject; var Key: Char);
    procedure e_soratChange(Sender: TObject);
    procedure e_makhrajChange(Sender: TObject);
    procedure kasri_to_ashari;
    procedure typ_tedade_sahm;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_entekhabe_aval_dar_koli: Tfrm_entekhabe_aval_dar_koli;

implementation

uses unt_dm, unt_Dm_koli, unt_data_input;

{$R *.dfm}

procedure Tfrm_entekhabe_aval_dar_koli.typ_tedade_sahm;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    e_sorat.Clear;
    e_makhraj.Clear;
    e_zarib.Clear;
    G_kasri.Visible:=true;
    G_adadi.Visible:=false;
    l_tedad_sahme_abe_ashari.Caption:='';
  end
  else
  begin
    e_adadi.Clear;
    e_sorat.Clear;
    e_makhraj.Clear;
    e_zarib.Clear;    
    G_kasri.Visible:=false;
    G_adadi.Visible:=true;
    l_tedad_sahme_abe_ashari.Caption:='';    
  end;
end;



procedure Tfrm_entekhabe_aval_dar_koli.kasri_to_ashari;
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


function Tfrm_entekhabe_aval_dar_koli.check_exist_same_sh_parvande_shakhs_tedede_sahm:boolean;
begin
  check_exist_same_sh_parvande_shakhs_tedede_sahm:=false;
  Dm_koli.ADOQ_temp_avale_koli.SQL.Text:='select * from t_temp_aval_dar_koli  where cod_shakhs='+Dm_koli.ADOQ_dahande_dar_kolicod_shakhs.AsString+
  ' and sh_parvande='+QuotedStr(Dm_koli.ADOQ_dahande_dar_kolish_parvande.AsString)+' and tedade_sahme_ashari='+l_tedad_sahme_abe_ashari.Caption;
  Dm_koli.ADOQ_temp_avale_koli.Open;

  if Dm_koli.ADOQ_temp_avale_koli.RecordCount > 0 then
     check_exist_same_sh_parvande_shakhs_tedede_sahm:=true;
end;

procedure Tfrm_entekhabe_aval_dar_koli.insert_into_temp_avale_koli;
begin
if RadioGroup1.ItemIndex=1 then
  Dm_koli.ADOQ_temp_avale_koli.SQL.Text:='insert into t_temp_aval_dar_koli(noe_entegal,cod_shakhs,family,name,sh_parvande,tedade_sahme_ashari,cod_reshteei,name_pedar,id_dar_sahamdaran)'+
  ' values('+QuotedStr(ComboBox1.Text)+','+
  Dm_koli.ADOQ_dahande_dar_kolicod_shakhs.AsString+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_kolifamily.AsString)+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_koliname.AsString)+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_kolish_parvande.AsString)+','+
  l_tedad_sahme_abe_ashari.Caption+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_kolicod_reshteei.AsString)+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_koliname_pedar.AsString)+','+
  Dm_koli.ADOQ_dahande_dar_koliid.AsString+')'

else

  Dm_koli.ADOQ_temp_avale_koli.SQL.Text:='insert into t_temp_aval_dar_koli(sahm_zaribe_kasr,sahm_sorate_kasr,sahm_makhraje_kasr,noe_entegal,cod_shakhs,family,name,sh_parvande,tedade_sahme_ashari,cod_reshteei,name_pedar,id_dar_sahamdaran)'+
  ' values('+QuotedStr(e_zarib.Text)+','+QuotedStr(e_sorat.Text)+','+QuotedStr(e_makhraj.Text)+','+
  QuotedStr(ComboBox1.Text)+','+
  Dm_koli.ADOQ_dahande_dar_kolicod_shakhs.AsString+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_kolifamily.AsString)+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_koliname.AsString)+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_kolish_parvande.AsString)+','+
  l_tedad_sahme_abe_ashari.Caption+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_kolicod_reshteei.AsString)+','+
  QuotedStr(Dm_koli.ADOQ_dahande_dar_koliname_pedar.AsString)+','+
  Dm_koli.ADOQ_dahande_dar_koliid.AsString+')';

  Dm_koli.ADOQ_temp_avale_koli.ExecSQL;
end;


procedure Tfrm_entekhabe_aval_dar_koli.FormShow(Sender: TObject);
begin
  e_search.Clear;
  Dm_koli.ADOQ_dahande_dar_koli.SQL.Text:='select family,name,tedade_sahme_ashari,'+
  'cod_reshteei,name_pedar,nafare_aval,tedade_sahme_ashari_avalie,cod_shakhs,id,sh_parvande,noe_entegal,sh_sanade_mahzari,somn,(tedade_sahme_ashari-somn) as max_entegal'+
  ' from t_sahamdaran'+
  ' order by family,name,name_pedar';
  Dm_koli.ADOQ_dahande_dar_koli.Open;
   l_tedad_sahme_abe_ashari.Caption:='';
   e_sorat.Clear;
   e_zarib.Clear;
   e_makhraj.Clear;
   e_adadi.Clear;
   RadioGroup1.ItemIndex:=0;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_searchChange(Sender: TObject);
begin
  Dm_koli.ADOQ_dahande_dar_koli.Locate('family',e_search.Text,[loPartialKey]);
end;

procedure Tfrm_entekhabe_aval_dar_koli.BtClick(Sender: TObject);
begin
if ComboBox1.Text='' then
    MessageBox(Handle,'äæÚ ÇäÊŞÇá æÇÑÏ äÔÏå ÇÓÊ','ÎØÇ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin

  if l_tedad_sahme_abe_ashari.Caption='' then
    l_tedad_sahme_abe_ashari.Caption:='0';
  if (l_tedad_sahme_abe_ashari.Caption='0') then
  begin
    if RadioGroup1.ItemIndex=1 then
      e_adadi.SetFocus
    else
      e_zarib.SetFocus;

    MessageBox(Handle,'ÊÚÏÇÏ Óåã ÇäÊŞÇáí ÇÒ ÔÎÕ ÇäÊÎÇÈí ÑÇ æÇÑÏ äãÇííÏ','ÎØÇ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
  begin
    if StrToFloat(l_tedad_sahme_abe_ashari.Caption)>Dm_koli.ADOQ_dahande_dar_kolimax_entegal.AsFloat then
    begin
    if RadioGroup1.ItemIndex=1 then
      e_adadi.SetFocus
    else
      e_zarib.SetFocus;
      
      MessageBox(Handle,'ÊÚÏÇÏ Óåã ÂÈ æÇÑÏ ÔÏå ÈÑÇí ÇäÊŞÇá ÈíÔÊÑ ÇÒ (ÊÚÏÇÏ Ëãä ÇÚíÇäí - ÊÚÏÇÏ Óåã İÚáí)  ÏÑ Çíä ÔãÇÑå ÑæäÏå ãÑÈæØ Èå ÔÎÕ ÇäÊÎÇÈ ÔÏå ãí ÈÇÔÏ.','ÎØÇ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end
    else
    begin
      if Dm_koli.ADOQ_dahande_dar_kolinoe_entegal.AsString='æŞİ' then
        MessageBox(Handle,pchar('Óåã ÂÈ ÇäÊÎÇÈ ÔÏå Èå ÕæÑÊ æŞİ ËÈÊ ÑÏíÏå æ ŞÇÈá ÇäÊŞÇá äãí ÈÇÔÏ.'),'!ÎØÇ',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION)
      else
      begin
        if not check_exist_same_sh_parvande_shakhs_tedede_sahm then
        begin
          insert_into_temp_avale_koli;
          Dm_koli.ADOQ_temp_avale_koli.SQL.Text:='select * from t_temp_aval_dar_koli order by id';
          Dm_koli.ADOQ_temp_avale_koli.Open;
          Close;
        end
        else
          MessageBox(Handle,'ÊÚÏÇÏ Óåã ÇäÊŞÇáí ÇÒ ÔÎÕ ÌÇÑí æ ÔãÇÑå ÑæäÏå ÌÇÑí í˜ ÈÇÑ æÇÑÏ ÔÏå ÇÓÊ','ÎØÇ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      end;
    end;
  end;
end;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_tedad_entegalKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_entekhabe_aval_dar_koli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Dm_koli.ADOQ_temp_avale_koli.SQL.Text:='select * from t_temp_aval_dar_koli order by id';
      Dm_koli.ADOQ_temp_avale_koli.Open;
end;

procedure Tfrm_entekhabe_aval_dar_koli.RadioGroup1Click(Sender: TObject);
begin
  typ_tedade_sahm;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_adadiChange(Sender: TObject);
begin
  if frm_data_input.check_ashar(e_adadi.Text) then
    l_tedad_sahme_abe_ashari.Caption:=e_adadi.Text
  else
    begin
      e_adadi.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_adadiExit(Sender: TObject);
begin
  if frm_data_input.check_ashar(e_adadi.Text) then
    l_tedad_sahme_abe_ashari.Caption:=e_adadi.Text
  else
    begin
      e_adadi.Text:='';
      l_tedad_sahme_abe_ashari.Caption:='';
    end;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_adadiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_zaribChange(Sender: TObject);
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

procedure Tfrm_entekhabe_aval_dar_koli.e_zaribKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_soratKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_makhrajKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_soratChange(Sender: TObject);
begin
kasri_to_ashari;
end;

procedure Tfrm_entekhabe_aval_dar_koli.e_makhrajChange(Sender: TObject);
begin
kasri_to_ashari;
end;

end.
