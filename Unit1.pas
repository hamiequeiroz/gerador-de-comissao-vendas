unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, Mask;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    StringGrid1: TStringGrid;
    Edit5: TEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i,j : integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin

     StringGrid1.Cells[0,i]:= edit1.Text;
     StringGrid1.Cells[1,i]:= DateToStr(DateTimePicker1.DateTime);;
     StringGrid1.Cells[2,i]:= Edit2.Text;
     StringGrid1.Cells[3,i]:= floattostr((strtofloat(edit2.Text) * strtofloat(edit3.Text))/100);

     i:=i+1;

     Edit4.Text:= floattostr((strtofloat(Edit4.Text) + ((strtofloat(edit2.Text) * strtofloat(edit3.Text))/100)));
     Edit5.Text:= floattostr(strtofloat(edit2.Text) + strtofloat(edit5.Text));



     Edit4.Text:= FloatToStrf(StrToFloat(edit4.Text),ffnumber,4,2);

     edit2.SetFocus;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
      if(i>=1) then
      begin
        StringGrid1.Cells[0,i]:= '';
        StringGrid1.Cells[1,i]:= '';
        StringGrid1.Cells[2,i]:= '';
        StringGrid1.Cells[3,i]:= '';

        if(i<>1)then
          i:=i-1;

       Edit4.Text:= floattostr(strtofloat(Edit4.Text) - ((strtofloat(edit2.Text) * strtofloat(edit3.Text))/100));
       Edit5.Text:= floattostr(strtofloat(edit2.Text) - strtofloat(edit5.Text));
       edit2.SetFocus;

      end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
     i:=1;
     j:= 0;

     edit3.Text := '1,5';
     edit2.Text:= '00,00';
     edit1.Text := 'Nome do Vendedor';
     Edit4.Text:= '00,00';
     Edit5.Text:= '00,00';

      StringGrid1.Cells[0,0]:= 'Vendedor';
      StringGrid1.Cells[1,0]:= 'Data';
      StringGrid1.Cells[2,0]:= 'Venda';
      StringGrid1.Cells[3,0]:= 'Comiss�o';

end;

end.
