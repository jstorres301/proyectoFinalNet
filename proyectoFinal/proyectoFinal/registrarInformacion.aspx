<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarInformacion.aspx.cs" Inherits="proyectoFinal.registrarInformacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblNombre" runat="server" Text="Nombre del centro medico"></asp:Label>
        <br />
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblNit" runat="server" Text="Nit"></asp:Label>
        <br />
        <asp:TextBox ID="txtNit" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblDireccion" runat="server" Text="Direccion"></asp:Label>
        <br />
        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
        <br />
        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
        <br />
         <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
    </form>
</body>
</html>
