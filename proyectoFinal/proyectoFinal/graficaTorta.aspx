<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="graficaTorta.aspx.cs" Inherits="proyectoFinal.graficaTorta" MasterPageFile="~/menuAdministrador.Master" %>

<asp:Content ID="formularioGraficoTorta" runat="server" ContentPlaceHolderID="contenidoMenuAdministrador">
    <div class="row w-100 h-100 m-0 p-0">
        <div class="col-6 mt-5">
            <div class="card m-auto">
                <div class="card-header">
                    <h4 class="text-center">Grafica de barras</h4>
                </div>
                <div class="card-body row w-100 m-0 ">
                    <asp:DropDownList ID="ddlCentroMedico" runat="server" DataSourceID="LinqDataSource1" DataTextField="nombre_centro_medico" DataValueField="id_centro_medico" CssClass="custom-select text-center"></asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Logica.OrmHospitalesDataContext" EntityTypeName="" Select="new (id_centro_medico, nombre_centro_medico)" TableName="centro_medico">
                    </asp:LinqDataSource>
                </div>
                <div class="card-footer row w-100 m-0">
                    <div class="col-4">
                    </div>
                    <div class="col-4">
                        <asp:Button ID="Button1" runat="server" Text="Graficar" CssClass="btn btn-success btn-block m-auto" OnClick="Button1_Click" />
                    </div>
                    <div class="col-4">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-6 mt-5 d-flex text-center justify-content-center">
            <asp:Chart ID="Chart1" runat="server" Visible="false">
                <Series>
                    <asp:Series Name="Series1" ChartType="Pie"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </div>

    </div>


</asp:Content>
