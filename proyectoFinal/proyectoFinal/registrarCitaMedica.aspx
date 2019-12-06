<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarCitaMedica.aspx.cs" Inherits="proyectoFinal.registrarCitaMedica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblFecha_hora" runat="server" Text="fecha/hora"></asp:Label>
            <br />
            <asp:TextBox ID="txtFecha_hora" runat="server" type="datetime-local" ></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblCentro_Medico" runat="server" Text="Centro Medico"></asp:Label>
            <br />
            <asp:TextBox ID="txtCentro_Medico" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblUsuario_Cedula" runat="server" Text="Cedula Del Usuario"></asp:Label>
            <br />
            <asp:TextBox ID="txtUsuario_Cedula" runat="server"></asp:TextBox>
        </div>
        
        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
    </form>
</body>
</html>
