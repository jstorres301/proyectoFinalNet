<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarCalificacion.aspx.cs" Inherits="proyectoFinal.listarCalificacion" MasterPageFile="~/menuUsuario.Master" %>
<asp:Content ID="formularioListarCalificacion" runat="server" ContentPlaceHolderID="contenidoMenuUsuario">
    <asp:GridView ID="gtvListarCitas" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="id_cita" HeaderText="Id Cita" />
                <asp:BoundField DataField="fecha_hora" HeaderText="Fecha/Hora" />
                <asp:BoundField DataField="centro_medico" HeaderText="Centro Medico" />
                <asp:BoundField DataField="calificacion" HeaderText="Calificacion" />
                <asp:TemplateField HeaderText="Opcion">
                    <ItemTemplate>
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Calificacion" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</asp:Content>

