unit uFormCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uCrpt;

type
  TFormCadastroUsuario = class(TFormCadastroPai)
    fdQryCadastroID_USUARIO: TIntegerField;
    fdQryCadastroNOME: TWideStringField;
    fdQryCadastroLOGIN: TWideStringField;
    fdQryCadastroSENHA: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtLogin: TDBEdit;
    edtSenha: TDBEdit;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure ValidaCampos;
  public
    { Public declarations }
  end;

var
  FormCadastroUsuario: TFormCadastroUsuario;

implementation

{$R *.dfm}

procedure TFormCadastroUsuario.btnGravarClick(Sender: TObject);
begin
  ValidaCampos;
  inherited;
end;

procedure TFormCadastroUsuario.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;

  if fdQryCadastro.State in [dsInsert] then
  begin

  end
  else if fdQryCadastro.State in [dsEdit] then
  begin
    if (fdQryCadastroSENHA.AsAnsiString <> fdQryCadastroSENHA.OldValue) then
    begin
      fdQryCadastroSENHA.AsAnsiString := Criptografa('C', fdQryCadastroSENHA.AsAnsiString);
    end;
  end;

end;
procedure TFormCadastroUsuario.ValidaCampos;
begin
  if (Trim(edtNome.Text) = '') or
     (Trim(edtLogin.Text) = '') or
     (Trim(edtSenha.Text) = '') then
  begin
    ShowMessage('Todos os campos s�o obrigat�rios');
    Abort;
  end;
end;

end.
