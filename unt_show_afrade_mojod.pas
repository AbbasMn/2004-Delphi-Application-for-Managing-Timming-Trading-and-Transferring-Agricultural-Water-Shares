unit unt_show_afrade_mojod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB;

type
  Tfrm_show_afrade_ba_yek_nam = class(TForm)
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_afrade_ba_yek_nam: Tfrm_show_afrade_ba_yek_nam;

implementation

uses unt_dm;

{$R *.dfm}

end.
