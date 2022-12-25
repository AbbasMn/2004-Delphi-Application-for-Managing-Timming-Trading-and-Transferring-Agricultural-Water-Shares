unit unt_trace_entegal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, dxCore, dxButtons, ComCtrls;

type
  Tfrm_trace_entegal = class(TForm)
    G_entegale_mostagim: TGroupBox;
    DBGrid_az: TDBGrid;
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Button1: TButton;
    dxToolButton1: TdxToolButton;
    DataSource3: TDataSource;
    DBGrid_be: TDBGrid;
    DBGrid1: TDBGrid;
    TreeView1: TTreeView;
    Button2: TButton;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure insert_to_temp_gozaresh;
    procedure Button1Click(Sender: TObject);

    procedure show_temp_gozaresh_az;
    procedure show_temp_gozaresh_be;
    procedure empty_temp;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxToolButton1Click(Sender: TObject);


    procedure add_to_tree_view(parent,child:string;index_:integer);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    family,name,tedade_sahme_ashari_avalie,sh_sanade_mahzari:string;
    noe_entegal,name_pedar,tarikh,sh_parvande:string;

    az_name_pedar,az_family,az_name,az_cod_shakhs,id_entegal:string;


    cod_dar_tree:string;
  end;

var
  frm_trace_entegal: Tfrm_trace_entegal;

implementation

uses unt_dm, unt_show_afrad_mabnaye_gozaresh, unt_mianie_gozaresh,
  unt_print_temp_gozaresh, unt_login;

{$R *.dfm}
procedure Tfrm_trace_entegal.add_to_tree_view(parent,child:string;index_:integer);
var nod_:TTreeNode;
begin

  with TreeView1.Items do
  begin
    if TreeView1.Items.Count=0 then
    begin
      nod_ := Add(nil, parent);
      AddChild(nod_ ,child);
    end
    else
    begin
      nod_ := Item[index_];
      AddChild(nod_ ,child);
    end;
  end;

///////////////////////
end;

procedure Tfrm_trace_entegal.show_temp_gozaresh_be;
begin
  Dm.ADOQ_show_tempe_entegal.SQL.Text:='select * from  T_temp_gozaresh order by id desc' ;
  Dm.ADOQ_show_tempe_entegal.Open;

end;

procedure Tfrm_trace_entegal.empty_temp;
begin
  Dm.ADOQ_show_tempe_entegal.SQL.Text:='delete  from  T_temp_gozaresh ' ;
  Dm.ADOQ_show_tempe_entegal.ExecSQL;
end;
procedure Tfrm_trace_entegal.show_temp_gozaresh_az;
begin
  Dm.ADOQ_show_tempe_entegal.SQL.Text:='select * from  T_temp_gozaresh order by id' ;
  Dm.ADOQ_show_tempe_entegal.Open;

end;
procedure Tfrm_trace_entegal.insert_to_temp_gozaresh;
var parent,child:string;
begin
 Dm.ADOQ_show_tempe_entegal.SQL.Text:='insert into T_temp_gozaresh(sh_parvande,name,family,tarikh,name_pedar,noe_entegal'+
 ',sh_sanade_mahzari,tedade_sahme_ashari_avalie,az_name,az_family,az_name_pedar)'+
 ' values('+QuotedStr(sh_parvande)+','+QuotedStr(name)+','+QuotedStr(family)+','+QuotedStr(tarikh)+','+QuotedStr(name_pedar)+','+
 QuotedStr(noe_entegal)+','+QuotedStr(sh_sanade_mahzari)+','+QuotedStr(tedade_sahme_ashari_avalie)+','+
 QuotedStr(az_name)+','+QuotedStr(az_family)+','+QuotedStr(az_name_pedar)+')';
 Dm.ADOQ_show_tempe_entegal.ExecSQL;


end;

procedure Tfrm_trace_entegal.FormShow(Sender: TObject);
begin
  //TreeView1.Items.Clear;
  //TreeView1.Visible:=false;
  frm_trace_entegal.WindowState:=wsMaximized;
end;

procedure Tfrm_trace_entegal.Button1Click(Sender: TObject);
begin
  if frm_mianie_gozaresh.L_type_trace.Caption='az' then
  begin{1}
    if Dm.ADOQ_show_entegale_mostagim.RecordCount>0 then
    begin
      frm_mianie_gozaresh.add_to_temp(Dm.ADOQ_show_entegale_mostagimid.AsString);

      frm_trace_entegal.az_family:=Dm.ADOQ_show_entegale_mostagimfamily.AsString;
      frm_trace_entegal.az_name:=Dm.ADOQ_show_entegale_mostagimname.AsString;

      frm_trace_entegal.az_cod_shakhs:=Dm.ADOQ_show_entegale_mostagimcod_shakhs.AsString;

      frm_trace_entegal.G_entegale_mostagim.Caption:='„‘Œ’«  ò”«‰Ì òÂ ”Â„ ¬» ŒÊœ —« „” ﬁÌ„« «“   '+
      frm_trace_entegal.az_name+' '+frm_trace_entegal.az_family+' »« òœ ‘‰«”«ÌÌ '+frm_trace_entegal.az_cod_shakhs+'  œ—Ì«›  ‰„ÊœÂ «‰œ';

      frm_show_afrad_mabnaye_gozaresh.gozaresh_entegalha_az_fard_be_bagie(Dm.ADOQ_show_entegale_mostagimcod_reshteei.AsString);

      frm_trace_entegal.cod_dar_tree:=Dm.ADOQ_show_entegale_mostagimcod_shakhs.AsString;
     // TreeView1.Items.Clear;
    end
    else
    begin
      if Dm.ADOQ_show_tempe_entegal.RecordCount=1 then
      begin
        frm_trace_entegal.az_family:=Dm.ADOQ_show_mianie_entegalfamily.AsString;
        frm_trace_entegal.az_name:=Dm.ADOQ_show_mianie_entegalname.AsString;

        frm_trace_entegal.az_cod_shakhs:=Dm.ADOQ_show_mianie_entegalcod_shakhs.AsString;
      end;
      MessageBox(Handle,pchar(' ¬ﬁ«/Œ«‰„ <<'+frm_trace_entegal.az_name+' '+frm_trace_entegal.az_family+' >> »« ‘„«—Â òœ <<'+frm_trace_entegal.az_cod_shakhs+'>> Â‰Ê“ ”Â„ ¬» ŒÊœ —« œ— «Œ Ì«— œ«—œ.'),'!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    end;
  end;{1}

  //////////////////////////

  if frm_mianie_gozaresh.L_type_trace.Caption='be' then
  begin{1}
    if Dm.ADOQ_show_entegale_mostagim_be.RecordCount>0 then
    begin
      frm_mianie_gozaresh.add_to_temp(Dm.ADOQ_show_entegale_mostagim_beid.AsString);

      frm_trace_entegal.az_family:=Dm.ADOQ_show_entegale_mostagim_beaz_family.asstring;
      frm_trace_entegal.az_name:=Dm.ADOQ_show_entegale_mostagim_beaz_name.AsString;

      frm_trace_entegal.az_cod_shakhs:=Dm.ADOQ_show_entegale_mostagim_beid_entegal_dahande.AsString;

      frm_trace_entegal.G_entegale_mostagim.Caption:='„‘Œ’«  ò”«‰Ì òÂ ”Â„ ¬» ŒÊœ —« „” ﬁÌ„« »Â  '+
      frm_trace_entegal.az_name+' '+frm_trace_entegal.az_family+' »« òœ ‘‰«”«ÌÌ '+frm_trace_entegal.az_cod_shakhs+' „‰ ﬁ· ‰„ÊœÂ «‰œ ';



      frm_show_afrad_mabnaye_gozaresh.down_to_root(Dm.ADOQ_show_entegale_mostagim_becod_reshteei.AsString);

      if Dm.ADOQ_show_entegale_mostagim_be.RecordCount>0 then
      begin
        frm_trace_entegal.az_family:=Dm.ADOQ_show_mianie_entegal_beaz_family.AsString;
        frm_trace_entegal.az_name:=Dm.ADOQ_show_mianie_entegal_beaz_name.AsString;
     // frm_trace_entegal.az_cod_shakhs:=Dm.ADOQ_show_entegale_mostagim_beid_entegal_dahande.AsString;
      end;

    end
    else
    begin
        MessageBox(Handle,pchar(' ¬ﬁ«/Œ«‰„ <<'+frm_trace_entegal.az_name+' '+frm_trace_entegal.az_family+' >> »« ‘„«—Â òœ <<'+frm_trace_entegal.az_cod_shakhs+'>> ”Â„ ¬»Ì «“ ò”Ì œ—Ì«›  ‰‰„ÊœÂ «” '),'!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    end;
  end;{1}
end;

procedure Tfrm_trace_entegal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  empty_temp;
end;

procedure Tfrm_trace_entegal.dxToolButton1Click(Sender: TObject);
begin
  frm_print_temp_gozaresh.QRLtarikh.Caption:=Frm_login.Egettarikh.Text;
  frm_print_temp_gozaresh.QuickRep1.Preview;
end;

procedure Tfrm_trace_entegal.Button2Click(Sender: TObject);
var parent,child:string;
    index_:integer;
begin
if Dm.ADOQ_show_entegale_mostagim.RecordCount=0 then
begin
 Dm.ADOQ_show_tempe_entegal.SQL.Text:='select * from  T_temp_gozaresh order by id' ;
 Dm.ADOQ_show_tempe_entegal.Open;
  if Dm.ADOQ_show_tempe_entegal.RecordCount>0 then
  begin
    Dm.ADOQ_show_tempe_entegal.First;

    if Dm.ADOQ_show_entegale_mostagim.RecordCount=0 then
    begin
      if TreeView1.Items.Count=0 then
      begin
        index_:=0;
        while not Dm.ADOQ_show_tempe_entegal.eof do
        begin
          parent:=Dm.ADOQ_show_tempe_entegalaz_name.AsString+' '+Dm.ADOQ_show_tempe_entegalaz_family.AsString;
          child:=Dm.ADOQ_show_tempe_entegalname.AsString+' '+Dm.ADOQ_show_tempe_entegalfamily.AsString;

          add_to_tree_view(parent,child,index_);
          index_:=index_+1;
          Dm.ADOQ_show_tempe_entegal.Next;
        end;
      end;
    end;
  TreeView1.Visible:=true;
 end;
end;
end;

procedure Tfrm_trace_entegal.Button3Click(Sender: TObject);
begin
  TreeView1.Items.Clear;
end;

end.
