unit UntMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, IPPeerClient, REST.OpenSSL,
  REST.Backend.ServiceTypes, REST.Backend.MetaTypes, System.JSON,
  REST.Backend.ParseServices, REST.Backend.Providers,
  REST.Backend.ServiceComponents, REST.Backend.ParseProvider;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    CalloutPanel1: TCalloutPanel;
    Label1: TLabel;
    EdtUsuario: TEdit;
    Label2: TLabel;
    EdtSenha: TEdit;
    Panel2: TPanel;
    Label3: TLabel;
    swtNovaConta: TSwitch;
    btnLogin: TButton;
    Panel3: TPanel;
    Label4: TLabel;
    PPUsuarios: TParseProvider;
    bkendUsuarios: TBackendUsers;
    procedure swtNovaContaSwitch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.swtNovaContaSwitch(Sender: TObject);
begin
  case swtNovaConta.IsChecked of
    true  : btnLogin.Text := 'Cadastrar';
    false : btnLogin.Text := 'Entrar';
  end;
end;

end.
