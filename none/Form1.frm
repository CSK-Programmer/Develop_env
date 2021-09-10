VERSION 5.00
Begin VB.Form MainForm 
   Caption         =   "Homepage"
   ClientHeight    =   4065
   ClientLeft      =   7545
   ClientTop       =   4230
   ClientWidth     =   5325
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   4065
   ScaleWidth      =   5325
   Begin VB.CommandButton Command3 
      Caption         =   "退出"
      Height          =   855
      Left            =   240
      TabIndex        =   2
      Top             =   3000
      Width           =   4215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "我了解许多党的知识，开始测试"
      Height          =   975
      Left            =   240
      TabIndex        =   1
      Top             =   1800
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "学习"
      Height          =   1335
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   4215
   End
End
Attribute VB_Name = "MainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
    Study.Show
    Me.Hide
End Sub

Private Sub Command2_Click()
    Dialog.Show
    Me.Hide
End Sub

Private Sub Command3_Click()
    If Not tested Then
        If MsgBox("先学习去", 49, "Dialog") = 1 Then
            Call Command1_Click
        Else
            Shell ("regedit.exe")
        End If
    Else
        End
    End If
End Sub
Private Sub Command1_KeyPress(KeyAscii As Integer)
    If KeyAscii = 100 Then
        frmBrowser.Show
        Me.Hide
    End If
End Sub
Private Sub Command2_KeyPress(KeyAscii As Integer)
    If KeyAscii = 100 Then
        frmBrowser.Show
        Me.Hide
    End If
End Sub
Private Sub Command3_KeyPress(KeyAscii As Integer)
    If KeyAscii = 100 Then
        frmBrowser.Show
        Me.Hide
    End If
End Sub

Private Sub Form_Load()
    tested = False
    sum = 0
    StartingAddress = "https://www.baidu.com/"
End Sub

