#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCargas
// Descripción: Clase de LOGICA DE NEGOCIOS para tabla 'Departamento'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: sábado 11 de abril de 2015, 11:03:29 p.m.
///////////////////////////////////////////////////////////////////////////
#endregion


using System;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using ITCR.AsignacionAutomaticaCargas.Base;
using ITCR.AsignacionAutomaticaCargas.Datos;
//using ITCR.AsignacionAutomaticaCargas.Negocios.wsSeguridad;

namespace ITCR.AsignacionAutomaticaCargas.Negocios
{
    /// <summary>
    /// Propósito: Clase de lógica de negocios para tabla 'Departamento'.
    /// </summary>
    public class cEstadisticaNegocios : cEstadisticaDatos
    {
        #region Declaraciones de miembros de la clase
        private int _COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora;
        private string _ID_USUARIOBitacora, _COD_SEDEBitacora;
        #endregion


        /// <summary>
        /// Propósito: Constructor de la clase.
        /// </summary>
        public cEstadisticaNegocios(int COD_APLICACIONBitacora, string COD_SEDEBitacora, int COD_FUNCIONALIDADBitacora, string ID_USUARIOBitacora)
            : base()
        {
            //asignacion de las propiedades privadas para manejo de bitacoras
            _COD_APLICACIONBitacora = COD_APLICACIONBitacora;
            _COD_SEDEBitacora = COD_SEDEBitacora;
            _COD_FUNCIONALIDADBitacora = COD_FUNCIONALIDADBitacora;
            _ID_USUARIOBitacora = ID_USUARIOBitacora;
        }


       


        /// <summary>
        /// Propósito: Método SeleccionarTodos. Este método va a Hacer un SELECT All de tabla.
        /// </summary>
        /// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
        /// <remarks>
        /// Propiedades actualizadas luego de una llamada exitosa a este método: 
        /// <UL>
        ///		 <LI>CodError</LI>
        /// </UL>
        /// </remarks>
        public override DataTable SeleccionarTodos()
        {
            try
            {
                return base.SeleccionarTodos();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    } //class
} //namespace
