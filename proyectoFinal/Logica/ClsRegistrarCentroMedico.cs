using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsRegistrarCentroMedico
    {
        OrmHospitalesDataContext db = new OrmHospitalesDataContext();

        public string registrarCentroMedico(centro_medico cm)
        {
            string mensaje;
            try
            {
                db.centro_medico.InsertOnSubmit(cm);
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
