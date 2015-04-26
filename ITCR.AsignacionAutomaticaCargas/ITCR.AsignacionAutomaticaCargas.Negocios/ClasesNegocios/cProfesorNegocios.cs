#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCargas
// Descripción: Clase de LOGICA DE NEGOCIOS para tabla 'Profesor'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: jueves 23 de abril de 2015, 10:09:25 p.m.
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
	/// Propósito: Clase de lógica de negocios para tabla 'Profesor'.
	/// </summary>
	public class cProfesorNegocios : cProfesorDatos
	{
		#region Declaraciones de miembros de la clase
		private int				_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora;
		private string			_ID_USUARIOBitacora, _COD_SEDEBitacora;
		#endregion


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cProfesorNegocios(int COD_APLICACIONBitacora, string COD_SEDEBitacora, int COD_FUNCIONALIDADBitacora, string ID_USUARIOBitacora) : base()
		{
			//asignacion de las propiedades privadas para manejo de bitacoras
			_COD_APLICACIONBitacora = COD_APLICACIONBitacora;
			_COD_SEDEBitacora = COD_SEDEBitacora;
			_COD_FUNCIONALIDADBitacora = COD_FUNCIONALIDADBitacora;
			_ID_USUARIOBitacora = ID_USUARIOBitacora;
		}


		/// <summary>
		/// Propósito: Método Insertar de la clase de negocios. Este método inserta una fila nueva en la base de datos.
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
			string operacion;
			//SeguridadSoapClient wsseg = new SeguridadSoapClient();
			try
			{
				//Construir aqui el string a guardar en la bitacora.
				operacion = "Insertar cProfesor;"
					+"Fk_idDepartamento:"+Fk_idDepartamento.ToString()+";"
					+"Fk_idJornada:"+Fk_idJornada.ToString()+";"
					+"Fk_idtipoProfesor:"+Fk_idtipoProfesor.ToString()+";"
					+"FechaIngreso:"+FechaIngreso.ToString()+";"
					+"Fk_idGradoAcademico:"+Fk_idGradoAcademico.ToString()+";"
					+"Notas:"+Notas.ToString()+";"
					+"Fk_idUsuario:"+Fk_idUsuario.ToString()+";"
					+"Eliminado:"+Eliminado.ToString()+";";
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.UsoFuncionalidad, _ID_USUARIOBitacora,operacion);
				return base.Insertar();
			}
			catch (Exception ex)
			{
				//Construir el string a guardar en la bitácora en caso de error.
				operacion = "Error Insertar cProfesor;"+ex.Message;
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.Error, _ID_USUARIOBitacora,operacion);
				throw ex;
			}
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
			string operacion;
			//SeguridadSoapClient wsseg = new SeguridadSoapClient();
			try
			{
				//Construir aqui el string a guardar en la bitacora.
				operacion = "Actualizar cProfesor;"
					+"IdProfesor:"+IdProfesor.ToString()+";"
					+"Fk_idDepartamento:"+Fk_idDepartamento.ToString()+";"
					+"Fk_idJornada:"+Fk_idJornada.ToString()+";"
					+"Fk_idtipoProfesor:"+Fk_idtipoProfesor.ToString()+";"
					+"FechaIngreso:"+FechaIngreso.ToString()+";"
					+"Fk_idGradoAcademico:"+Fk_idGradoAcademico.ToString()+";"
					+"Notas:"+Notas.ToString()+";"
					+"Fk_idUsuario:"+Fk_idUsuario.ToString()+";"
					+"Eliminado:"+Eliminado.ToString()+";";
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.UsoFuncionalidad, _ID_USUARIOBitacora,operacion);
				return base.Actualizar();
			}
			catch (Exception ex)
			{
				//Construir el string a guardar en la bitácora en caso de error.
				operacion = "Error Actualizar cProfesor;"+ex.Message;
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.Error, _ID_USUARIOBitacora,operacion);
				throw ex;
			}
		}


		/// <summary>
		/// Propósito: Método Eliminar de lógica de negocios. Borra una fila en la base de datos, basado en la llave primaria.
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
			string operacion;
			//SeguridadSoapClient wsseg = new SeguridadSoapClient();
			try
			{
				//Construir aqui el string a guardar en la bitacora.
				operacion = "Eliminar cProfesor;"
					+"IdProfesor:"+IdProfesor.ToString()+";";
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.UsoFuncionalidad, _ID_USUARIOBitacora,operacion);
				return base.Eliminar();
			}
			catch (Exception ex)
			{
				//Construir el string a guardar en la bitácora en caso de error.
				operacion = "Error Eliminar cProfesor;"+ex.Message;
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.Error, _ID_USUARIOBitacora,operacion);
				throw ex;
			}
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
			try
			{
				return base.SeleccionarUno();
			}
			catch (Exception ex)
			{
				throw ex;
			}
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


		/// <summary>
		/// Propósito: Método Buscar. Este método va a Hacer un SELECT LIKE de tabla.
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
			try
			{
				return base.Buscar();
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}

        public DataTable BuscarTodos()
        {
            try
            {
                return base.BuscarTodos();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
	} //class
} //namespace
