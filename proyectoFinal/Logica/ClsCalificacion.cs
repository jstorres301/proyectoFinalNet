﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsCalificacion
    {
        OrmHospitalesDataContext db = new OrmHospitalesDataContext();

        public string registrarCalificacion(calificacion c)
        {
            string mensaje;
            try
            {
                db.calificacion.InsertOnSubmit(c);
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
