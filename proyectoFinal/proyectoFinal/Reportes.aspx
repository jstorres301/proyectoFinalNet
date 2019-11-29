<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="proyectoFinal.Reportes" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Chart runat="server" ID="chtGrafico" Visible="False">
            <series><asp:Series Name="Series1"></asp:Series></series>
            <chartareas><asp:ChartArea Name="ChartArea1"></asp:ChartArea></chartareas>
        </asp:Chart>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
