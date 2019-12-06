using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class listarCalificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClsCitaMedica citaMedicaDAO = new ClsCitaMedica();
                citaMedicaDAO.consultar(ref gtvListarCitas);
            }
        }
    }
}