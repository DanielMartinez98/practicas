VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7080
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11190
   LinkTopic       =   "Form1"
   ScaleHeight     =   7080
   ScaleWidth      =   11190
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame4 
      Caption         =   "Ajustador Asignado"
      Height          =   2895
      Left            =   7560
      TabIndex        =   40
      Top             =   2160
      Width           =   3375
      Begin VB.TextBox Text18 
         Height          =   285
         Left            =   240
         TabIndex        =   46
         Top             =   720
         Width           =   2895
      End
      Begin VB.CommandButton API_SeleccionAutomaticaAjustador_BotonUI 
         Caption         =   "Seleccion Auto."
         Height          =   615
         Left            =   840
         TabIndex        =   45
         Top             =   1320
         Width           =   1695
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Listado"
         Height          =   375
         Left            =   1800
         TabIndex        =   44
         Top             =   2160
         Width           =   1095
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Limpiar"
         Height          =   375
         Left            =   360
         TabIndex        =   43
         Top             =   2160
         Width           =   1215
      End
      Begin VB.TextBox Text17 
         Height          =   285
         Left            =   1560
         TabIndex        =   42
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label18 
         Caption         =   "Clave Ajustador"
         Height          =   255
         Left            =   240
         TabIndex        =   41
         Top             =   360
         Width           =   1935
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "TiemposAjustador"
      Height          =   1215
      Left            =   6600
      TabIndex        =   39
      Top             =   360
      Width           =   4335
      Begin VB.CheckBox Check2 
         Caption         =   "Check2"
         Height          =   195
         Left            =   240
         TabIndex        =   52
         Top             =   720
         Width           =   255
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check1"
         Height          =   195
         Left            =   240
         TabIndex        =   51
         Top             =   360
         Width           =   255
      End
      Begin VB.TextBox Text22 
         Height          =   285
         Left            =   3120
         TabIndex        =   50
         Text            =   "XX:XX"
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox Text21 
         Height          =   285
         Left            =   1800
         TabIndex        =   49
         Text            =   "XX/XX/XXXX"
         Top             =   720
         Width           =   1215
      End
      Begin VB.TextBox Text20 
         Height          =   285
         Left            =   3120
         TabIndex        =   48
         Text            =   "XX:XX"
         Top             =   360
         Width           =   855
      End
      Begin VB.TextBox Text19 
         Height          =   285
         Left            =   1800
         TabIndex        =   47
         Text            =   "XX/XX/XXXX"
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label20 
         Caption         =   "Llegada"
         Height          =   255
         Left            =   600
         TabIndex        =   54
         Top             =   720
         Width           =   615
      End
      Begin VB.Label Label19 
         Caption         =   "Envio"
         Height          =   255
         Left            =   600
         TabIndex        =   53
         Top             =   360
         Width           =   615
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Datos de Llamada"
      Height          =   1215
      Left            =   3240
      TabIndex        =   5
      Top             =   240
      Width           =   3015
      Begin VB.TextBox Text6 
         Height          =   285
         Left            =   2040
         TabIndex        =   13
         Text            =   "XX:XX"
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox Text5 
         Height          =   285
         Left            =   720
         TabIndex        =   12
         Text            =   "XX/XX/XXXX"
         Top             =   720
         Width           =   1215
      End
      Begin VB.TextBox Text4 
         Height          =   285
         Left            =   2040
         TabIndex        =   11
         Text            =   "XX:XX"
         Top             =   360
         Width           =   855
      End
      Begin VB.TextBox Text3 
         Height          =   285
         Left            =   720
         TabIndex        =   10
         Text            =   "XX/XX/XXXX"
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label7 
         Caption         =   "Inicio"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label5 
         Caption         =   "Fin"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   720
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "Inicio"
         Height          =   255
         Left            =   3000
         TabIndex        =   6
         Top             =   1200
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Ocurrencia del Siniestro"
      Height          =   1335
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2895
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   1800
         TabIndex        =   2
         Text            =   "XX:XX"
         Top             =   360
         Width           =   855
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   240
         TabIndex        =   1
         Text            =   "XX/XX/XXXX"
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "(hh:mm)"
         Height          =   255
         Left            =   1920
         TabIndex        =   4
         Top             =   720
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "(dd/mm/yyyy)"
         Height          =   255
         Left            =   480
         TabIndex        =   3
         Top             =   720
         Width           =   1215
      End
   End
   Begin VB.PictureBox SSTab1 
      Height          =   4575
      Left            =   240
      ScaleHeight     =   4515
      ScaleWidth      =   6675
      TabIndex        =   8
      Top             =   1800
      Width           =   6735
      Begin VB.TextBox Text16 
         Height          =   285
         Left            =   1680
         TabIndex        =   38
         Top             =   2880
         Width           =   4695
      End
      Begin VB.TextBox Text15 
         Height          =   285
         Left            =   1680
         TabIndex        =   36
         Top             =   2520
         Width           =   4695
      End
      Begin VB.TextBox Text14 
         Height          =   285
         Left            =   4680
         TabIndex        =   34
         Top             =   2160
         Width           =   1695
      End
      Begin VB.TextBox Text13 
         Height          =   285
         Left            =   1680
         TabIndex        =   32
         Top             =   2160
         Width           =   1935
      End
      Begin VB.TextBox Text12 
         Height          =   285
         Left            =   5160
         TabIndex        =   29
         Top             =   1440
         Width           =   1215
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   1680
         TabIndex        =   27
         Top             =   1440
         Width           =   2535
      End
      Begin VB.TextBox Text11 
         Height          =   285
         Left            =   4200
         TabIndex        =   25
         Top             =   1800
         Width           =   2175
      End
      Begin VB.TextBox Text10 
         Height          =   285
         Left            =   1680
         TabIndex        =   23
         Top             =   1800
         Width           =   2175
      End
      Begin VB.TextBox Text9 
         Height          =   285
         Left            =   1680
         TabIndex        =   21
         Top             =   1080
         Width           =   4335
      End
      Begin VB.TextBox Text8 
         Height          =   285
         Left            =   2040
         TabIndex        =   20
         Top             =   840
         Width           =   4335
      End
      Begin VB.CommandButton Command1 
         Height          =   375
         Left            =   1680
         TabIndex        =   19
         Top             =   720
         Width           =   375
      End
      Begin VB.TextBox Text7 
         Height          =   285
         Left            =   5160
         TabIndex        =   17
         Top             =   480
         Width           =   1215
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   1680
         TabIndex        =   15
         Text            =   "CRUCERO"
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label17 
         Caption         =   "Conductor"
         Height          =   255
         Left            =   240
         TabIndex        =   37
         Top             =   2880
         Width           =   1695
      End
      Begin VB.Label Label16 
         Caption         =   "Reporta Siniestro"
         Height          =   255
         Left            =   240
         TabIndex        =   35
         Top             =   2520
         Width           =   1695
      End
      Begin VB.Label Label15 
         Caption         =   "Vialidad"
         Height          =   255
         Left            =   3960
         TabIndex        =   33
         Top             =   2160
         Width           =   735
      End
      Begin VB.Label Label14 
         Caption         =   "Punto de Ref."
         Height          =   255
         Left            =   240
         TabIndex        =   31
         Top             =   2160
         Width           =   1695
      End
      Begin VB.Label Label13 
         Caption         =   "C.P:"
         Height          =   255
         Left            =   4680
         TabIndex        =   30
         Top             =   1440
         Width           =   375
      End
      Begin VB.Label Label12 
         Caption         =   "Colonia"
         Height          =   255
         Left            =   240
         TabIndex        =   28
         Top             =   1440
         Width           =   1575
      End
      Begin VB.Label Label11 
         Caption         =   "y"
         Height          =   255
         Left            =   3960
         TabIndex        =   26
         Top             =   1800
         Width           =   135
      End
      Begin VB.Label Label10 
         Caption         =   "Entre Calles"
         Height          =   255
         Left            =   240
         TabIndex        =   24
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label9 
         Caption         =   "Calle"
         Height          =   255
         Left            =   240
         TabIndex        =   22
         Top             =   1080
         Width           =   1575
      End
      Begin VB.Label Label8 
         Caption         =   "Estado y Mun."
         Height          =   255
         Left            =   240
         TabIndex        =   18
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label4 
         Caption         =   "Siniestro"
         Height          =   255
         Left            =   4440
         TabIndex        =   16
         Top             =   480
         Width           =   1335
      End
      Begin VB.Label Label6 
         Caption         =   "Localizacion"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   14
         Top             =   480
         Width           =   1335
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub API_SeleccionAutomaticaAjustador()
Dim API_SeleccionAutoAjustador_HostAPI As String, API_SeleccionAutoAjustador_EstadoMunicipio As String, API_SeleccionAutoAjustador_Colonia As String, API_SeleccionAutoAjustador_Calle As String, API_SeleccionAutoAjustador_CodigoPostal As String
API_SeleccionAutoAjustador_HostAPI = "http://189.159.44.7:5007/api/AsignarAjustadorController2"
API_SeleccionAutoAjustador_EstadoMunicipio = Text8.Text
API_SeleccionAutoAjustador_EstadoMunicipio = Replace(API_SeleccionAutoAjustador_EstadoMunicipio, " ", "+")
API_SeleccionAutoAjustador_Colonia = "+" & Combo2.Text
API_SeleccionAutoAjustador_Colonia = Replace(API_SeleccionAutoAjustador_Colonia, " ", "+")
API_SeleccionAutoAjustador_Calle = "+" & Text12.Text
API_SeleccionAutoAjustador_Calle = Replace(API_SeleccionAutoAjustador_Calle, " ", "+")
API_SeleccionAutoAjustador_CodigoPostal = "+" & Text10.Text
Dim API_SeleccionAutoAjustador_RequestObject As Object
Dim API_SeleccionAutoAjustador_ResponseString As String
Dim API_SeleccionAutoAjustador_RequestBody As String
Set API_SeleccionAutoAjustador_RequestObject = CreateObject("WinHttp.WinHttpRequest.5.1")
API_SeleccionAutoAjustador_RequestBody = "{ ""dir"" : "
API_SeleccionAutoAjustador_RequestBody = API_SeleccionAutoAjustador_RequestBody & " "" " & API_SeleccionAutoAjustador_EstadoMunicipio & API_SeleccionAutoAjustador_Colonia & API_SeleccionAutoAjustador_Calle & API_SeleccionAutoAjustador_CodigoPostal & " "" }"
With API_SeleccionAutoAjustador_RequestObject
.Option(4) = 13056
.Open "POST", API_SeleccionAutoAjustador_HostAPI, False
.SetRequestHeader "Content-Type", "application/json"
.Send API_SeleccionAutoAjustador_RequestBody
API_SeleccionAutoAjustador_ResponseString = .ResponseText
End With
API_SeleccionAutoAjustador_ResponseString = Replace(API_SeleccionAutoAjustador_ResponseString, """", "")
API_SeleccionAutoAjustador_ResponseString = Replace(API_SeleccionAutoAjustador_ResponseString, "resultado", "")
API_SeleccionAutoAjustador_ResponseString = Replace(API_SeleccionAutoAjustador_ResponseString, "[", "")
API_SeleccionAutoAjustador_ResponseString = Replace(API_SeleccionAutoAjustador_ResponseString, "]", "")
API_SeleccionAutoAjustador_ResponseString = Replace(API_SeleccionAutoAjustador_ResponseString, "{", "")
API_SeleccionAutoAjustador_ResponseString = Replace(API_SeleccionAutoAjustador_ResponseString, "}", "")
API_SeleccionAutoAjustador_ResponseString = Replace(API_SeleccionAutoAjustador_ResponseString, ":", "")
Dim API_SeleccionAutoAjustador_IDAjustadorApropiado As Integer
API_SeleccionAutoAjustador_IDAjustadorApropiado = CInt(API_SeleccionAutoAjustador_ResponseString)
If (API_SeleccionAutoAjustador_IDAjustadorApropiado = 0) Then
MsgBox "Ocurrió un error con el API de Selección Automática. Registre el usuario de manera manual."
Else
MsgBox "El ajustador seleccionado es el de ID " & API_SeleccionAutoAjustador_ResponseString
End If
End Sub

Private Sub API_SeleccionAutomaticaAjustador_BotonUI_Click()
    API_SeleccionAutomaticaAjustador
End Sub
