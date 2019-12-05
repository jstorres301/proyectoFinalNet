<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarEps.aspx.cs" Inherits="proyectoFinal.registrarEps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="frmRegistrarEps" runat="server">
        <div>
            <asp:Label ID="lblNit" runat="server" Text="Nit"></asp:Label>
            <br />
            <asp:TextBox ID="txtNit" runat="server"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Label ID="LblNombreEps" runat="server" Text="Nombre Eps"></asp:Label>
            <br />
            <asp:TextBox ID="TxtNombreEps" runat="server"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Label ID="LblNumeroDeTelefono" runat="server" Text="Numero de telefono"></asp:Label>
            <br />
            <asp:TextBox ID="TxtNumeroDeTelefono" runat="server"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Label ID="LblDireccion" runat="server" Text="Direccion"></asp:Label>
            <br />
            <asp:TextBox ID="TxtDireccion" runat="server"></asp:TextBox>
            <br />
        </div>
        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
    </form>
</body>
</html>
