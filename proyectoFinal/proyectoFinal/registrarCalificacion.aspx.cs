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
            string mensaje;
            registrarCalificacionDTO.id_calificacion = 1;
            registrarCalificacionDTO.calificacion1 = txtcalificacion.Text;
            registrarCalificacionDTO.usuario_cedula = int.Parse(txtusuario_cedula.Text);
            registrarCalificacionDTO.id_cita = int.Parse(txtid_cita.Text);
            mensaje = calificacionDAO.registrarCalificacion(registrarCalificacionDTO);
            btnRegistrar.Text = mensaje;
        }
    }
}