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
                db.cita_medica .InsertOnSubmit(ct);
                db.SubmitChanges();
                mensaje = "Se ha registrado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error al registrarse" + ex.Message;
            }
            return mensaje;
        }

        public void consultar(ref GridView gtvListarCitas)
        {

            var consulta = (from ctm in db.cita_medica select ctm).ToList();
            gtvListarCitas.DataSource = consulta;
            gtvListarCitas.DataBind();
        }

    }
}
