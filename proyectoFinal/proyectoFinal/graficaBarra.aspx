<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="graficaBarra.aspx.cs" Inherits="proyectoFinal.Reportes" MasterPageFile="~/menuAdministrador.Master" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="formularioGraficoTorta" runat="server" ContentPlaceHolderID="contenidoMenuAdministrador">

    <asp:Chart runat="server" ID="chtGrafico" Visible="False">
        <Series>
            <asp:Series Name="Series1"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

</asp:Content>
