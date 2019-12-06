<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarCalificacion.aspx.cs" Inherits="proyectoFinal.listarCalificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
