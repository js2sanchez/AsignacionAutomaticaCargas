#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCargas
// Descripción: Clase de acceso a datos para tabla 'Grupo'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: sábado 11 de abril de 2015, 11:03:30 p.m.
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
	/// Propósito: Clase de acceso a datos derivada para tabla 'Grupo'.
	/// </summary>
	public class cGrupoDatos : cGrupoBase
	{


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cGrupoDatos() : base()
		{
			// Agregar código aquí.
		}


		/// <summary>
		/// Propósito: Método Insertar. Este método inserta una fila nueva en la base de datos.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idCurso</LI>
		///		 <LI>Fk_idFranjaHoraria</LI>
		///		 <LI>Fk_idProfesor. May be SqlInt32.Null</LI>
		///		 <LI>Fk_idSede</LI>
		///		 <LI>Fk_idPeriodo</LI>
		///		 <LI>NumeroGrupo</LI>
		///		 <LI>Fk_idDepartamento</LI>
		///		 <LI>Estado. May be SqlInt32.Null</LI>
		///		 <LI>Eliminado</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>IdGrupo</LI>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Insertar()
		{
			return base.Insertar();
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
			return base.SeleccionarTodos();
		}


		/// <summary>
		/// Propósito: Método Buscar. Este método va a Hacer un SELECT de tabla.
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>IdGrupo</LI>
		///		 <LI>Fk_idCurso</LI>
		///		 <LI>Fk_idFranjaHoraria</LI>
		///		 <LI>Fk_idProfesor. May be SqlInt32.Null</LI>
		///		 <LI>Fk_idSede</LI>
		///		 <LI>Fk_idPeriodo</LI>
		///		 <LI>NumeroGrupo</LI>
		///		 <LI>Fk_idDepartamento</LI>
		///		 <LI>Estado. May be SqlInt32.Null</LI>
		///		 <LI>Eliminado</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override DataTable Buscar()
		{
			//TODO: agregar % para busqueda de campos string (varchar, etc.) con LIKE (el procedimiento ya lo hace), así:
			//if (!base.DescripcionCF.IsNull) {
				//    base.DescripcionCF = "{0}" + base.DescripcionCF + "{0}"; }
			return base.Buscar();
		}

        public override DataTable SeleccionarUno()
        {
            return base.SeleccionarUno();
        }


	} //class
} //namespace
