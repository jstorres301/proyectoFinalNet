<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarCalificacion.aspx.cs" Inherits="proyectoFinal.listarCalificacion" MasterPageFile="~/menuUsuario.Master" %>


<asp:Content ID="formularioListarCalificacion" runat="server" ContentPlaceHolderID="contenidoMenuUsuario">
    <asp:GridView ID="gtvListarCitas" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gtvListarCitas_SelectedIndexChanged" OnRowCommand="gtvListarCitas_RowCommand">
            <Columns>
                <asp:BoundField DataField="id_cita" HeaderText="Id Cita" />
                <asp:BoundField DataField="fecha_hora" HeaderText="Fecha/Hora" />
                <asp:BoundField DataField="centro_medico" HeaderText="Centro Medico" />
             
                <asp:TemplateField HeaderText="Opcion">
                    <ItemTemplate>
                        <asp:Button ID="btnRegistrar" runat="server" Text="Calificar" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
<asp:Panel ID="panelCalificacion" runat="server">
            <div class="pure-u-1-5"></div>
            <div class="pure-u-3-5">
                <div>
            <asp:Label ID="lblid_cita" runat="server" Text="id_cita"></asp:Label>
            <br />
            <asp:TextBox ID="txtid_cita" runat="server" ></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblcalificacion" runat="server" Text="Calificacion"></asp:Label>
            <br />
            <asp:TextBox ID="txtcalificacion" runat="server" OnTextChanged="txtcalificacion_TextChanged" ></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblobservaciones" runat="server" Text="Observaciones"></asp:Label>
            <br />
            <asp:TextBox ID="txtobservaciones" runat="server" Height="62px" Width="197px" ></asp:TextBox>
        </div>
       <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Calificacion" OnClick="btnRegistrar_Click" />
            
        </asp:Panel>

</asp:Content>