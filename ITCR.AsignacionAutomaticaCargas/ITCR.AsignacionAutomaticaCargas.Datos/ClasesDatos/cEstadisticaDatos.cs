#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCargas
// Descripción: Clase de acceso a datos para tabla 'Departamento'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: sábado 11 de abril de 2015, 11:03:29 p.m.
// Dado que esta clase implementa IDispose, las clases derivadas no deben hacerlo.
///////////////////////////////////////////////////////////////////////////
#endregion


using System;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using ITCR.AsignacionAutomaticaCargas.Base;

namespace ITCR.AsignacionAutomaticaCargas.Datos
{
    /// <summary>
    /// Propósito: Clase de acceso a datos derivada para tabla 'Departamento'.
    /// </summary>
    public class cEstadisticaDatos : cEstadisticaBase
    {


        /// <summary>
        /// Propósito: Constructor de la clase.
        /// </summary>
        public cEstadisticaDatos()
            : base()
        {
            // Agregar código aquí.
        }



        public override DataTable SeleccionarTodos()
        {
            return base.SeleccionarTodos();
        }


    } //class
} //namespace
