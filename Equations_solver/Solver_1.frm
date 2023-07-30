VERSION 5.00
Begin VB.Form Solver_1 
   Caption         =   "三元一次方程组"
   ClientHeight    =   6240
   ClientLeft      =   6120
   ClientTop       =   2970
   ClientWidth     =   6240
   LinkTopic       =   "Form1"
   ScaleHeight     =   6240
   ScaleWidth      =   6240
   Begin VB.TextBox Text15 
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
      TabIndex        =   15
      Top             =   5080
      Width           =   2000
   End
   Begin VB.TextBox Text12 
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
      Left            =   5160
      TabIndex        =   12
      Top             =   1800
      Width           =   900
   End
   Begin VB.TextBox Text11 
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
      TabIndex        =   11
      Top             =   1800
      Width           =   900
   End
   Begin VB.TextBox Text10 
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
      TabIndex        =   9
      Top             =   1800
      Width           =   900
   End
   Begin VB.TextBox Text9 
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
      Left            =   720
      TabIndex        =   8
      Top             =   1800
      Width           =   900
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
      Left            =   5160
      TabIndex        =   7
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
      Height          =   540
      Left            =   5160
      TabIndex        =   3
      Top             =   120
      Width           =   900
   End
   Begin VB.CommandButton Command2 
      Caption         =   "退出"
      Height          =   540
      Left            =   3600
      TabIndex        =   17
      Top             =   4280
      Width           =   2380
   End
   Begin VB.CommandButton Command1 
      Caption         =   "计算"
      Height          =   540
      Left            =   3600
      TabIndex        =   16
      Top             =   3400
      Width           =   2380
   End
   Begin VB.TextBox Text14 
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
      TabIndex        =   14
      Top             =   4250
      Width           =   2000
   End
   Begin VB.TextBox Text13 
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
      TabIndex        =   13
      Top             =   3420
      Width           =   2000
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
      Left            =   3680
      TabIndex        =   6
      Top             =   960
      Width           =   900
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
      Left            =   2200
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
      Height          =   510
      Left            =   720
      TabIndex        =   4
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
   Begin VB.Label Label12 
      Caption         =   "z ="
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
      TabIndex        =   30
      Top             =   5110
      Width           =   480
   End
   Begin VB.Label Label9 
      Caption         =   "z ="
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
      Left            =   4665
      TabIndex        =   26
      Top             =   1830
      Width           =   480
   End
   Begin VB.Label Label8 
      Caption         =   "y +"
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
      TabIndex        =   25
      Top             =   1830
      Width           =   480
   End
   Begin VB.Label Label7 
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
      TabIndex        =   24
      Top             =   1830
      Width           =   480
   End
   Begin VB.Label Label6 
      Caption         =   "z ="
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
      Left            =   4670
      TabIndex        =   23
      Top             =   990
      Width           =   480
   End
   Begin VB.Label Label3 
      Caption         =   "z ="
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
      Left            =   4670
      TabIndex        =   10
      Top             =   150
      Width           =   480
   End
   Begin VB.Label Label11 
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
      TabIndex        =   29
      Top             =   4280
      Width           =   480
   End
   Begin VB.Label Label10 
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
      TabIndex        =   28
      Top             =   3450
      Width           =   480
   End
   Begin VB.Label Label13 
      Caption         =   "{"
      BeginProperty Font 
         Name            =   "Calibri Light"
         Size            =   128.25
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3000
      Left            =   0
      TabIndex        =   27
      Top             =   2800
      Width           =   720
   End
   Begin VB.Label Label5 
      Caption         =   "y +"
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
      TabIndex        =   22
      Top             =   990
      Width           =   480
   End
   Begin VB.Label Label4 
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
      TabIndex        =   21
      Top             =   990
      Width           =   480
   End
   Begin VB.Label Label2 
      Caption         =   "y +"
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
      TabIndex        =   20
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
      TabIndex        =   19
      Top             =   150
      Width           =   480
   End
   Begin VB.Label Label0 
      Caption         =   "{"
      BeginProperty Font 
         Name            =   "Calibri Light"
         Size            =   128.25
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3000
      Left            =   0
      TabIndex        =   18
      Top             =   -500
      Width           =   720
   End
End
Attribute VB_Name = "Solver_1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Dim t1 As Double, t2 As Double, t3 As Double, t4 As Double, t5 As Double, t6 As Double, t7 As Double, t8 As Double, t9 As Double, t10 As Double, t11 As Double, t12 As Double, t13 As Double, t14 As Double, t15 As Double
    Dim tt1 As Double, tt2 As Double, tt3 As Double, tt4 As Double, tt5 As Double, tt6 As Double, tt7 As Double, tt8 As Double
    Dim ttt1 As Double, ttt2 As Double, ttt3 As Double
    
    t1 = Text2 / Text1
    t2 = Text3 / Text1
    t3 = Text4 / Text1
    t4 = Text6 / Text5
    t5 = Text7 / Text5
    t6 = Text8 / Text5
    t7 = Text10 / Text9
    t8 = Text11 / Text9
    t9 = Text12 / Text9
    t10 = t1 - t4
    t11 = t2 - t5
    t12 = t3 - t6
    t13 = t4 - t7
    t14 = t5 - t8
    t15 = t6 - t9
    
    tt1 = t10 * t15
    tt2 = t13 * t12
    tt3 = tt1 - tt2
    tt4 = t10 * t14
    tt5 = t13 * t11
    tt6 = tt4 - tt5
    Text15 = tt3 / tt6
    tt7 = tt3 / tt6 * t11
    tt8 = t12 - tt7
    Text14 = tt8 / t10
    ttt1 = Text2 * tt8 / t10
    ttt2 = Text3 * tt3 / tt6
    ttt3 = Text4 - ttt1 - ttt2
    Text13 = ttt3 / Text1
End Sub

Private Sub Command2_Click()
    Me.Hide
End Sub
