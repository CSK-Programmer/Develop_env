VERSION 5.00
Begin VB.Form frmLogin 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "登录"
   ClientHeight    =   1545
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   3750
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   912.837
   ScaleMode       =   0  'User
   ScaleWidth      =   3521.047
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.TextBox txtUserName 
      Height          =   345
      Left            =   1290
      TabIndex        =   1
      Top             =   135
      Width           =   2325
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "确定"
      Default         =   -1  'True
      Height          =   390
      Left            =   495
      TabIndex        =   4
      Top             =   1020
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "取消"
      Height          =   390
      Left            =   2100
      TabIndex        =   5
      Top             =   1020
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      Height          =   345
      IMEMode         =   3  'DISABLE
      Left            =   1290
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   525
      Width           =   2325
   End
   Begin VB.Label lblLabels 
      Caption         =   "用户名称(&U):"
      Height          =   270
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   135
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "密码(&P):"
      Height          =   270
      Index           =   1
      Left            =   480
      TabIndex        =   2
      Top             =   540
      Width           =   1080
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    txtUserName = ""
    txtPassword = ""
    Me.Hide
End Sub

Private Sub cmdOK_Click()
If txtUserName = "CSK_Programmer" And txtPassword = "467205498" Then
    Select Case mode
        Case 1
            Calcer_1.Show 1
        Case 2
            Calcer_2.Show 1
        Case 3
            Calcer_3.Show 1
        Case 4
            Settings.Show 1
    End Select
    txtUserName = ""
    txtPassword = ""
    Me.Hide
Else
        MsgBox "用户名或密码不正确", , "登录"
        txtUserName = ""
        txtPassword = ""
        Me.Hide
End If
End Sub

Private Sub Form_Load()
    If Debug_mode Then
        Select Case mode
            Case 1
                Calcer_1.Show 1
            Case 2
                Calcer_2.Show 1
            Case 3
                Calcer_3.Show 1
            Case 4
                Settings.Show 1
        End Select
    End If
End Sub
