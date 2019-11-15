using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Web.UI.WebControls;

namespace Logica
{
    public class ClsCentroMedico
    {
        OrmHospitalesDataContext db = new OrmHospitalesDataContext();
        public void consultarPorFiltro(ref GridView gdvTabla,string nivel)
        {
            var consulta = (from centroM in db.centro_medico where centroM.nivel_atencion == nivel select centroM).ToList();
            gdvTabla.DataSource = consulta;
            gdvTabla.DataBind();
        }
    }
}
