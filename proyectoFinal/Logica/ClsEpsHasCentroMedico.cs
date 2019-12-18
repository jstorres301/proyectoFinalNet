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
                db.SubmitChanges();
                return "Se ha realizado el convenio";
            }
            catch (Exception ex)
            {
                return "Ya te encuentras Afiliado a este centro medico";
            }
        }

        public bool consulta(eps_has_centromedico epc)
        {
            var consulta = (from ep in db.eps_has_centromedico where ep.id_centro_medico == epc.id_centro_medico & ep.nit_eps == epc.nit_eps select ep).FirstOrDefault();
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
