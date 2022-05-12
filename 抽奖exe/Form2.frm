VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   6960
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12030
   LinkTopic       =   "Form2"
   ScaleHeight     =   6960
   ScaleWidth      =   12030
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "Back"
      Height          =   735
      Left            =   600
      TabIndex        =   5
      Top             =   3240
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   4335
      Left            =   2640
      TabIndex        =   4
      Top             =   480
      Width           =   2655
   End
   Begin VB.Frame Frame1 
      Caption         =   "写入"
      Height          =   2055
      Left            =   480
      TabIndex        =   0
      Top             =   600
      Width           =   1695
      Begin VB.CommandButton Command1 
         Caption         =   "写入"
         Height          =   495
         Left            =   240
         TabIndex        =   3
         Top             =   1200
         Width           =   1215
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   720
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "Data"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   975
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim b, c

Private Sub Command1_Click()
    c = l + 1
    Open "C:\StudentsList.dat" For Random As #2 Len = Len(stu)
    stu.Name = Text1
    Put #2, 1, stu
     For b = 1 To l
        Get #2, b, stu
        Text2.Text = Text2.Text & Chr(13) & stu.Name
    Next
    Close #2
End Sub

Private Sub Command2_Click()
    Me.Hide
    Form1.Show
End Sub

Private Sub Form_Load()
    Open "C:\StudentsList.dat" For Random As #2 Len = Len(stu)
    For b = 1 To l
        Get #2, b, stu
        Text2.Text = Text2.Text & Chr(13) & stu.Name
    Next
    Close #2
End Sub
