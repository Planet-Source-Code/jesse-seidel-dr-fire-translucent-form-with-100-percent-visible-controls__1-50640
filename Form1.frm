VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C000C0&
   Caption         =   "Form1"
   ClientHeight    =   3480
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3480
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   600
      TabIndex        =   6
      Top             =   2040
      Width           =   2295
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00C000C0&
      Caption         =   "Check1"
      Height          =   255
      Left            =   2640
      TabIndex        =   5
      Top             =   1080
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   840
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   360
      Width           =   1215
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   1935
      Left            =   240
      TabIndex        =   1
      Top             =   360
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   855
      Left            =   720
      TabIndex        =   0
      Top             =   1080
      Width           =   1815
   End
   Begin Project1.DFTrans DFTrans1 
      Left            =   2160
      Top             =   480
      _ExtentX        =   2355
      _ExtentY        =   873
   End
   Begin VB.Image Image1 
      Height          =   885
      Left            =   3120
      Picture         =   "Form1.frx":0000
      Top             =   1440
      Width           =   930
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   $"Form1.frx":0D69
      Height          =   975
      Left            =   120
      TabIndex        =   3
      Top             =   2400
      Width           =   4455
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "All of the controls are still 100 percent visible :)"
      Height          =   255
      Left            =   720
      TabIndex        =   2
      Top             =   120
      Width           =   3855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Form2.Show
End Sub
