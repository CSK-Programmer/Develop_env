VERSION 5.00
Begin VB.Form frmResult 
   Caption         =   "result"
   ClientHeight    =   885
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9045
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   885
   ScaleWidth      =   9045
   StartUpPosition =   3  '窗口缺省
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   885
      Left            =   0
      Locked          =   -1  'True
      MaxLength       =   100
      TabIndex        =   0
      Text            =   " "
      ToolTipText     =   "运算结果，可复制"
      Top             =   0
      Width           =   9045
   End
End
Attribute VB_Name = "frmResult"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Text1_GotFocus()
    Text1 = result
End Sub
