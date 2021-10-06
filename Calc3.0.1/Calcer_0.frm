VERSION 5.00
Begin VB.Form Calcer_0 
   Caption         =   "ª˘¥°‘ÀÀ„"
   ClientHeight    =   3705
   ClientLeft      =   8700
   ClientTop       =   5655
   ClientWidth     =   1980
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3705
   ScaleWidth      =   1980
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   615
      Left            =   240
      TabIndex        =   5
      Top             =   2880
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      Caption         =   "‘ÀÀ„"
      Height          =   2535
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1500
      Begin VB.OptionButton Opt 
         Caption         =   "/"
         Height          =   250
         Index           =   3
         Left            =   300
         TabIndex        =   4
         Top             =   1950
         Width           =   800
      End
      Begin VB.OptionButton Opt 
         Caption         =   "*"
         Height          =   250
         Index           =   2
         Left            =   300
         TabIndex        =   3
         Top             =   1400
         Width           =   800
      End
      Begin VB.OptionButton Opt 
         Caption         =   "-"
         Height          =   250
         Index           =   1
         Left            =   300
         TabIndex        =   2
         Top             =   850
         Width           =   800
      End
      Begin VB.OptionButton Opt 
         Caption         =   "+"
         Height          =   250
         Index           =   0
         Left            =   300
         TabIndex        =   1
         Top             =   300
         Width           =   800
      End
   End
End
Attribute VB_Name = "Calcer_0"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    a = Val(InputBox("Please input the first number", "Calc"))
    b = Val(InputBox("Please input the second number", "Calc"))
    Select Case Op
        Case 0
            result = a + b
        Case 1
            result = a - b
        Case 2
            result = a * b
        Case 3
            result = a / b
    End Select
    Me.Hide
    frmResult.Show 1
End Sub

Private Sub Opt_Click(Index As Integer)
    Op = Index
End Sub
