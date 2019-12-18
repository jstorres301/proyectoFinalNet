<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarCalificacion.aspx.cs" Inherits="proyectoFinal.listarCalificacion" MasterPageFile="~/menuUsuario.Master" %>


<asp:Content ID="formularioListarCalificacion" runat="server" ContentPlaceHolderID="contenidoMenuUsuario">

    <div class="row w-100 h-100 m-0 p-0">
        <div class="col-8 pt-5">
            <asp:GridView ID="gtvListarCitas" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gtvListarCitas_SelectedIndexChanged" OnRowCommand="gtvListarCitas_RowCommand" CssClass="w-100 m-auto text-center p-2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id_cita_medica" HeaderText="Id Cita" />
                    <asp:BoundField DataField="fecha_hora" HeaderText="Fecha/Hora" />
                    <asp:BoundField DataField="id_centro_medico" HeaderText="Centro Medico" />

                    <asp:TemplateField HeaderText="Opcion">
                        <ItemTemplate>
                            <asp:Button ID="btnRegistrar" runat="server" Text="Calificar" CssClass="btn btn-info" />
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
        </div>
        <div class="col-4 pt-5">
            <asp:Panel ID="panelCalificacion" runat="server">

                <div class="card">
                    <div class="card-header">
                        <h4>Calificación</h4>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Label ID="lblid_cita" runat="server" Text="id_cita"></asp:Label>
                            <asp:TextBox ID="txtid_cita" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblcalificacion" runat="server" Text="Calificacion"></asp:Label>
                            <asp:DropDownList ID="ddlCalificacion" runat="server" CssClass="custom-select">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblobservaciones" runat="server" Text="Observaciones"></asp:Label>
                            <asp:TextBox ID="txtobservaciones" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Calificacion" OnClick="btnRegistrar_Click" CssClass="btn btn-success" />
                    </div>
                </div>

            </asp:Panel>
        </div>
    </div>

</asp:Content>
