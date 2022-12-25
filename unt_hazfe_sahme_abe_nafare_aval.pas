unit unt_hazfe_sahme_abe_nafare_aval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, SUIEdit;

type
  Tfrm_hazfe_sahme_abe_nafare_aval = class(TForm)
    Label6: TLabel;
    e_search: TsuiEdit;
    DBGrid2: TDBGrid;
    l_id: TLabel;
    DataSource1: TDataSource;
    Bt: TButton;
    procedure e_searchChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure show_avlha;
    procedure BtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_hazfe_sahme_abe_nafare_aval: Tfrm_hazfe_sahme_abe_nafare_aval;

implementation

uses unt_dm, unt_show_exist_entegal;

{$R *.dfm}
procedure Tfrm_hazfe_sahme_abe_nafare_aval.show_avlha;
begin
  Dm.ADOQ_show_nafarat_baraye_dadane_sahm.SQL.Text:='select tarikh,sahm_zaribe_kasr,sahm_sorate_kasr,sahm_makhraje_kasr,family,name,tedade_sahme_ashari,'+
  'cod_reshteei,name_pedar,nafare_aval,tedade_sahme_ashari_avalie,cod_shakhs,id,sh_parvande,noe_entegal,entegal_az_id,somn,entegale_somn,(tedade_sahme_ashari-somn)as max_entegal,kharid_somn'+
  ' from t_sahamdaran'+
  ' where nafare_aval='+QuotedStr('äİÑÇæá')+
  ' order by family,name,name_pedar';
  Dm.ADOQ_show_nafarat_baraye_dadane_sahm.Open;
end;


procedure Tfrm_hazfe_sahme_abe_nafare_aval.e_searchChange(Sender: TObject);
begin
 Dm.ADOQ_show_nafarat_baraye_dadane_sahm.Locate('family',e_search.Text,[loPartialKey]);
end;

procedure Tfrm_hazfe_sahme_abe_nafare_aval.FormShow(Sender: TObject);
begin
  show_avlha;
  frm_show_exist_entegal.btn_hazf.Visible:=true;
  frm_show_exist_entegal.Caption:='';
end;

procedure Tfrm_hazfe_sahme_abe_nafare_aval.BtClick(Sender: TObject);
begin
if Dm.ADOQ_show_nafarat_baraye_dadane_sahm.RecordCount >0 then
begin
      Dm.ADOQ_show_afrad.SQL.Text:='select tarikh,family,name,tedade_sahme_ashari,noe_entegal,name_pedar,tedade_sahme_ashari_avalie'+
  ',sh_parvande,somn,entegale_somn,(tedade_sahme_ashari-somn) as max_entegal,kharid_somn,cod_reshteei,entegal_az_id,id from t_sahamdaran  where cod_reshteei like '+
      QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString+'_____')+' and cod_reshteei<>'+QuotedStr(Dm.ADOQ_show_nafarat_baraye_dadane_sahmcod_reshteei.AsString)+
      '  order by id';
      Dm.ADOQ_show_afrad.Open;

      if Dm.ADOQ_show_afrad.RecordCount>0 then
      begin
            frm_show_exist_entegal.L_code_reshteie_feli.Caption:=Dm.ADOQ_show_afradcod_reshteei.AsString;


            frm_show_exist_entegal.Caption:='ÇäÊŞÇáåÇíí ˜å ãÓÊŞíãÇğ ÇÒ '+Dm.ADOQ_show_nafarat_baraye_dadane_sahmname.AsString+' '+Dm.ADOQ_show_nafarat_baraye_dadane_sahmfamily.AsString+' ÇäÌÇã ÔÏå ÇäÏ';
            MessageBox(Handle,'ÈÏáíá ÇäÊŞÇá Óåã ÂÈ ÇÒ Ñ˜æÑÏ ÌÇÑí äãí ÊæÇäíÏ Óåã ÂÈ İÚáí ÑÇ ÍĞİ äãÇííÏ','ÎØÇ !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
            frm_show_exist_entegal.ShowModal;
      end
      else
      begin
        if MessageBox(Handle,pchar('ÍĞİ ÊÚÏÇÏ Óåã ÂÈ äİÑ Çæá ÇäÊÎÇÈ ÔÏå ÑÇ ÊÇííÏ ãíäãÇííÏ¿'),'ÊÇííÏ ÍĞİ !',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=id_yes then
        begin
            Dm.ADOQ_komakie_hazf.SQL.Text:='delete from t_sahamdaran where id='+Dm.ADOQ_show_nafarat_baraye_dadane_sahmid.AsString;
            Dm.ADOQ_komakie_hazf.ExecSQL;
            show_avlha;
            MessageBox(Handle,pchar(' Óåã ÂÈ ÍĞİ ÑÏíÏ'),'ÊæÌå !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
        end
        else
            MessageBox(Handle,'Óåã ÂÈ äİÑ Çæá ÍĞİ äÔÏ!','ÊæÌå!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
      end;
end;
end;

end.
