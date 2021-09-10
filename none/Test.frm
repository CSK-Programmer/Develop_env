VERSION 5.00
Begin VB.Form Test 
   Caption         =   "测试"
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
      Caption         =   "确定"
      Height          =   1095
      Left            =   3960
      TabIndex        =   5
      Top             =   5280
      Width           =   4455
   End
   Begin VB.Frame Frame1 
      Caption         =   "选项"
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
         Name            =   "宋体"
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
      Caption         =   "。。。。。"
      BeginProperty Font 
         Name            =   "宋体"
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
        Label1 = "针不戳"
        Timer1.Enabled = True
    Else
        Label1 = "你在摸鱼"
        Timer1.Enabled = True
    End If
End Sub

Private Sub Form_Load()
    no = 1
    questions(1) = "五四运动发生在哪一年？"
    options(1, 1) = "1914年"
    options(1, 2) = "1919年"
    options(1, 3) = "1923年"
    answers(1) = 1
    questions(2) = "五卅运动发生在1925年的几月几日？"
    options(2, 1) = "5月30日"
    options(2, 2) = "4月28日"
    options(2, 3) = "5月31日"
    answers(2) = 0
    questions(3) = "《新青年》杂志由谁创立？"
    options(3, 1) = "陈独秀"
    options(3, 2) = "李大钊"
    options(3, 3) = "鲁迅"
    answers(3) = 0
    questions(4) = "秋收起义部队在哪里会师？"
    options(4, 1) = "北京市"
    options(4, 2) = "武汉市"
    options(4, 3) = "文家市"
    answers(4) = 2
    questions(5) = "西安事变又称什么事变？"
    options(5, 1) = "七七事变"
    options(5, 2) = "双十二事变"
    options(5, 3) = "双十一事变"
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
    Label1 = "。。。。。"
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
