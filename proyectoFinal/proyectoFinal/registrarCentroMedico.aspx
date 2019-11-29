<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarCentroMedico.aspx.cs" Inherits="proyectoFinal.registrarCentroMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   
        <form id="form2" runat="server">
        <asp:Label ID="lblIdcentromedico" runat="server" Text="Id Centro Medico"></asp:Label>
        <br />
        <asp:TextBox ID="txtIdcentromedico" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblNombredelcentromedico" runat="server" Text="Nombre del centromedico"></asp:Label>
        <br />
        <asp:TextBox ID="txtNombredelcentromedico" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblNivelatencion" runat="server" Text="Nivel de atencion"></asp:Label>
        <br />
        <asp:TextBox ID="txtNivelatencion" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblHorarios" runat="server" Text="Horarios"></asp:Label>
        <br />
        <asp:TextBox ID="txtHorarios" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblFoto" runat="server" Text="Foto"></asp:Label>
        <br />
        <asp:TextBox ID="txtFoto" runat="server"></asp:TextBox>
        <br />

         <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
    </form>
    
</body>
</html>
