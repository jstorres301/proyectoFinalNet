<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarCalificacion.aspx.cs" Inherits="proyectoFinal.registrarCalificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblid_cita" runat="server" Text="id_cita"></asp:Label>
            <br />
            <asp:TextBox ID="txtid_cita" runat="server" ></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblcalificacion" runat="server" Text="Calificacion"></asp:Label>
            <br />
            <asp:TextBox ID="txtcalificacion" runat="server" ></asp:TextBox>
        </div>
        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
    </form>
</body>
</html>
