<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarUsuario.aspx.cs" Inherits="proyectoFinal.registrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background: #7AABCB;">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrar Usuario</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body class="bg-transparent font-italic">
    <form id="form1" runat="server" class="was-validated">
        <div class="row w-100 m-0 p-0 mt-5">
            <div class="col-4 m-0">
            </div>
            <div class="col-4 m-0 mt-3">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center">Registrate</h2>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <h5>
                                <asp:Label ID="lblCedula" runat="server" Text="Numero de cedula:"></asp:Label></h5>
                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="icono-cedula" title="Número de Cedula"><i class="far fa-address-card"></i></span>
                                </div>
                                <asp:TextBox ID="txtCedula" runat="server" type="text" class="form-control" placeholder="Escribe tu número de cedula..." aria-label="Escribe tu Número de Cedula..." aria-describedby="icono-cedula" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <h5><asp:Label ID="lblNombres" runat="server" Text="Nombres:"></asp:Label></h5>
                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="icono-nombres" title="Nombres"><i class="fas fa-indent"></i></span>
                                </div>
                                <asp:TextBox ID="txtNombres" runat="server" type="text" class="form-control" placeholder="Escribe tus nombres..." aria-label="Escribe tus nombres..." aria-describedby="icono-nombres" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <h5><asp:Label ID="lblPrimerApellido" runat="server" Text="Primer Apellido:"></asp:Label></h5>
                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="icono-papellido" title="Primer Apellido"><i class="fas fa-indent"></i></span>
                                </div>
                                <asp:TextBox ID="txtPrimerApellido" runat="server" type="text" class="form-control" placeholder="Escribe tu primer apellido..." aria-label="Escribe tu primer apellido..." aria-describedby="icono-papellido" required></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <h5><asp:Label ID="lblSegundoApellido" runat="server" Text="Segundo Apellido:"></asp:Label></h5>
                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="icono-sapellido" title="Segundo Apellido"><i class="fas fa-indent"></i></span>
                                </div>
                                <asp:TextBox ID="txtSegundoApellido" runat="server" type="text" class="form-control" placeholder="Escribe tu segundo apellido..." aria-label="Escribe tu segundo apellido..." aria-describedby="icono-sapellido"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <h5><asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario"></asp:Label></h5>
                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="icono-Nusuario" title="Nombre de Usuario"><i class="fas fa-user-astronaut"></i></span>
                                </div>
                                <asp:TextBox ID="txtNombreUsuario" runat="server" type="text" class="form-control" placeholder="Escribe tu nombre de usuario..." aria-label="Escribe tu nombre de usuario..." aria-describedby="icono-Nusuario" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <h5><asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label></h5>
                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="icono-contraseña" title="Nombre de Usuario"><i class="fas fa-key"></i></span>
                                </div>
                                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" type="text" class="form-control" placeholder="Escribe tu contraseña..." aria-label="Escribe tu contraseña..." aria-describedby="icono-contraseña" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <h5><asp:Label ID="lblRol" runat="server" Text="Rol"></asp:Label></h5>
                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="icono-rol" title="Rol"><i class="fas fa-dice-d20"></i></span>
                                </div>
                                <asp:DropDownList ID="ddlRol" runat="server" type="text" class="custom-select" aria-label="Escribe tu rol..." aria-describedby="icono-rol" required>
                                    <asp:ListItem Value="Usuario">Usuario</asp:ListItem>
                                    <asp:ListItem Value="administrador">Administrador</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <h5><asp:Label ID="lblEps" runat="server" Text="Eps"></asp:Label></h5>
                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="icono-eps" title="Rol"><i class="fas fa-clinic-medical"></i></span>
                                </div>
                                <asp:DropDownList ID="ddlEps" runat="server" type="text" class="custom-select" aria-label="Selecciona tu eps..." aria-describedby="icono-eps" required DataSourceID="LinqDataSource1" DataTextField="nombre_eps" DataValueField="nit"></asp:DropDownList>
                                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Logica.OrmHospitalesDataContext" EntityTypeName="" Select="new (nombre_eps, nit)" TableName="eps">
                                </asp:LinqDataSource>
                            </div>
                        </div>

                    </div>
                    <div class="card-footer justify-content-center">
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="col-4 btn btn-block btn-success" OnClick="btnRegistrar_Click" />
                    </div>
                </div>
            </div>
            <div class="col-4 m-0">
            </div>
        </div>
    </form>

    <script src="https://kit.fontawesome.com/ca52bd6e4f.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
