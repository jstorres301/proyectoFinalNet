using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace Logica
{
    public class ClsCitaMedica
    {
        OrmHospitalesDataContext db = new OrmHospitalesDataContext();

        public string registrarCitaMedica(cita_medica ct)
        {
            string mensaje;
            try
            {
                db.cita_medica.InsertOnSubmit(ct);
                db.SubmitChanges();
                mensaje = "Se ha registrado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error al registrarse" + ex.Message;
            }
            return mensaje;
        }

        public void consultar(ref GridView gtvListarCitas,long usu)
        {
            var consulta = (from ctm in db.cita_medica where ctm.usuario_cedula == usu & ctm.id_calificacion == null select ctm).ToList();
            gtvListarCitas.DataSource = consulta;
            gtvListarCitas.DataBind();
        }

        public string actualizar(cita_medica cm)
        {
            string mensaje;
            try
            {
                var consulta = (from cita in db.cita_medica where cita.id_cita_medica == cm.id_cita_medica select cita).FirstOrDefault();
                consulta.id_calificacion = cm.id_calificacion;
                db.SubmitChanges();
                mensaje = "Se ha actualizado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error al actualizar" + ex.Message;
            }
            return mensaje;
        }

        public bool consulta(long usu)
        {
            var consulta = (from ctm in db.cita_medica where ctm.usuario_cedula == usu & ctm.id_calificacion == null select ctm).FirstOrDefault();
            if (consulta == null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
