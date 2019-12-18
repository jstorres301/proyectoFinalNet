<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="graficaTorta.aspx.cs" Inherits="proyectoFinal.graficaTorta" MasterPageFile="~/menuAdministrador.Master" %>

<asp:Content ID="formularioGraficoTorta" runat="server" ContentPlaceHolderID="contenidoMenuAdministrador">
    <div class="row w-100 h-100 m-0 p-0">
        <div class="col-7 mt-5">
            <div class="card m-auto">
                <div class="card-header">
                    <h4 class="text-center">Grafica de barras</h4>
                </div>
                <div class="card-body row w-100 m-0 ">
                    
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
        <div class="col-5 mt-5 d-flex text-center justify-content-center">
            <asp:Chart ID="Chart1" runat="server">
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
