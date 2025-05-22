
VERSION 5.00
Begin VB.Form frmStudentSurvey 
   Caption         =   "Student Survey Form"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default

   Begin VB.TextBox txtSearch 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Search..."
      Top             =   240
      Width           =   3255
   End

   Begin VB.ListBox lstStudents 
      Height          =   1815
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   4335
   End

End

Attribute VB_Name = "frmStudentSurvey"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub txtSearch_Change()
    If txtSearch.Text = "" Then
        LoadDatabase
    Else
        SearchStudent txtSearch.Text
    End If
End Sub

Private Sub SearchStudent(ByVal searchText As String)
    lstStudents.Clear
    Dim rs As Recordset
    Set rs = db.OpenRecordset("SELECT * FROM Students WHERE Name LIKE '%" & searchText & "%'")
    Do While Not rs.EOF
        lstStudents.AddItem rs!Name
        rs.MoveNext
    Loop
    rs.Close
End Sub

Private Sub LoadDatabase()
    ' Sample loading function
End Sub
