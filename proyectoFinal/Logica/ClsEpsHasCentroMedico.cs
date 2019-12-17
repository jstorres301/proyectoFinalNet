using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsEpsHasCentroMedico
    {
        OrmHospitalesDataContext db = new OrmHospitalesDataContext();

        public string afiliar(eps_has_centromedico epc)
        {
            try
            {
                db.eps_has_centromedico.InsertOnSubmit(epc);
                return "Se ha hecho bien el registro";
            }
            catch (Exception ex)
            {
                return ""+ex;
            }
        }
    }
}
