<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultarUsuarios.aspx.cs" Inherits="proyectoFinal.consultarUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Consultar</title>
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-oAOxQR6DkCoMliIh8yFnu25d7Eq/PHS21PClpwjOTeU2jRSq11vu66rf90/cZr47" crossorigin="anonymous">
    <style scoped>
        .button-success,
        .button-error,
        .button-warning,
        .button-secondary {
            color: white;
            border-radius: 4px;
            text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
        }

        .button-success {
            background: rgb(28, 184, 65); /* this is a green */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="pure-form">

        <asp:Panel ID="panelConsultar" runat="server">
            <asp:GridView ID="gdvTablaUsuarios" runat="server" AutoGenerateColumns="False" Height="132px" Width="712px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gdvTablaUsuarios_RowCommand" OnSelectedIndexChanged="gdvTablaUsuarios_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="numero_cedula" HeaderText="Numero de documento" />
                    <asp:BoundField DataField="nombres" HeaderText="Nombres" />
                    <asp:BoundField DataField="primer_apellido" HeaderText="Primer Apellido" />
                    <asp:BoundField DataField="segundo_apellido" HeaderText="Segundo Apellido" />
                    <asp:BoundField DataField="nombre_usuario" HeaderText="Nombre de usuario" />
                    <asp:BoundField DataField="rol" HeaderText="Rol" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="imgActualizar" CommandName="Actualizar" runat="server" ImageUrl="~/img/icono.png" Width="30px" />
                            <asp:ImageButton ID="imgEliminar" CommandName="Eliminar" runat="server" ImageUrl="~/img/eliminar.png" Width="30px" />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </asp:Panel>
        <asp:Panel ID="panelActualizar" runat="server" CssClass="pure-u-5-5">
            <div class="pure-u-1-5"></div>
            <div class="pure-u-3-5">
                <h2>Actualizar</h2>
                <br />
                <asp:Label ID="lblCedula" runat="server" Text="Numero de cedula"></asp:Label>
                <br />
                <asp:TextBox ID="txtCedula" runat="server" OnTextChanged="txtCedula_TextChanged"></asp:TextBox>
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
                <br />
                <asp:Button ID="btnActualizar" runat="server" Text="Confirmar" OnClick="btnActualizar_Click" CssClass="pure-button button-success" />

            </div>
        </asp:Panel>
    </form>
</body>
</html>
