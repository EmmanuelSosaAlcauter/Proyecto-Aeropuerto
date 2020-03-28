Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel

' Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class ServicioWebSimple
    Inherits System.Web.Services.WebService

    <WebMethod()>
    Public Function Hola_mundo() As String
        Return "Hola a todos"
    End Function

    <WebMethod()>
    Public Function HolaMasNombre(Nombre As String) As String

        Return "Hola" + " " + Nombre
    End Function

    <WebMethod()>
    Public Function Fecha_y_Hora() As String
        Return DateTime.Now.ToString()
    End Function

    <WebMethod()>
    Public Function Suma(Primer_numero As Integer, Segundo_numero As Integer) As Integer
        Return Primer_numero + Segundo_numero
    End Function

    <WebMethod()>
    Public Function Resta(Primer_numero As Integer, Segundo_numero As Integer) As Integer
        Return Primer_numero - Segundo_numero
    End Function

    <WebMethod()>
    Public Function Multiplicacion(Primer_numero As Integer, Segundo_numero As Integer) As Integer
        Return Primer_numero * Segundo_numero
    End Function

    <WebMethod()>
    Public Function Division(Primer_numero As Double, Segundo_numero As Double) As Double
        Return Primer_numero / Segundo_numero
    End Function

End Class