unit unt_show_exist_entegal2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB;

type
  Tfrm_show_exist_entegal2 = class(TForm)
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_exist_entegal2: Tfrm_show_exist_entegal2;

implementation

uses unt_dm;

{$R *.dfm}

end.
