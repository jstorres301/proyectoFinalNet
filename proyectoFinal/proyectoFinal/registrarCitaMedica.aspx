<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarCitaMedica.aspx.cs" Inherits="proyectoFinal.registrarCitaMedica" MasterPageFile="~/menuUsuario.Master" %>

<asp:Content ContentPlaceHolderID="contenidoMenuUsuario" runat="server">
    <div>
        <asp:Label ID="lblFecha_hora" runat="server" Text="fecha/hora"></asp:Label>
        <br />
        <asp:TextBox ID="txtFecha_hora" runat="server" type="datetime-local"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblCentro_Medico" runat="server" Text="Centro Medico"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlCentro" runat="server" DataSourceID="centroMedicoLista" DataTextField="nombre_centro_medico" DataValueField="id_centro_medico">
        </asp:DropDownList>
        <asp:SqlDataSource ID="centroMedicoLista" runat="server" ConnectionString="<%$ ConnectionStrings:hospitalesConnectionString %>" SelectCommand="SELECT [nombre_centro_medico], [id_centro_medico] FROM [centro_medico]"></asp:SqlDataSource>
        <br />
    </div>
    <div>
        <asp:Label ID="lblUsuario_Cedula" runat="server" Text="Cedula Del Usuario"></asp:Label>
        <br />
        <asp:TextBox ID="txtUsuario_Cedula" runat="server"></asp:TextBox>
    </div>

    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
</asp:Content>


