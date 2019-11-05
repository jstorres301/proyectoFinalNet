<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarUsuario.aspx.cs" Inherits="proyectoFinal.registrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblCedula" runat="server" Text="Numero de cedula"></asp:Label>
        <br />
        <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblNombres" runat="server" Text="Nombres"></asp:Label>
        <br />
        <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblPrimerApellido" runat="server" Text="Primer Apellido"></asp:Label>
        <br />
        <asp:TextBox ID="txtPrimerApellido" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblSegundoApellido" runat="server" Text="Segundo Apellido"></asp:Label>
        <br />
        <asp:TextBox ID="txtSegundoApellido" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
        <br />
        <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
        <br />
        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlEps" runat="server">
            <asp:ListItem Value="null">Seleccione un rol </asp:ListItem>
            <asp:ListItem Value="administrador">Administrador</asp:ListItem>
            <asp:ListItem>Usuario</asp:ListItem>
            <asp:ListItem>Eps</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
    </form>
</body>
</html>
