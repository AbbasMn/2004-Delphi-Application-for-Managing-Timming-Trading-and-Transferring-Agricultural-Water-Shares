unit unt_hazfe_sahme_abe_nafare_geire_aval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, SUIEdit;

type
  Tfrm_hazfe_sahme_abe_nafare_geire_aval = class(TForm)
    Label6: TLabel;
    e_search: TsuiEdit;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Bt: TButton;
    procedure e_searchChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure show_entegalha;
    procedure BtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_hazfe_sahme_abe_nafare_geire_aval: Tfrm_hazfe_sahme_abe_nafare_geire_aval;

implementation

uses unt_Dm_eslah, unt_show_exist_entegal, unt_dm;

{$R *.dfm}
procedure Tfrm_hazfe_sahme_abe_nafare_geire_aval.show_entegalha;
begin
  Dm_eslah.ADOQ_show_entegalha.sql.Text:='select * from t_sahamdaran where az_family<>'+QuotedStr('')+
  ' order by family,name,name_pedar';
  Dm_eslah.ADOQ_show_entegalha.Open;
end;

procedure Tfrm_hazfe_sahme_abe_nafare_geire_aval.e_searchChange(
  Sender: TObject);
begin
 Dm_eslah.ADOQ_show_entegalha.Locate('family',e_search.Text,[loPartialKey]);
end;

procedure Tfrm_hazfe_sahme_abe_nafare_geire_aval.FormShow(Sender: TObject);
begin
  show_entegalha;
  frm_show_exist_entegal.btn_hazf.Visible:=true;
  frm_show_exist_entegal.Caption:='';
end;

procedure Tfrm_hazfe_sahme_abe_nafare_geire_aval.BtClick(Sender: TObject);
begin
if Dm_eslah.ADOQ_show_entegalha.RecordCount >0 then
begin
      Dm.ADOQ_show_afrad.SQL.Text:='select tarikh,family,name,tedade_sahme_ashari,noe_entegal,name_pedar,tedade_sahme_ashari_avalie,sh_parvande,somn,entegale_somn,'+
      '(tedade_sahme_ashari-somn) as max_entegal,kharid_somn,cod_reshteei,entegal_az_id,id from t_sahamdaran  where cod_reshteei like '+
      QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString+'_____')+' and cod_reshteei<>'+QuotedStr(Dm_eslah.ADOQ_show_entegalhacod_reshteei.AsString)+
      '  order by id';
      Dm.ADOQ_show_afrad.Open;

      if Dm.ADOQ_show_afrad.RecordCount>0 then
      begin
            frm_show_exist_entegal.L_code_reshteie_feli.Caption:=Dm.ADOQ_show_afradcod_reshteei.AsString;


            frm_show_exist_entegal.Caption:='?????????? ?? ???????? ?? '+Dm_eslah.ADOQ_show_entegalhaname.AsString+' '+Dm_eslah.ADOQ_show_entegalhafamily.AsString+' ????? ??? ???';
            MessageBox(Handle,'????? ?????? ??? ?? ?? ????? ???? ??? ?????? ??? ?? ???? ?? ??? ??????','??? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
            frm_show_exist_entegal.ShowModal;
      end
      else
      begin
        if MessageBox(Handle,pchar('??? ?????? ????? ??? ?? ?? ????? ?? ???????'),'????? ??? !',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=id_yes then
        begin

            if Dm_eslah.ADOQ_show_entegalhanoe_entegal.AsString='??? ??????' then
            begin
              Dm.ADOQ_komakie_hazf.SQL.Text:='update t_sahamdaran set entegale_somn='+QuotedStr('')+
              ' where id='+Dm_eslah.ADOQ_show_entegalhaentegal_az_id.AsString;
              Dm.ADOQ_komakie_hazf.ExecSQL;
            end
            else
            begin
              {Dm.ADOQ_komakie_hazf.SQL.Text:='update t_sahamdaran set tedade_sahme_ashari=tedade_sahme_ashari+'+Dm_eslah.ADOQ_show_entegalhatedade_sahme_ashari_avalie.AsString+
              ' where id='+Dm_eslah.ADOQ_show_entegalhaentegal_az_id.AsString;
              Dm.ADOQ_komakie_hazf.ExecSQL;}
            end;



            Dm.ADOQ_komakie_hazf.SQL.Text:='delete from t_sahamdaran where id='+Dm_eslah.ADOQ_show_entegalhaid.AsString;
            Dm.ADOQ_komakie_hazf.ExecSQL;
            show_entegalha;
            MessageBox(Handle,pchar('?????? ??? ?? ??? ?????'),'???? !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
        end
        else
            MessageBox(Handle,'??? ?? ??? ?????? ??? ???!','????!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
      end;
end;
end;

end.
