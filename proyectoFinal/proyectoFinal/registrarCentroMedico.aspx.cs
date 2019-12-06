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

            

            if (Fulfoto.HasFile)
            {
                string nombre = Fulfoto.FileName;
                string ruta = "~/img/" + nombre;
                Fulfoto.SaveAs(Server.MapPath(ruta));


                ClsCentroMedico CentroMedicoDAO = new ClsCentroMedico();
                centro_medico registrarCentroMedicoDTO = new centro_medico();
                string mensaje;
                registrarCentroMedicoDTO.id_centro_medico = 1;
                registrarCentroMedicoDTO.nombre_centro_medico = txtNombre.Text;
                registrarCentroMedicoDTO.nivel_atencion = txtNivelatencion.Text;
                registrarCentroMedicoDTO.horarios = txtHorarios.Text;
                registrarCentroMedicoDTO.direccion = txtDireccion.Text;
                registrarCentroMedicoDTO.foto = ruta;

                mensaje = CentroMedicoDAO.registrarCentroMedico(registrarCentroMedicoDTO);

            }



        }


    }
}