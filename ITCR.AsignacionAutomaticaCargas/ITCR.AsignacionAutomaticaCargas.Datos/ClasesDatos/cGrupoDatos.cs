#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCargas
// Descripción: Clase de acceso a datos para tabla 'Grupo'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: lunes 11 de mayo de 2015, 10:20:52 p.m.
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
		/// Propósito: Método Update. Actualiza una fila existente en la base de datos.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
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
		public override bool Actualizar()
		{
			return base.Actualizar();
		}


		/// <summary>
		/// Propósito: Método Eliminar. Borra una fila en la base de datos, basado en la llave primaria.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>IdGrupo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Eliminar()
		{
			return base.Eliminar();
		}


		/// <summary>
		/// Propósito: Método SELECT. Este método hace Select de una fila existente en la base de datos, basado en la llave primaria.
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>IdGrupo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		///		 <LI>IdGrupo</LI>
		///		 <LI>Fk_idCurso</LI>
		///		 <LI>Fk_idFranjaHoraria</LI>
		///		 <LI>Fk_idProfesor</LI>
		///		 <LI>Fk_idSede</LI>
		///		 <LI>Fk_idPeriodo</LI>
		///		 <LI>NumeroGrupo</LI>
		///		 <LI>Fk_idDepartamento</LI>
		///		 <LI>Estado</LI>
		///		 <LI>Eliminado</LI>
		/// </UL>
		/// Llena todas las propiedades que corresponden al campo en tabla con el valor de la fila seleccionada.
		/// </remarks>
		public override DataTable SeleccionarUno()
		{
			return base.SeleccionarUno();
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
	} //class
} //namespace
