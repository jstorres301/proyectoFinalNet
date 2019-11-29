using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class registrarCentroMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            ClsRegistrarCentroMedico CentroMedicoDAO = new ClsRegistrarCentroMedico();
            centro_medico registrarCentroMedicoDTO = new centro_medico();
            string mensaje;
            registrarCentroMedicoDTO.id_centro_medico = int.Parse(txtIdcentromedico.Text);
            registrarCentroMedicoDTO.nombre_centro_medico = txtNombredelcentromedico.Text;
            registrarCentroMedicoDTO.nivel_atencion = txtNivelatencion.Text;
            registrarCentroMedicoDTO.horarios = txtHorarios.Text;
            registrarCentroMedicoDTO.foto = txtFoto.Text;
            mensaje = CentroMedicoDAO.registrarCentroMedico(registrarCentroMedicoDTO);
            btnRegistrar.Text = mensaje;
            

        }
    }
}