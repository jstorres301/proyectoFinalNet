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

        public void afiliar(eps_has_centromedico epc)
        {
            db.eps_has_centromedico.InsertOnSubmit(epc);
        }
    }
}
