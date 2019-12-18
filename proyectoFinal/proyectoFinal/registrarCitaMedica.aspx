<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarCitaMedica.aspx.cs" Inherits="proyectoFinal.registrarCitaMedica" MasterPageFile="~/menuUsuario.Master" %>

<asp:Content ContentPlaceHolderID="contenidoMenuUsuario" runat="server">
    <div class="row w-100 h-100 m-0 p-0">
        <div class="col-4">
        </div>
        <div class="col-4 mt-5">
            <div class="card m-auto mt-5">
                <div class="card-header">
                    <h4 class="text-center">Registra tu cita medica</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <asp:Label ID="lblFecha_hora" runat="server" Text="Fecha / Hora"></asp:Label>
                        <asp:TextBox ID="txtFecha_hora" runat="server" CssClass="form-control" type="datetime-local"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblCentro_Medico" runat="server" Text="Centro Medico"></asp:Label>
                        <asp:DropDownList ID="ddlCentro" runat="server" CssClass="custom-select" DataSourceID="LinqDataSource1" DataTextField="nombre_centro_medico" DataValueField="id_centro_medico">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Logica.OrmHospitalesDataContext" EntityTypeName="" Select="new (id_centro_medico, nombre_centro_medico)" TableName="centro_medico">
                        </asp:LinqDataSource>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblUsuario_Cedula" runat="server" Text="Cedula Del Usuario"></asp:Label>
                        <asp:TextBox ID="txtUsuario_Cedula" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="card-footer row w-100 m-0">
                    <div class="col-4">

                    </div>
                    <div class="col-4">
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" CssClass="btn btn-success btn-block m-auto" />
                    </div>
                    <div class="col-4">

                    </div>
                </div>
            </div>
        </div>
        <div class="col-4">

        </div>
    </div>
</asp:Content>


