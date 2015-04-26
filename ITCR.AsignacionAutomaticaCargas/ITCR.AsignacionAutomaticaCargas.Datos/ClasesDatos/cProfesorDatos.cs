#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCargas
// Descripción: Clase de acceso a datos para tabla 'Profesor'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: jueves 23 de abril de 2015, 10:09:25 p.m.
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
	/// Propósito: Clase de acceso a datos derivada para tabla 'Profesor'.
	/// </summary>
	public class cProfesorDatos : cProfesorBase
	{


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cProfesorDatos() : base()
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
		///		 <LI>Fk_idDepartamento</LI>
		///		 <LI>Fk_idJornada</LI>
		///		 <LI>Fk_idtipoProfesor</LI>
		///		 <LI>FechaIngreso. May be SqlDateTime.Null</LI>
		///		 <LI>Fk_idGradoAcademico. May be SqlInt32.Null</LI>
		///		 <LI>Notas. May be SqlString.Null</LI>
		///		 <LI>Fk_idUsuario</LI>
		///		 <LI>Eliminado</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>IdProfesor</LI>
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
		///		 <LI>IdProfesor</LI>
		///		 <LI>Fk_idDepartamento</LI>
		///		 <LI>Fk_idJornada</LI>
		///		 <LI>Fk_idtipoProfesor</LI>
		///		 <LI>FechaIngreso. May be SqlDateTime.Null</LI>
		///		 <LI>Fk_idGradoAcademico. May be SqlInt32.Null</LI>
		///		 <LI>Notas. May be SqlString.Null</LI>
		///		 <LI>Fk_idUsuario</LI>
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
		///		 <LI>IdProfesor</LI>
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
		///		 <LI>IdProfesor</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		///		 <LI>IdProfesor</LI>
		///		 <LI>Fk_idDepartamento</LI>
		///		 <LI>Fk_idJornada</LI>
		///		 <LI>Fk_idtipoProfesor</LI>
		///		 <LI>FechaIngreso</LI>
		///		 <LI>Fk_idGradoAcademico</LI>
		///		 <LI>Notas</LI>
		///		 <LI>Fk_idUsuario</LI>
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
		///		 <LI>IdProfesor</LI>
		///		 <LI>Fk_idDepartamento</LI>
		///		 <LI>Fk_idJornada</LI>
		///		 <LI>Fk_idtipoProfesor</LI>
		///		 <LI>FechaIngreso. May be SqlDateTime.Null</LI>
		///		 <LI>Fk_idGradoAcademico. May be SqlInt32.Null</LI>
		///		 <LI>Notas. May be SqlString.Null</LI>
		///		 <LI>Fk_idUsuario</LI>
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

        public DataTable BuscarTodos()
        {
            //TODO: agregar % para busqueda de campos string (varchar, etc.) con LIKE (el procedimiento ya lo hace), así:
            //if (!base.DescripcionCF.IsNull) {
            //    base.DescripcionCF = "{0}" + base.DescripcionCF + "{0}"; }
            return base.BuscarTodos();
        }
	} //class
} //namespace
