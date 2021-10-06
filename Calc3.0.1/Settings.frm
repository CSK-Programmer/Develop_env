VERSION 5.00
Begin VB.Form Settings 
   Caption         =   "Settings"
   ClientHeight    =   2445
   ClientLeft      =   10035
   ClientTop       =   5805
   ClientWidth     =   2010
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2445
   ScaleWidth      =   2010
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   615
      Left            =   100
      TabIndex        =   3
      Top             =   1680
      Width           =   1800
   End
   Begin VB.Frame Frame1 
      Caption         =   "mode"
      Height          =   1345
      Left            =   100
      TabIndex        =   0
      Top             =   150
      Width           =   1800
      Begin VB.OptionButton Opt 
         Caption         =   "rad"
         Height          =   250
         Index           =   1
         Left            =   200
         TabIndex        =   2
         Top             =   850
         Width           =   1000
      End
      Begin VB.OptionButton Opt 
         Caption         =   "deg"
         Height          =   250
         Index           =   0
         Left            =   200
         TabIndex        =   1
         Top             =   300
         Width           =   1000
      End
   End
End
Attribute VB_Name = "Settings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Me.Hide
    Main_Frm.Show
End Sub

Private Sub Opt_Click(Index As Integer)
    setting = Index
End Sub
