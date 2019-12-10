using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
namespace proyectoFinal
{
    public partial class registrarCalificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClsCalificacion calificacionDAO = new ClsCalificacion();
            calificacion registrarCalificacionDTO = new calificacion();
            registrarCalificacionDTO.calificacion1 = int.Parse(txtcalificacion.Text);
            
            calificacionDAO.registrarCalificacion(registrarCalificacionDTO);
        }
    }
}