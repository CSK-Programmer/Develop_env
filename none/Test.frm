VERSION 5.00
Begin VB.Form Test 
   Caption         =   "����"
   ClientHeight    =   6900
   ClientLeft      =   7875
   ClientTop       =   5235
   ClientWidth     =   10230
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   ScaleHeight     =   6900
   ScaleWidth      =   10230
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   9480
      Top             =   5520
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��"
      Height          =   1095
      Left            =   3960
      TabIndex        =   5
      Top             =   5280
      Width           =   4455
   End
   Begin VB.Frame Frame1 
      Caption         =   "ѡ��"
      Height          =   3015
      Left            =   360
      TabIndex        =   1
      Top             =   3480
      Width           =   2775
      Begin VB.OptionButton Opt 
         Height          =   615
         Index           =   2
         Left            =   120
         TabIndex        =   4
         Top             =   2040
         Width           =   2295
      End
      Begin VB.OptionButton Opt 
         Height          =   615
         Index           =   1
         Left            =   120
         TabIndex        =   3
         Top             =   1200
         Width           =   2295
      End
      Begin VB.OptionButton Opt 
         Height          =   615
         Index           =   0
         Left            =   120
         TabIndex        =   2
         Top             =   480
         Width           =   2295
      End
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "����"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2775
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   240
      Width           =   9855
   End
   Begin VB.Label Label1 
      Caption         =   "����������"
      BeginProperty Font 
         Name            =   "����"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3840
      TabIndex        =   6
      Top             =   3720
      Width           =   5895
   End
End
Attribute VB_Name = "test"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim questions(1 To 5)
Dim options(1 To 5, 1 To 3)
Dim answers(1 To 5)
Dim ind, no

Private Sub Command1_Click()
    If ind = answers(no) Then
        Label1 = "�벻��"
        Timer1.Enabled = True
    Else
        Label1 = "��������"
        Timer1.Enabled = True
    End If
End Sub

Private Sub Form_Load()
    no = 1
    questions(1) = "�����˶���������һ�ꣿ"
    options(1, 1) = "1914��"
    options(1, 2) = "1919��"
    options(1, 3) = "1923��"
    answers(1) = 1
    questions(2) = "��ئ�˶�������1925��ļ��¼��գ�"
    options(2, 1) = "5��30��"
    options(2, 2) = "4��28��"
    options(2, 3) = "5��31��"
    answers(2) = 0
    questions(3) = "�������꡷��־��˭������"
    options(3, 1) = "�¶���"
    options(3, 2) = "�����"
    options(3, 3) = "³Ѹ"
    answers(3) = 0
    questions(4) = "�������岿���������ʦ��"
    options(4, 1) = "������"
    options(4, 2) = "�人��"
    options(4, 3) = "�ļ���"
    answers(4) = 2
    questions(5) = "�����±��ֳ�ʲô�±䣿"
    options(5, 1) = "�����±�"
    options(5, 2) = "˫ʮ���±�"
    options(5, 3) = "˫ʮһ�±�"
    answers(5) = 1
    Text1 = questions(no)
    Opt(0).Caption = options(no, 1)
    Opt(1).Caption = options(no, 2)
    Opt(2).Caption = options(no, 3)
End Sub

Private Sub Opt_Click(Index As Integer)
    ind = Index
End Sub

Private Sub Timer1_Timer()
    Label1 = "����������"
    If no = 5 Then
        tested = True
        MainForm.Show
        Me.Hide
    Else
        no = no + 1
        Text1 = questions(no)
        Opt(0).Caption = options(no, 1)
        Opt(1).Caption = options(no, 2)
        Opt(2).Caption = options(no, 3)
        Timer1.Enabled = False
    End If
End Sub
