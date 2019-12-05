<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarUsuario.aspx.cs" Inherits="proyectoFinal.registrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrar Usuario</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server" class="was-validated">
        <div class="form-group">
            <asp:Label ID="lblCedula" runat="server" Text="Numero de cedula"></asp:Label>
            <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblNombres" runat="server" Text="Nombres"></asp:Label>
            <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblPrimerApellido" runat="server" Text="Primer Apellido"></asp:Label>
            <asp:TextBox ID="txtPrimerApellido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblSegundoApellido" runat="server" Text="Segundo Apellido"></asp:Label>
            <asp:TextBox ID="txtSegundoApellido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
            <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:DropDownList ID="ddlEps" runat="server">
                <asp:ListItem Value="null">Seleccione un rol </asp:ListItem>
                <asp:ListItem Value="administrador">Administrador</asp:ListItem>
                <asp:ListItem>Usuario</asp:ListItem>
                <asp:ListItem>Eps</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
        </div>


        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />



        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    </form>

    <script src="https://kit.fontawesome.com/ca52bd6e4f.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
