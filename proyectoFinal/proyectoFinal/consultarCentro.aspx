<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultarCentro.aspx.cs" Inherits="proyectoFinal.consultarCentro" MasterPageFile="~/menuUsuario.Master" %>

<asp:Content ID="formularioConsultarCentro" runat="server" ContentPlaceHolderID="contenidoMenuUsuario">
    <div class="row w-100 h-100 m-0 p-0">
        <!--Boton y muestra-->
        <div class="col-4 mt-5">
            <div class="card">
                <div class="card-body">
                    <asp:DropDownList ID="ddlNecesidad" runat="server" CssClass="custom-select" OnSelectedIndexChanged="ddlNecesidad_SelectedIndexChanged" OnTextChanged="ddlNecesidad_TextChanged">
                        <asp:ListItem>Urgencias</asp:ListItem>
                        <asp:ListItem>Citas Prioritarias</asp:ListItem>
                        <asp:ListItem>Consultas Basicas</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="card-footer">
                    <asp:Button ID="Button1" runat="server" Text="Consultar" CssClass="btn btn-success m-auto" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <!--tabla consulta-->
        <div class="col-8 mt-5">
            <asp:GridView ID="grvTablaCentroMedico" runat="server" AutoGenerateColumns="False" CssClass="w-75 m-auto text-center text-" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="nombre_centro_medico" HeaderText="Nombre del Centro Medico" />
                    <asp:BoundField DataField="horarios" HeaderText="Horarios" />
                    <asp:BoundField DataField="direccion" HeaderText="Dirección" />
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
        </div>
    </div>
</asp:Content>
