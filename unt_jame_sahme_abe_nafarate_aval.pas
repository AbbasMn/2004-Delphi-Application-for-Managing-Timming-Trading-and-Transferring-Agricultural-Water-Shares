unit unt_jame_sahme_abe_nafarate_aval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls, SUIEdit;

type
  Tfrm_jame_sahme_abe_nafarate_aval = class(TForm)
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Label2: TLabel;
    DataSource2: TDataSource;
    DBText1: TDBText;
    RadioGroup1: TRadioGroup;
    Label6: TLabel;
    e_search: TsuiEdit;
    procedure FormShow(Sender: TObject);
    procedure show_jame_sahme_abe_har_nafare_aval;
    procedure show_jame_kole_sahme_ab;
    procedure type_;
    procedure show_jame_sahme_abe_har_nafare_aval_sodi;
    procedure show_jame_sahme_abe_har_nafare_aval_nozoli;
    procedure RadioGroup1Click(Sender: TObject);
    procedure e_searchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jame_sahme_abe_nafarate_aval: Tfrm_jame_sahme_abe_nafarate_aval;

implementation

uses unt_dm;

{$R *.dfm}
procedure Tfrm_jame_sahme_abe_nafarate_aval.show_jame_sahme_abe_har_nafare_aval_nozoli;
begin
  Dm.ADOQ_jame_sahme_abe_nafarate_aval.SQL.Text:='select family,name,name_pedar,sum(tedade_sahme_ashari)as kol_,nafare_aval from t_sahamdaran '+
  ' where nafare_aval='+QuotedStr('‰›—«Ê·')+
  ' group by family,name,name_pedar,nafare_aval '+
  ' order by kol_,family,name,name_pedar desc ';
  Dm.ADOQ_jame_sahme_abe_nafarate_aval.Open;
end;

procedure Tfrm_jame_sahme_abe_nafarate_aval.show_jame_sahme_abe_har_nafare_aval_sodi;
begin
  Dm.ADOQ_jame_sahme_abe_nafarate_aval.SQL.Text:='select sum(tedade_sahme_ashari)as kol_,family,name,name_pedar,nafare_aval from t_sahamdaran '+
  ' where nafare_aval='+QuotedStr('‰›—«Ê·')+
  ' group by family,name,name_pedar,nafare_aval '+
  ' order by kol_,family,name,name_pedar ';
  Dm.ADOQ_jame_sahme_abe_nafarate_aval.Open;
end;

procedure Tfrm_jame_sahme_abe_nafarate_aval.type_;
begin

 if RadioGroup1.ItemIndex=0 then
    show_jame_sahme_abe_har_nafare_aval;

 if RadioGroup1.ItemIndex=1 then
    show_jame_sahme_abe_har_nafare_aval_sodi;

 if RadioGroup1.ItemIndex=2 then
    show_jame_sahme_abe_har_nafare_aval_nozoli;

end;
procedure Tfrm_jame_sahme_abe_nafarate_aval.show_jame_kole_sahme_ab;
begin
  Dm.ADOQ_jame_kole_sahme_ab.SQL.Text:='select sum(tedade_sahme_ashari) as kol_ from t_sahamdaran '+
  ' where nafare_aval='+QuotedStr('‰›—«Ê·');
  Dm.ADOQ_jame_kole_sahme_ab.Open;
end;

procedure Tfrm_jame_sahme_abe_nafarate_aval.show_jame_sahme_abe_har_nafare_aval;
begin
  Dm.ADOQ_jame_sahme_abe_nafarate_aval.SQL.Text:='select family,name,name_pedar,sum(tedade_sahme_ashari)as kol_,nafare_aval from t_sahamdaran '+
  ' where nafare_aval='+QuotedStr('‰›—«Ê·')+
  ' group by family,name,name_pedar,nafare_aval'+
  ' order by family,name,name_pedar';
  Dm.ADOQ_jame_sahme_abe_nafarate_aval.Open;
end;

procedure Tfrm_jame_sahme_abe_nafarate_aval.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  type_;
  show_jame_kole_sahme_ab;
  e_search.Clear;
  frm_jame_sahme_abe_nafarate_aval.WindowState:=wsMaximized;
end;

procedure Tfrm_jame_sahme_abe_nafarate_aval.RadioGroup1Click(
  Sender: TObject);
begin
  type_;
end;

procedure Tfrm_jame_sahme_abe_nafarate_aval.e_searchChange(
  Sender: TObject);
begin
  Dm.ADOQ_jame_sahme_abe_nafarate_aval.Locate('family',e_search.Text,[loPartialKey]);
end;

end.
