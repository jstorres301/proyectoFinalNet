using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class registrarCitaMedica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClsCitaMedica citaMedicaDAO = new ClsCitaMedica();
            cita_medica registrarcitaMedicaDTO = new cita_medica();
            string mensaje;
            registrarcitaMedicaDTO.id_cita = 1;
            registrarcitaMedicaDTO.fecha_hora = DateTime.Parse(txtFecha_hora.Text);
            registrarcitaMedicaDTO.centro_medico = int.Parse(txtCentro_Medico.Text);
            registrarcitaMedicaDTO.usuario_cedula = long.Parse(txtUsuario_Cedula.Text);
            
            mensaje = citaMedicaDAO.registrarCitaMedica(registrarcitaMedicaDTO);
            btnRegistrar.Text = mensaje;
        }
    }
}