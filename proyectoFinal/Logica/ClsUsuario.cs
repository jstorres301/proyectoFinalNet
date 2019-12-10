using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Web.UI.WebControls;

namespace Logica
{
    public class ClsUsuario
    {
        OrmHospitalesDataContext db = new OrmHospitalesDataContext();
        public usuario login(string usu,string contra)
        {
            usuario usuarioLogin = new usuario();
            var consultaUsuario = from usuario in db.sp_login(usu, contra) select usuario;
            foreach (var item in consultaUsuario)
            {
                usuarioLogin.nombres = item.nombres;
                usuarioLogin.eps_id_eps = item.eps_id_eps;
                usuarioLogin.numero_cedula = item.numero_cedula;
                usuarioLogin.primer_apellido = item.primer_apellido;
                usuarioLogin.segundo_apellido = item.segundo_apellido;
                usuarioLogin.rol = item.rol;
            }

            return usuarioLogin;
        }
        
        public string registrarUsuario(usuario usu)
        {
            string mensaje;
            try
            {
                db.usuario.InsertOnSubmit(usu);
                db.SubmitChanges();
                mensaje = "Se ha registrado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error al registrarse" + ex.Message;
            }
            return mensaje;
        }

        public string actualizarUsuario(usuario usu)
        {
            string mensaje;
            
            try
            {
                var consulta =( from usua in db.usuario where usua.numero_cedula == usu.numero_cedula select usua).FirstOrDefault();
                consulta.nombres = usu.nombres;
                consulta.primer_apellido = usu.primer_apellido;
                consulta.segundo_apellido = usu.segundo_apellido;
                db.SubmitChanges();
                mensaje = "Se ha actualizado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error al actualizar" + ex.Message;
            }
            return mensaje;
        }

        public usuario consultarId(int cedula)
        {
            var consulta = (from usua in db.usuario where usua.numero_cedula == cedula select usua).FirstOrDefault();
            return consulta;
        }

        public void consultar(ref GridView gdvTabla)
        {
            
            var consulta = (from usua in db.usuario select usua).ToList();
            gdvTabla.DataSource = consulta;
            gdvTabla.DataBind();
        }

        public string eliminarUsuario(int cedula)
        {
            string mensaje;
            try
            {
                var consulta = (from usua in db.usuario where usua.numero_cedula == cedula select usua).FirstOrDefault();
                db.usuario.DeleteOnSubmit(consulta);
                db.SubmitChanges();
                mensaje = "Se elimino el usuario";
            }
            catch (Exception ex)
            {
                mensaje = "Error al eliminar";
                
            }
            return mensaje;
        }
    }
}
