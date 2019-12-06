<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarCentroMedico.aspx.cs" Inherits="proyectoFinal.registrarCentroMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar Convenios</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
   
        <form id="form2" runat="server">

        <asp:Label ID="lblNombreCentroMedico" runat="server" Text="Nombre del CentroMedico"></asp:Label>
        <br />
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblNivelatencion" runat="server" Text="Nivel de atencion"></asp:Label>
        <br />
        <asp:TextBox ID="txtNivelatencion" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblHorarios" runat="server" Text="Horarios"></asp:Label>
        <br />
        <asp:TextBox ID="txtHorarios" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="LblDireccion" runat="server" Text="Direccion"></asp:Label>
        <br />
        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:FileUpload ID="Fulfoto" runat="server" />
        <asp:Image ID="imgfoto" runat="server" />  
        <br /><br />
         <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
    </form>
    
</body>
</html>
