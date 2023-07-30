VERSION 5.00
Begin VB.Form Solver_0 
   Caption         =   "二元一次方程组"
   ClientHeight    =   4410
   ClientLeft      =   6120
   ClientTop       =   2970
   ClientWidth     =   4755
   LinkTopic       =   "Form1"
   ScaleHeight     =   4410
   ScaleWidth      =   4755
   Begin VB.CommandButton Command2 
      Caption         =   "退出"
      Height          =   540
      Left            =   3000
      TabIndex        =   7
      Top             =   3280
      Width           =   1600
   End
   Begin VB.CommandButton Command1 
      Caption         =   "计算"
      Height          =   540
      Left            =   3000
      TabIndex        =   6
      Top             =   2400
      Width           =   1600
   End
   Begin VB.TextBox Text8 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   1205
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   3250
      Width           =   1500
   End
   Begin VB.TextBox Text7 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   1205
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   2420
      Width           =   1500
   End
   Begin VB.TextBox Text6 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   3680
      TabIndex        =   5
      Top             =   960
      Width           =   900
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   2200
      TabIndex        =   4
      Top             =   960
      Width           =   900
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   510
      Left            =   720
      TabIndex        =   3
      Top             =   960
      Width           =   900
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   3680
      TabIndex        =   2
      Top             =   120
      Width           =   900
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   510
      Left            =   2200
      TabIndex        =   1
      Top             =   120
      Width           =   900
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   510
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   900
   End
   Begin VB.Label Label7 
      Caption         =   "y ="
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   720
      TabIndex        =   17
      Top             =   3280
      Width           =   480
   End
   Begin VB.Label Label6 
      Caption         =   "x ="
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   720
      TabIndex        =   16
      Top             =   2450
      Width           =   480
   End
   Begin VB.Label Label5 
      Caption         =   "{"
      BeginProperty Font 
         Name            =   "Calibri Light"
         Size            =   96
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2415
      Left            =   0
      TabIndex        =   15
      Top             =   1800
      Width           =   720
   End
   Begin VB.Label Label4 
      Caption         =   "y ="
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   400
      Left            =   3195
      TabIndex        =   14
      Top             =   980
      Width           =   480
   End
   Begin VB.Label Label3 
      Caption         =   "x +"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   1720
      TabIndex        =   13
      Top             =   980
      Width           =   480
   End
   Begin VB.Label Label2 
      Caption         =   "y ="
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   400
      Left            =   3195
      TabIndex        =   12
      Top             =   150
      Width           =   480
   End
   Begin VB.Label Label1 
      Caption         =   "x +"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   400
      Left            =   1720
      TabIndex        =   11
      Top             =   150
      Width           =   480
   End
   Begin VB.Label Label0 
      Caption         =   "{"
      BeginProperty Font 
         Name            =   "Calibri Light"
         Size            =   96
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2415
      Left            =   0
      TabIndex        =   10
      Top             =   -500
      Width           =   720
   End
End
Attribute VB_Name = "Solver_0"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Dim t1 As Double, t2 As Double, t3 As Double, t4 As Double, t5 As Double, t6 As Double, t7 As Double, t8 As Double
    t1 = Text1 * Text6
    t2 = Text4 * Text3
    t3 = t1 - t2
    t4 = Text1 * Text5
    t5 = Text4 * Text2
    t6 = t4 - t5
    Text8 = t3 / t6
    t7 = t3 / t6 * Text2
    t8 = Text3 - t7
    Text7 = t8 / Text1
End Sub

Private Sub Command2_Click()
    Me.Hide
End Sub
