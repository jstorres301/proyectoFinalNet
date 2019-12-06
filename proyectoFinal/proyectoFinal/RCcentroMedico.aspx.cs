using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class RCcentroMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClsCentroMedico centroMedicoDao = new ClsCentroMedico();
                centroMedicoDao.consultar(ref glvCentrosMedicos);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (archivo.HasFile)
            {
                string nombre = archivo.FileName;
                string ruta = "~/img/" + nombre;
                archivo.SaveAs(Server.MapPath(ruta));

                ClsCentroMedico centroMedicoDAO = new ClsCentroMedico();
                centro_medico registrarCentroMedicoDTO = new centro_medico();
                registrarCentroMedicoDTO.id_centro_medico = 1;
                registrarCentroMedicoDTO.nombre_centro_medico = txtNombreCentro.Text;
                registrarCentroMedicoDTO.nivel_atencion = ddlNivel.Text;
                registrarCentroMedicoDTO.horarios = ddlHorarios.Text;
                registrarCentroMedicoDTO.direccion = txtDireccion.Text;
                registrarCentroMedicoDTO.foto = ruta;
                lblMensaje.Text = centroMedicoDAO.registrarCentroMedico(registrarCentroMedicoDTO);
            }
        }
    }
}