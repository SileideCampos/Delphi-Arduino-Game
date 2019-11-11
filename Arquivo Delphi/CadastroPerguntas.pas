unit CadastroPerguntas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TF_CadPerguntas = class(TForm)
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    UpDown1: TUpDown;
    Edit7: TEdit;
    ComboBoxEx1: TComboBoxEx;
    Label9: TLabel;
    ComboBoxEx2: TComboBoxEx;
    RichEdit1: TRichEdit;
    Shape1: TShape;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure RichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure limparCampos;
    function camposPreenchidos: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadPerguntas: TF_CadPerguntas;

implementation

{$R *.dfm}

uses DM;

procedure TF_CadPerguntas.Button1Click(Sender: TObject);
begin
if camposPreenchidos then
begin
 try
  DM.DModule.conexao.Open;
  with DM.DModule.insPerguntas do
  begin
    SQL.Clear;
    SQL.Add(' insert into perguntas (pergunta, nivel, pontuacao, lresposta, lA, lB, lC, lD, lE) ');
    SQL.Add(' values (:pergunta, :nivel, :pontuacao, :lresposta, :lA, :lB, :lC, :lD, :lE )');
    ParamByName('pergunta').AsString := RichEdit1.Text;
    ParamByName('nivel').AsString := ComboBoxEx2.Items[ComboBoxEx2.ItemIndex];
    ParamByName('pontuacao').AsString := Edit7.Text;
    ParamByName('lresposta').AsString := ComboBoxEx1.Items[ComboBoxEx1.ItemIndex];

    ParamByName('lA').AsString := Edit2.Text;
    ParamByName('lB').AsString := Edit3.Text;
    ParamByName('lC').AsString := Edit4.Text;
    ParamByName('lD').AsString := Edit5.Text;
    ParamByName('lE').AsString := Edit6.Text;

    ExecSQL;
  end;
 finally
   limparCampos();
 end;

end;
end;

function TF_CadPerguntas.camposPreenchidos: boolean;
begin
 if ( (Edit2.Text <> '' ) and (Edit3.Text <> '' ) and (Edit4.Text <> '' ) and (Edit5.Text <> '' )
    and (Edit6.Text <> '' ) and (Edit7.Text <> '' ) and (RichEdit1.Lines.Text <> null)
    and (ComboBoxEx1.ItemIndex <> -1) and (ComboBoxEx2.ItemIndex <> -1) )then
   result := true
 else
 begin
   if (ComboBoxEx2.ItemIndex = -1) then
   begin
    ComboBoxEx2.SetFocus;
    ShowMessage('Please select the level for the question!');
   end
   else if (RichEdit1.Lines.Text = '') then
   begin
    RichEdit1.SetFocus;
    ShowMessage('Please writer the question');
   end
   else if (Edit2.Text = '' ) then
   begin
    Edit2.SetFocus;
    ShowMessage('Please writer the letter A!');
   end
   else if (Edit3.Text = '' ) then
   begin
    Edit3.SetFocus;
    ShowMessage('Please writer the letter B!');
   end
   else if (Edit4.Text = '' ) then
   begin
    Edit4.SetFocus;
    ShowMessage('Please writer the answer C!');
   end
   else if (Edit5.Text = '' ) then
   begin
    Edit5.SetFocus;
    ShowMessage('Please writer the answer D!');
   end
   else if (Edit6.Text = '' ) then
   begin
    Edit6.SetFocus;
    ShowMessage('Please writer the answer E!');
   end
   else if (Edit7.Text = '' ) then
   begin
    Edit7.SetFocus;
    ShowMessage('Please writer the score!');
   end
   else if (ComboBoxEx1.ItemIndex = -1) then
   begin
    ComboBoxEx1.SetFocus;
    ShowMessage('Please select the correct answer!');
   end;

   result := false;

 end;
end;

procedure TF_CadPerguntas.FormActivate(Sender: TObject);
begin
  ComboBoxEx2.ItemIndex := 2;
end;

procedure TF_CadPerguntas.FormShow(Sender: TObject);
begin
  Shape1.SendToBack;
end;

procedure TF_CadPerguntas.limparCampos;
begin
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  RichEdit1.Clear;
  ComboBoxEx1.ItemIndex := -1;
  ComboBoxEx2.ItemIndex := -1;
end;

procedure TF_CadPerguntas.RichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpperCase(Key)[1];
end;

end.
