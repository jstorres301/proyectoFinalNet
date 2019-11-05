using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            ClsUsuario usuarioDao = new ClsUsuario();
            usuario usuarioLogin = new usuario();
            string nombre = Login.UserName;
            string contrasena = Login.Password;
            usuarioLogin = usuarioDao.login(nombre,contrasena);
            if (usuarioLogin.numero_cedula != null)
            {
                Session["cedulaLogin"] = usuarioLogin.numero_cedula;
                Session["nombreLogin"] = usuarioLogin.nombres + usuarioLogin.primer_apellido + usuarioLogin.segundo_apellido;
                Session["rolLogin"] = usuarioLogin.rol;
                if (usuarioLogin.rol == "Eps")
                {
                    Response.Redirect("menuEps.aspx",false);
                }
                if (usuarioLogin.rol == "administrador")
                {
                    Response.Redirect("menuAdministrador.aspx", false);
                }
                if (usuarioLogin.rol == "Usuario")
                {
                    Response.Redirect("menuUsuario.aspx", false);
                }
            }
            else
            {
                // Aqui va un mensaje al usuario que no se loguea
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("registrarUsuario.aspx",false);
        }
    }
}