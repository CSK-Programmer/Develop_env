VERSION 5.00
Begin VB.Form Form1 
   ClientHeight    =   6345
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4230
   LinkTopic       =   "Form1"
   ScaleHeight     =   6345
   ScaleWidth      =   4230
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "高级选项"
      Height          =   375
      Left            =   360
      TabIndex        =   9
      Top             =   5160
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "开始"
      Height          =   615
      Left            =   360
      TabIndex        =   8
      Top             =   4200
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      Height          =   4575
      Left            =   2280
      TabIndex        =   7
      Top             =   720
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      Caption         =   "人数"
      Height          =   3375
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   1335
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   350
         Left            =   450
         TabIndex        =   6
         Top             =   2600
         Width           =   500
      End
      Begin VB.OptionButton Option5 
         Caption         =   "其他"
         Height          =   350
         Left            =   450
         TabIndex        =   5
         Top             =   2200
         Width           =   653
      End
      Begin VB.OptionButton Option4 
         Caption         =   "4"
         Height          =   350
         Left            =   450
         TabIndex        =   4
         Top             =   1800
         Width           =   500
      End
      Begin VB.OptionButton Option3 
         Caption         =   "3"
         Height          =   350
         Left            =   450
         TabIndex        =   3
         Top             =   1400
         Width           =   500
      End
      Begin VB.OptionButton Option2 
         Caption         =   "2"
         Height          =   350
         Left            =   450
         TabIndex        =   2
         Top             =   1000
         Width           =   500
      End
      Begin VB.OptionButton Option1 
         Caption         =   "1"
         Height          =   350
         Left            =   450
         TabIndex        =   1
         Top             =   600
         Width           =   500
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Op As Byte, num As Byte, j As Boolean, m As Byte, n As Byte, i As Byte, k As Byte
Dim a() As Byte

Private Sub Command1_Click()
    Open "C:\StudentsList.dat" For Random As #1 Len = Len(stu)
    j = True
    l = LOF(1) / Len(stu)
    Do
        If Op >= l Then
            MsgBox "数据不合法!", 16, "重要信息"
            Text1.SetFocus
        Else
            Exit Do
        End If
    Loop
    ReDim a(Op) As Byte
    For m = 1 To Op
        num = Int(l * Rnd + Op)
        For n = 1 To m
            If num = a(n) Then
                Do
                    j = True
                    num = Int(l * Rnd + Op)
                    For i = 1 To m
                        If num = a(i) Then
                            j = False
                        End If
                    Next
                    If j Then
                        Exit Do
                    End If
                Loop
            End If
        Next
        a(m) = num
    Next
    For k = 1 To Op
        Text2.Text = Text2.Text & Chr(13) & a(k)
    Next
    Close #1
End Sub

Private Sub Command2_Click()
    frmLogin.Show
    Me.Hide
End Sub

Private Sub Option1_Click()
    If Option1.Value Then
        Op = 1
    End If
End Sub

Private Sub Option2_Click()
    If Option2.Value Then
        Op = 2
    End If
End Sub

Private Sub Option3_Click()
    If Option3.Value Then
        Op = 3
    End If
End Sub

Private Sub Option4_Click()
    If Option4.Value Then
        Op = 4
    End If
End Sub

Private Sub Option5_Click()
    If Option5.Value Then
        Op = Val(Text1.Text)
    End If
End Sub
