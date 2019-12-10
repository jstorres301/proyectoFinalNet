<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarEps.aspx.cs" Inherits="proyectoFinal.registrarEps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="w-100 h-100 m-0 p-0" style="background: #7AABCB;">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body class="w-100 h-100 m-0 p-0 bg-transparent font-italic">
    <form id="frmRegistrarEps" runat="server" class="row w-100 h-100 m-0 p-0">
        <div class="col-4">
        </div>
        <div class="col-4 was-validated mt-5">
            <div class="card">
                <div class="card-header">
                    <h2 class="text-center">
                        Registrar Eps
                    </h2>
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
                        <h5>
                            <asp:Label ID="lblNit" runat="server" Text="Nit:"></asp:Label></h5>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-nit" title="Nit"><i class="far fa-address-card"></i></span>
                            </div>
                            <asp:TextBox ID="txtNit" runat="server" CssClass="form-control" placeholder="Escribe el nit de tu eps..." aria-label="Escribe el nit de tu eps..." aria-describedby="icono-nit" required></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <h5>
                            <asp:Label ID="lblNombreEps" runat="server" Text="Nombre de la Eps:"></asp:Label></h5>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-Neps" title="Nombre de la eps"><i class="fas fa-building"></i></span>
                            </div>
                            <asp:TextBox ID="txtNombreEps" runat="server" CssClass="form-control" placeholder="Escribe el nombre de tu eps..." aria-label="Escribe el nombre de tu eps..." aria-describedby="icono-Neps" required></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <h5>
                            <asp:Label ID="lblNumeroDeTelefono" runat="server" Text="Numero de telefono:"></asp:Label></h5>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-telefono" title="Numero de telefono"><i class="fas fa-phone-alt"></i></span>
                            </div>
                            <asp:TextBox ID="txtNumeroDeTelefono" runat="server" CssClass="form-control" placeholder="Escribe el numero de telefono..." aria-label="Escribe el numero de telefono..." aria-describedby="icono-telefono" required></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <h5>
                            <asp:Label ID="lblDireccion" runat="server" Text="Direccion:"></asp:Label></h5>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-direccion" title="Direccion"><i class="fas fa-map-marked-alt"></i></span>
                            </div>
                            <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Escribe la direccion donde esta tu eps..." aria-label="Escribe la direccion donde esta tu eps..." aria-describedby="icono-telefono" required></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <h5>
                            <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre de usuario:"></asp:Label></h5>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-Nusuario" title="Nombre de Usuario"><i class="fas fa-user-astronaut"></i></span>
                            </div>
                            <asp:TextBox ID="txtNombreUsuario" runat="server" type="text" class="form-control" placeholder="Escribe tu nombre de usuario..." aria-label="Escribe tu nombre de usuario..." aria-describedby="icono-Nusuario" required></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <h5>
                            <asp:Label ID="lblContraseña" runat="server" Text="Contraseña:"></asp:Label></h5>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-contraseña" title="Contraseña"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" type="text" class="form-control" placeholder="Escribe tu contraseña..." aria-label="Escribe tu contraseña..." aria-describedby="icono-contraseña" required></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="card-footer">
                    <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-success" Text="Registrar" OnClick="btnRegistrar_Click" />
                </div>
            </div>
        </div>
        <div class="col-4">
        </div>

    </form>
    <script src="https://kit.fontawesome.com/ca52bd6e4f.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
