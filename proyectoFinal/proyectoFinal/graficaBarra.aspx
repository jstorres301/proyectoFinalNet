<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="graficaBarra.aspx.cs" Inherits="proyectoFinal.Reportes" MasterPageFile="~/menuAdministrador.Master" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="formularioGraficoTorta" runat="server" ContentPlaceHolderID="contenidoMenuAdministrador">

    <div class="row w-100 h-100 m-0 p-0">
        <div class="col-7 mt-5">
            <div class="card m-auto">
                <div class="card-header">
                    <h4 class="text-center">Grafica de barras</h4>
                </div>
                <div class="card-body row w-100 m-0 ">
                    <asp:Calendar ID="Calendar1" runat="server" CssClass="col-6 w-100"></asp:Calendar>
                    <asp:Calendar ID="Calendar2" runat="server" CssClass="col-6 w-100"></asp:Calendar>
                </div>
                <div class="card-footer row w-100 m-0">
                    <div class="col-4">

                    </div>
                    <div class="col-4">
                        <asp:Button ID="Button1" runat="server" Text="Graficar" OnClick="Button1_Click" CssClass="btn btn-success btn-block m-auto" />
                    </div>
                    <div class="col-4">

                    </div>
                </div>
            </div>
        </div>
        <div class="col-5 mt-5 d-flex text-center justify-content-center">
            <asp:Chart runat="server" ID="chtGrafico" Visible="False" CssClass="w-75">
                <Series>
                    <asp:Series Name="Series1"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </div>

    </div>

</asp:Content>
