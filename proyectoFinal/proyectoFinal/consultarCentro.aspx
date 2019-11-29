<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultarCentro.aspx.cs" Inherits="proyectoFinal.consultarCentro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-oAOxQR6DkCoMliIh8yFnu25d7Eq/PHS21PClpwjOTeU2jRSq11vu66rf90/cZr47" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/base-min.css" />
</head>
<body>
    <br />
    <form id="frmSelect" runat="server" class="pure-form">
        <!--Boton y muestra-->
        <div class="pure-u-2-5">
            <div class="pure-u-5-5" style="text-align: center;">
                <asp:DropDownList ID="ddlNecesidad" runat="server" OnSelectedIndexChanged="ddlNecesidad_SelectedIndexChanged">
                    <asp:ListItem>Selecciones una opción</asp:ListItem>
                    <asp:ListItem>Urgencias</asp:ListItem>
                    <asp:ListItem>Citas Prioritarias</asp:ListItem>
                    <asp:ListItem>Consultas Basicas</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <br />
            <!--muestra-->
            <div class="pure-u-5-5">
                <div class="pure-u-1-5"></div>
                <div id="divMuestra" class="pure-form" style="text-align: center;">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <div class="pure-u-1-5"></div>
            </div>
        </div>
        <!--tabla consulta-->
        <div class="pure-u-3-5" style="text-align:center;align-content:center;justify-content:center;">
            <asp:GridView ID="grvTablaCentroMedico" runat="server" AutoGenerateColumns="False" Width="478px" CssClass="pure-u-5-5">
                <Columns>
                    <asp:BoundField DataField="nombre_centro_medico" HeaderText="Nombre del Centro Medico" />
                    <asp:BoundField DataField="horarios" HeaderText="Horarios" />
                    <asp:BoundField DataField="direccion" HeaderText="Dirección" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
