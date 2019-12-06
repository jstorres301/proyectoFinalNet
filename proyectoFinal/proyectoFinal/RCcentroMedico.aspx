<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RCcentroMedico.aspx.cs" Inherits="proyectoFinal.RCcentroMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="w-100 h-100 m-0 p-0" style="background: #7AABCB;">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrar Convenios</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body class="bg-transparent w-100 h-100 m-0 p-0">
    <form id="form1" runat="server" class="row w-100 h-100 m-0 p-0">
        <div class="col-4">
            <div class="alert alert-dark" role="alert">
                <h3 class="text-center"><asp:Label ID="lblMensaje" runat="server" Text="" CssClass="text-center"></asp:Label></h3>
            </div>
            <div class="card was-validated mt-5">
                <div class="card-header">
                    <h2 class="text-center">Registrar Centro Medico</h2>
                </div>

                <div class="card-body">

                    <div class="form-group">
                        <asp:Label ID="lblNombreCentro" runat="server" Text="Nombre del centro medico"></asp:Label>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-nombre" title="Nombre"><i class="fas fa-align-left"></i></span>
                            </div>
                            <asp:TextBox ID="txtNombreCentro" runat="server" type="text" class="form-control" placeholder="Escribe el nombre del centro medico..." aria-label="Escribe el nombre del centro medico..." aria-describedby="icono-nombre" required></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblDireccion" runat="server" Text="Dirección:"></asp:Label>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-direccion" title="Dirección"><i class="fas fa-map-marked-alt"></i></span>
                            </div>
                            <asp:TextBox ID="txtDireccion" runat="server" type="text" class="form-control" placeholder="Escribe la direccion del centro medico..." aria-label="Escribe la direccion del centro medico..." aria-describedby="icono-direccion" required></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblNivel" runat="server" Text="Nivel de Atención:"></asp:Label>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-nivel" title="Nivel de atención"><i class="fas fa-dice-d20"></i></span>
                            </div>
                            <asp:DropDownList ID="ddlNivel" runat="server" type="text" class="custom-select" aria-label="Selecciona el nivel.." aria-describedby="icono-nivel" required>
                                <asp:ListItem Value="Citas Basicas">Citas Basicas</asp:ListItem>
                                <asp:ListItem Value="Citas Prioritarias">Citas Prioritarias</asp:ListItem>
                                <asp:ListItem Value="Urgencias">Urgencias</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblHorario" runat="server" Text="Horarios de atención:"></asp:Label>
                        <div class="input-group flex-nowrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-horario" title="Horarios de atención"><i class="far fa-clock"></i></span>
                            </div>
                            <asp:DropDownList ID="ddlHorarios" runat="server" type="text" class="custom-select" aria-label="Escribe Horarios de atención..." aria-describedby="icono-horario" required>
                                <asp:ListItem Value="24 Hrs">24 Horas</asp:ListItem>
                                <asp:ListItem Value="6 am - 6 pm">6 am - 6 pm</asp:ListItem>
                                <asp:ListItem Value="6 am - 9 pm">6 am - 9 pm</asp:ListItem>
                                <asp:ListItem Value="8 am - 11 pm">8 am - 11 pm</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblFoto" runat="server" Text="Foto del Centro medico"></asp:Label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="icono-archivo" title="Foto del Centro medico"><i class="fas fa-upload"></i></span>
                            </div>
                            <div class="custom-file">
                                <asp:FileUpload ID="archivo" runat="server" class="custom-file-input" aria-describedby="icono-archivo" onchange="validarArchivo()" required />
                                <label id="texto" class="custom-file-label" for="archivo">Choose file</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="col-4 btn btn-success btn-block" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <div class="col-8">
            <asp:GridView ID="glvCentrosMedicos" runat="server" AutoGenerateColumns="False" CssClass="w-100 mt-5" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id_centro_medico" HeaderText="Id Centro Medico" />
                    <asp:BoundField DataField="nombre_centro_medico" HeaderText="Nombre Centro Medico" />
                    <asp:BoundField DataField="nivel_atencion" HeaderText="Nivel de Atención" />
                    <asp:BoundField DataField="horarios" HeaderText="Horarios de Atención" />
                    <asp:BoundField DataField="direccion" HeaderText="Dirección" />
                    <asp:TemplateField HeaderText="Opciones">
                        <ItemTemplate>
                            <asp:Button runat="server" Text="Afiliar" CssClass="btn btn-sm btn-info btn-block"></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </form>
    <script src="https://kit.fontawesome.com/ca52bd6e4f.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script>
        function inputFile() {
            var imagen = document.getElementById('archivo').value;
            var nombre = imagen.replace(/^.*[\\\/]/, '');
            document.getElementById('texto').textContent = nombre;
        };
        function validarArchivo() {
            var archivo = document.getElementById('archivo');
            var archivoRut = archivo.value;
            var extencionPermitida = /(.jpg|.png)$/i;
            if (!extencionPermitida.exec(archivoRut)) {
                archivo.value = null;
            };
            inputFile();
        };
    </script>
</body>
</html>
