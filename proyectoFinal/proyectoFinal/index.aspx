<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="proyectoFinal.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background: #7AABCB;">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Iniciar sesion</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" /> -->
</head>
<body class="bg-transparent">
    <form id="form1" runat="server" class="was-validated mt-5">
        <div class="row w-100 m-0 p-0 mt-5">
            <div class="col-3 m-0">
            </div>
            <div class="col-6 m-0 mt-5">
                <div class="card text-dark bg-light m-auto mt-5 w-75">
                    <div class="card-header text-center">
                        <h2>Iniciar Sesion</h2>
                    </div>
                    <div class="card-body">

                        <div class="form-group">
                            <label>Nombre de Usuario:</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-secondary text-light" id="icon-usuario"><i class="fas fa-user"></i></span>
                                </div>
                                <asp:TextBox ID="txtUsuario" runat="server" type="text" class="form-control is-invalid" placeholder="Usuario..." aria-label="Usuario" aria-describedby="icon-usuario" required></asp:TextBox>
                            </div>
                            <div class="invalid-feedback">
                                Porfavor llene este campo para iniciar sesion
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Contraseña:</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-secondary text-light" id="icon-contraseña"><i class="fas fa-key"></i></span>
                                </div>
                                <asp:TextBox ID="txtContrasena" runat="server" type="password" class="form-control is-invalid" placeholder="Contraseña..." aria-label="Contraseña" aria-describedby="icon-contraseña" required></asp:TextBox>
                            </div>
                            <div class="invalid-feedback">
                                Porfavor llene este campo para iniciar sesion
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar sesion" CssClass="btn btn-success btn-block col-3 m-auto" OnClick="btnIniciarSesion_Click" />
                    </div>
                </div>
            </div>
            <div class="col-3 m-0">
                <asp:Button ID="btnRegistrarse" CssClass="btn btn-primary btn-lg m-auto" runat="server" OnClick="Button1_Click" Text="Registrarse" />
            </div>
        </div>
    </form>
    <%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">--%>
    <script src="https://kit.fontawesome.com/ca52bd6e4f.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
</body>
</html>
