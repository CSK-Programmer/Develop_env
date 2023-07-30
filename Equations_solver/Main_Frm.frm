VERSION 5.00
Begin VB.Form Main_Frm 
   Caption         =   "Equations solver"
   ClientHeight    =   8685
   ClientLeft      =   1125
   ClientTop       =   2970
   ClientWidth     =   4755
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8685
   ScaleWidth      =   4755
   Begin VB.CommandButton Command2 
      Caption         =   "exit"
      Height          =   615
      Left            =   2625
      TabIndex        =   5
      Top             =   7440
      Width           =   1500
   End
   Begin VB.CommandButton Command1 
      Caption         =   "settings"
      Enabled         =   0   'False
      Height          =   615
      Left            =   625
      TabIndex        =   4
      Top             =   7440
      Visible         =   0   'False
      Width           =   1500
   End
   Begin VB.CommandButton Command 
      Caption         =   "一元二次方程组"
      Enabled         =   0   'False
      Height          =   1500
      Index           =   3
      Left            =   625
      TabIndex        =   3
      Top             =   5700
      Visible         =   0   'False
      Width           =   3500
   End
   Begin VB.CommandButton Command 
      Caption         =   "一元二次方程组"
      Height          =   1500
      Index           =   2
      Left            =   625
      TabIndex        =   2
      Top             =   3900
      Width           =   3500
   End
   Begin VB.CommandButton Command 
      Caption         =   "三元一次方程组"
      Height          =   1500
      Index           =   1
      Left            =   625
      TabIndex        =   1
      Top             =   2100
      Width           =   3500
   End
   Begin VB.CommandButton Command 
      Caption         =   "二元一次方程组"
      Height          =   1500
      Index           =   0
      Left            =   625
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
            Solver_0.Show 1
        Case 1
            mode = 1
            Solver_1.Show 1
        Case 2
            mode = 2
            Solver_2.Show 1
        Case 3
            mode = 3
            Solver_3.Show 1
    End Select
End Sub

Private Sub Command1_Click()
    mode = 4
    Settings.Show 1
End Sub

Private Sub Command2_Click()
    Me.Hide
    frmAbout.Show 1
End Sub

