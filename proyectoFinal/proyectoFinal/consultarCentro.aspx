<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultarCentro.aspx.cs" Inherits="proyectoFinal.consultarCentro" MasterPageFile="~/menuUsuario.Master" %>

<asp:Content ID="formularioConsultarCentro" runat="server" ContentPlaceHolderID="contenidoMenuUsuario">
    <!--Boton y muestra-->
    <div class="">
        <div class="" style="text-align: center;">
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
        <div class="">
            <div class=""></div>
            <div id="divMuestra" class="" style="text-align: center;">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class=""></div>
        </div>
    </div>
    <!--tabla consulta-->
    <div class="" style="text-align: center; align-content: center; justify-content: center;">
        <asp:GridView ID="grvTablaCentroMedico" runat="server" AutoGenerateColumns="False" Width="478px" CssClass="">
            <Columns>
                <asp:BoundField DataField="nombre_centro_medico" HeaderText="Nombre del Centro Medico" />
                <asp:BoundField DataField="horarios" HeaderText="Horarios" />
                <asp:BoundField DataField="direccion" HeaderText="Dirección" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
