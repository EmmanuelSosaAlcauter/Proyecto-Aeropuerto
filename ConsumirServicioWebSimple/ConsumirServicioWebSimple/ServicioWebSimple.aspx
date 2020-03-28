<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ServicioWebSimple.aspx.vb" Inherits="ConsumirServicioWebSimple.ServicioWebSimple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Consumir Servicio Web Simple</h1>
            <asp:Label ID="LbNumero1" Text="Primer número" runat="server" />
            <asp:TextBox ID="txtNumero1" runat="server" />
            <hr />
            <asp:Label ID="LbNumero2" Text="Segundo número" runat="server" />
            <asp:TextBox ID="txtNumero2" runat="server" />
            <hr />
            <asp:Button ID="btnSuma" Text="Suma" runat="server" />
            <asp:Button ID="btnResta" Text="Resta" runat="server" />
            <asp:Button ID="btnMulti" Text="Multiplicación" runat="server" />
            <asp:Button ID="btnDiv" Text="División" runat="server" />
            <hr />
            <asp:Label ID="LbResultado" runat="server" />
        </div>
    </form>
</body>
</html>
