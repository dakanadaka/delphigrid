{***************************************************************************}
{                                                                           }
{           DelphiUIAutomation                                              }
{                                                                           }
{           Copyright 2015 JHC Systems Limited                              }
{                                                                           }
{***************************************************************************}
{                                                                           }
{  Licensed under the Apache License, Version 2.0 (the "License");          }
{  you may not use this file except in compliance with the License.         }
{  You may obtain a copy of the License at                                  }
{                                                                           }
{      http://www.apache.org/licenses/LICENSE-2.0                           }
{                                                                           }
{  Unless required by applicable law or agreed to in writing, software      }
{  distributed under the License is distributed on an "AS IS" BASIS,        }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. }
{  See the License for the specific language governing permissions and      }
{  limitations under the License.                                           }
{                                                                           }
{***************************************************************************}
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,
  AutomatedCombobox, AutomatedEdit, Vcl.Grids, AutomatedStringGrid, Vcl.Mask,
  AutomatedMaskEdit, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.ImgList, System.ImageList,
  AutomatedStaticText;

type
  TForm1 = class(TForm)
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    StatusBar1: TStatusBar;
    ComboBox1: TComboBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Hel1: TMenuItem;
    Exit1: TMenuItem;
    About1: TMenuItem;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TMenuItem;
    RichEdit1: TRichEdit;
    TreeView1: TTreeView;
    PopupMenu3: TPopupMenu;
    Popup11: TMenuItem;
    Popup21: TMenuItem;
    Edit1: TEdit;
    ListBox1: TListBox;
    LinkLabel1: TLinkLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    Panel8: TPanel;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ImageList1: TImageList;
    //StringGrid1: TStringGrid;

    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure PopupMenu2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure LinkLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage (edit1.Text + ' | ' + edit2.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage ('Cancelled');
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  ShowMessage('Oh well done');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  //StringGrid1.Cells[0,0] := 'Title 1';
  {AutomationStringGrid1.Cells[1,0] := 'Title 2';
  AutomationStringGrid1.Cells[2,0] := 'Title 3';
  AutomationStringGrid1.Cells[3,0] := 'Title 4';
  AutomationStringGrid1.Cells[4,0] := 'Title 5';

  AutomationStringGrid1.Cells[0,1] := 'Row 1, Col 0';
  AutomationStringGrid1.Cells[1,1] := 'Row 1, Col 1';
  AutomationStringGrid1.Cells[2,1] := 'Row 1, Col 2';
  AutomationStringGrid1.Cells[3,1] := 'Row 1, Col 3';
  AutomationStringGrid1.Cells[4,1] := 'Row 1, Col 4';

  AutomationStringGrid1.Cells[0,3] := 'Row 3, Col 0';
  AutomationStringGrid1.Cells[1,3] := 'Row 3, Col 1';
  AutomationStringGrid1.Cells[2,3] := 'Row 3, Col 2';
  AutomationStringGrid1.Cells[3,3] := 'Row 3, Col 3';
  AutomationStringGrid1.Cells[4,3] := 'Row 3, Col 4';
   }
end;

procedure TForm1.LinkLabel1Click(Sender: TObject);
begin
  ShowMessage ('LinkLabel1Click');
end;

procedure TForm1.PopupMenu2Click(Sender: TObject);
begin
  ShowMessage ('Popup menu clicked');
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  ShowMessage ('ToolButton1Click');
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
  ShowMessage ('ToolButton5Click');
end;

procedure TForm1.ToolButton7Click(Sender: TObject);
begin
  ShowMessage ('ToolButton7Click');
end;

end.
