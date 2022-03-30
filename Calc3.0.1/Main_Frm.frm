VERSION 5.00
Begin VB.Form Main_Frm 
   Caption         =   "Calc"
   ClientHeight    =   8685
   ClientLeft      =   8700
   ClientTop       =   2685
   ClientWidth     =   4755
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   8685
   ScaleMode       =   0  'User
   ScaleWidth      =   4755
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command2 
      Caption         =   "exit"
      Height          =   615
      Left            =   2575
      TabIndex        =   5
      Top             =   7440
      Width           =   1500
   End
   Begin VB.CommandButton Command1 
      Caption         =   "settings"
      Height          =   615
      Left            =   575
      TabIndex        =   4
      Top             =   7440
      Width           =   1500
   End
   Begin VB.CommandButton Command 
      Caption         =   "其他运算"
      Height          =   1500
      Index           =   3
      Left            =   575
      TabIndex        =   3
      Top             =   5700
      Width           =   3500
   End
   Begin VB.CommandButton Command 
      Caption         =   "对数运算"
      Height          =   1500
      Index           =   2
      Left            =   575
      TabIndex        =   2
      Top             =   3900
      Width           =   3500
   End
   Begin VB.CommandButton Command 
      Caption         =   "三角函数"
      Height          =   1500
      Index           =   1
      Left            =   575
      TabIndex        =   1
      Top             =   2100
      Width           =   3500
   End
   Begin VB.CommandButton Command 
      Caption         =   "基础运算"
      Height          =   1500
      Index           =   0
      Left            =   575
      TabIndex        =   0
      Top             =   300
      Width           =   3500
   End
End
Attribute VB_Name = "Main_Frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command_Click(Index As Integer)
    Select Case Index
        Case 0
            mode = 0
            Calcer_0.Show 1
        Case 1
            mode = 1
            frmLogin.Show 1
        Case 2
            mode = 2
            frmLogin.Show 1
        Case 3
            mode = 3
            frmLogin.Show 1
    End Select
End Sub

Private Sub Command1_Click()
    mode = 4
    frmLogin.Show 1
End Sub

Private Sub Command2_Click()
    Me.Hide
    frmAbout.Show 1
End Sub

Private Sub Form_Load()
    'Dim comm
    'comm = Command
    'pi = 3.14159265358979
    'setting = 0
    If Command = "" Then
        Debug_mode = True
    Else
        Debug_mode = False
    End If
End Sub
