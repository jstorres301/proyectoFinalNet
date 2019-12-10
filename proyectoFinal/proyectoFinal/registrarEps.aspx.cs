using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class registrarEps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClsEps EpsDAO = new ClsEps();
            eps registrarEpsDTO = new eps();
            ClsUsuario usuarioDAO = new ClsUsuario();
            usuario registrarUsuarioDTO = new usuario();

            registrarEpsDTO.nit = txtNit.Text;
            registrarEpsDTO.nombre_eps = txtNombreEps.Text;
            registrarEpsDTO.numero_telefono = int.Parse(txtNumeroDeTelefono.Text);
            registrarEpsDTO.direccion = txtDireccion.Text;
            EpsDAO.registrarEps(registrarEpsDTO);
            
            registrarUsuarioDTO.nombres = txtNombreEps.Text;
            registrarUsuarioDTO.primer_apellido = txtNombreEps.Text;
            registrarUsuarioDTO.segundo_apellido = txtNombreEps.Text;
            registrarUsuarioDTO.rol = "Eps";
            registrarUsuarioDTO.numero_cedula = long.Parse(txtCedula.Text);
            registrarUsuarioDTO.nombre_usuario = txtNombreUsuario.Text;
            registrarUsuarioDTO.contrasena = txtContraseña.Text;
            registrarUsuarioDTO.nit_eps = txtNit.Text;
            usuarioDAO.registrarUsuario(registrarUsuarioDTO);
            Response.Redirect("index.aspx", false);
        }
    }
}