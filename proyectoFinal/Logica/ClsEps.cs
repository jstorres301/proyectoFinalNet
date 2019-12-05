using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Web.UI.WebControls;
using Logica;

namespace Logica
{
    public class ClsEps
    {
        OrmHospitalesDataContext db = new OrmHospitalesDataContext();

        public string registrarEps(eps reps)
        {
            string mensaje;
            try
            {
                db.eps.InsertOnSubmit(reps);
                db.SubmitChanges();
                mensaje = "Se ha registrado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error al registrarse" + ex.Message;
            }
            return mensaje;
        }
    }
}
