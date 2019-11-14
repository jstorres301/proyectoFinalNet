<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="proyectoFinal.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Iniciar sesion</title>
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-oAOxQR6DkCoMliIh8yFnu25d7Eq/PHS21PClpwjOTeU2jRSq11vu66rf90/cZr47" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">

        <asp:Login ID="Login" runat="server" Height="225px" Width="379px" OnAuthenticate="Login_Authenticate">
        </asp:Login>
        <asp:Button ID="btnRegistrarse" CssClass="pure-button" runat="server" OnClick="Button1_Click" Text="Registrarse" />
    </form>

</body>
</html>
