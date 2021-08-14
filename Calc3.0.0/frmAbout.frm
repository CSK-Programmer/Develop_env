VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "关于我的应用程序"
   ClientHeight    =   3555
   ClientLeft      =   2340
   ClientTop       =   1935
   ClientWidth     =   5730
   ClipControls    =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2453.724
   ScaleMode       =   0  'User
   ScaleWidth      =   5380.766
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox picIcon 
      AutoSize        =   -1  'True
      ClipControls    =   0   'False
      Height          =   540
      Left            =   240
      Picture         =   "frmAbout.frx":0000
      ScaleHeight     =   337.12
      ScaleMode       =   0  'User
      ScaleWidth      =   337.12
      TabIndex        =   1
      Top             =   240
      Width           =   540
   End
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "确定"
      Default         =   -1  'True
      Height          =   345
      Left            =   4125
      TabIndex        =   0
      Top             =   2625
      Width           =   1500
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  'Inside Solid
      Index           =   1
      X1              =   84.515
      X2              =   5309.398
      Y1              =   1687.583
      Y2              =   1687.583
   End
   Begin VB.Label lblTitle 
      Caption         =   "应用程序标题"
      ForeColor       =   &H00000000&
      Height          =   480
      Left            =   1050
      TabIndex        =   3
      Top             =   240
      Width           =   3885
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      Index           =   0
      X1              =   98.6
      X2              =   5309.398
      Y1              =   1697.936
      Y2              =   1697.936
   End
   Begin VB.Label lblVersion 
      Caption         =   "版本"
      Height          =   225
      Left            =   1050
      TabIndex        =   4
      Top             =   780
      Width           =   3885
   End
   Begin VB.Label lblDisclaimer 
      Caption         =   "警告: 如将此程序用于非正当用途，后果自负！"
      ForeColor       =   &H00000000&
      Height          =   825
      Left            =   160
      TabIndex        =   2
      Top             =   2625
      Width           =   3780
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdOK_Click()
  Unload Me
End Sub

Private Sub Form_Load()
    Me.Caption = "关于 " & App.Title
    lblVersion.Caption = "版本 " & App.Major & "." & App.Minor & "." & App.Revision
    lblTitle.Caption = App.Title
End Sub


