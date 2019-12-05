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
            string mensaje;
            registrarEpsDTO.nit = txtNit.Text;
            registrarEpsDTO.nombre_eps = TxtNombreEps.Text;
            registrarEpsDTO.numero_telefono = int.Parse(TxtNumeroDeTelefono.Text);
            registrarEpsDTO.direccion = TxtDireccion.Text;
            mensaje = EpsDAO.registrarEps(registrarEpsDTO);
            btnRegistrar.Text = mensaje;
        }
    }
}