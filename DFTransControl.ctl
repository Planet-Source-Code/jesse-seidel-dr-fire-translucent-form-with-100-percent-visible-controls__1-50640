VERSION 5.00
Begin VB.UserControl DFTrans 
   BackColor       =   &H00C000C0&
   ClientHeight    =   2745
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3480
   InvisibleAtRuntime=   -1  'True
   ScaleHeight     =   2745
   ScaleWidth      =   3480
   Begin VB.PictureBox Picture1 
      Height          =   495
      Left            =   0
      ScaleHeight     =   435
      ScaleWidth      =   1275
      TabIndex        =   0
      Top             =   0
      Width           =   1335
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "DFTrans Control"
         Height          =   255
         Left            =   0
         TabIndex        =   1
         Top             =   120
         Width           =   1335
      End
   End
End
Attribute VB_Name = "DFTrans"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Const LW_KEY = &H1
Const G_E = (-20)
Const W_E = &H80000
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function ReleaseCapture Lib "user32.dll" () As Long
Private Declare Function SendMessage Lib "user32.dll" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function SetLayeredWindowAttributes Lib "user32.dll" (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long

Private Sub UserControl_Initialize()
On Error Resume Next
UserControl.BackColor = UserControl.Parent.BackColor
End Sub

Private Sub UserControl_Resize()
On Error Resume Next
Dim Ret As Long
Dim TC As Long
TC = &HC000C0
Ret = GetWindowLong(UserControl.Parent.hwnd, G_E)
Ret = Ret Or W_E
SetWindowLong UserControl.Parent.hwnd, G_E, Ret
SetLayeredWindowAttributes UserControl.Parent.hwnd, TC, 0, LW_KEY
UserControl.BackColor = UserControl.Parent.BackColor
UserControl.Height = Picture1.Height
UserControl.Width = Picture1.Width
End Sub
'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=UserControl,UserControl,-1,BackColor
Public Property Get TransColor() As OLE_COLOR
Attribute TransColor.VB_Description = "Returns/sets the background color used to display text and graphics in an object."
    TransColor = UserControl.BackColor
End Property

Public Property Let TransColor(ByVal New_TransColor As OLE_COLOR)
    UserControl.BackColor() = New_TransColor
    PropertyChanged "TransColor"
End Property

'Load property values from storage
Private Sub UserControl_ReadProperties(PropBag As PropertyBag)

    UserControl.BackColor = PropBag.ReadProperty("TransColor", &HC000C0)
End Sub

'Write property values to storage
Private Sub UserControl_WriteProperties(PropBag As PropertyBag)

    Call PropBag.WriteProperty("TransColor", UserControl.BackColor, &HC000C0)
End Sub

