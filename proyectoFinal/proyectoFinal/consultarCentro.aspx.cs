using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class consultarCentro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlNecesidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClsCentroMedico centroMedicoDao = new ClsCentroMedico();
            string nivel = ddlNecesidad.Text;
            centroMedicoDao.consultarPorFiltro(ref grvTablaCentroMedico,nivel);
        }
    }
}