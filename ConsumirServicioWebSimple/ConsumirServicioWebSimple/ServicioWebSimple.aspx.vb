
Public Class ServicioWebSimple
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSuma_Click(sender As Object, e As EventArgs) Handles btnSuma.Click
        WSSimple.ServicioWebSimpleSoapClient ServicioCliente = New WSSimple.ServicioWebSimpleSoapClient()
        LbResultado.Text = ServicioCliente.Suma(Integer.Parse(txtNumero1.Text), Integer.Parse(txtNumero2.Text)).ToString()

    End Sub

    Protected Sub btnResta_Click(sender As Object, e As EventArgs) Handles btnResta.Click
        WSSimple.ServicioWebSimpleSoapClient ServicioCliente = New WSSimple.ServicioWebSimpleSoapClient()
        LbResultado.Text = ServicioCliente.Resta(Integer.Parse(txtNumero1.Text), Integer.Parse(txtNumero2.Text)).ToString()
    End Sub

    Protected Sub btnMulti_Click(sender As Object, e As EventArgs) Handles btnMulti.Click
        WSSimple.ServicioWebSimpleSoapClient ServicioCliente = New WSSimple.ServicioWebSimpleSoapClient()
        LbResultado.Text = ServicioCliente.Multiplicacion(Integer.Parse(txtNumero1.Text), Integer.Parse(txtNumero2.Text)).ToString()
    End Sub

    Protected Sub btnDiv_Click(sender As Object, e As EventArgs) Handles btnDiv.Click
        WSSimple.ServicioWebSimpleSoap ServicioCliente = New WSSimple.ServicioWebSimpleSoapClient()
        LbResultado.Text = ServicioCliente.Division(Integer.Parse(txtNumero1.Text), Integer.Parse(txtNumero2.Text)).ToString()
    End Sub


End Class