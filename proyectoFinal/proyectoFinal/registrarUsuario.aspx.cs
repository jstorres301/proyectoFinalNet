using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class registrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClsUsuario usuarioDao = new ClsUsuario();
            usuario usuarioDto = new usuario();
            string mensaje;
            usuarioDto.numero_cedula =  int.Parse(txtCedula.Text);
            usuarioDto.nombres = txtNombres.Text;
            usuarioDto.primer_apellido = txtPrimerApellido.Text;
            usuarioDto.segundo_apellido = txtSegundoApellido.Text ;
            usuarioDto.nombre_usuario = txtNombreUsuario.Text;
            usuarioDto.rol = ddlRol.SelectedValue;
            usuarioDto.contrasena = txtContraseña.Text;
            usuarioDto.nit_eps = ddlEps.SelectedValue;
            mensaje = usuarioDao.registrarUsuario(usuarioDto);
        }
    }
}