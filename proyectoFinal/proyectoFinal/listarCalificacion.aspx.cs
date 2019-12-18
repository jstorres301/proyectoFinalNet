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
                citaMedicaDAO.consultar(ref gtvListarCitas,(long)Session["cedulaLogin"]);
            }
        }

        protected void gtvListarCitas_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void gtvListarCitas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            txtid_cita.Text = gtvListarCitas.Rows[rowIndex].Cells[0].Text;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClsCalificacion calificacionDAO = new ClsCalificacion();
            
            calificacion registrarCalificacionDTO = new calificacion();
            
            registrarCalificacionDTO.calificacion1 = int.Parse(ddlCalificacion.Text);
            if (txtobservaciones.Text != null || txtobservaciones.Text != "")
            {
                registrarCalificacionDTO.observacion = txtobservaciones.Text;
            }
            calificacionDAO.registrarCalificacion(registrarCalificacionDTO);

            cita_medica citaMedicaDTO = new cita_medica();
            ClsCitaMedica citaMedicaDAO = new ClsCitaMedica();
            citaMedicaDTO.id_cita_medica = int.Parse(txtid_cita.Text);
            citaMedicaDTO.id_calificacion = registrarCalificacionDTO.id_calificacion;
            citaMedicaDAO.actualizar(citaMedicaDTO);
            txtid_cita.Text = "";
            txtobservaciones.Text = "";
            citaMedicaDAO.consultar(ref gtvListarCitas, (long)Session["cedulaLogin"]);
        }
    }
}