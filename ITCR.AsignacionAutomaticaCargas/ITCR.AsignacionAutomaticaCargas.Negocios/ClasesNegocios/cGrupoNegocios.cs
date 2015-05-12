#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCargas
// Descripción: Clase de LOGICA DE NEGOCIOS para tabla 'Grupo'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: lunes 11 de mayo de 2015, 10:20:52 p.m.
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
	/// Propósito: Clase de lógica de negocios para tabla 'Grupo'.
	/// </summary>
	public class cGrupoNegocios : cGrupoDatos
	{
		#region Declaraciones de miembros de la clase
		private int				_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora;
		private string			_ID_USUARIOBitacora, _COD_SEDEBitacora;
		#endregion


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cGrupoNegocios(int COD_APLICACIONBitacora, string COD_SEDEBitacora, int COD_FUNCIONALIDADBitacora, string ID_USUARIOBitacora) : base()
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
			string operacion;
			//SeguridadSoapClient wsseg = new SeguridadSoapClient();
			try
			{
				//Construir aqui el string a guardar en la bitacora.
				operacion = "Insertar cGrupo;"
					+"Fk_idCurso:"+Fk_idCurso.ToString()+";"
					+"Fk_idFranjaHoraria:"+Fk_idFranjaHoraria.ToString()+";"
					+"Fk_idProfesor:"+Fk_idProfesor.ToString()+";"
					+"Fk_idSede:"+Fk_idSede.ToString()+";"
					+"Fk_idPeriodo:"+Fk_idPeriodo.ToString()+";"
					+"NumeroGrupo:"+NumeroGrupo.ToString()+";"
					+"Fk_idDepartamento:"+Fk_idDepartamento.ToString()+";"
					+"Estado:"+Estado.ToString()+";"
					+"Eliminado:"+Eliminado.ToString()+";";
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.UsoFuncionalidad, _ID_USUARIOBitacora,operacion);
				return base.Insertar();
			}
			catch (Exception ex)
			{
				//Construir el string a guardar en la bitácora en caso de error.
				operacion = "Error Insertar cGrupo;"+ex.Message;
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
			string operacion;
			//SeguridadSoapClient wsseg = new SeguridadSoapClient();
			try
			{
				//Construir aqui el string a guardar en la bitacora.
				operacion = "Actualizar cGrupo;"
					+"IdGrupo:"+IdGrupo.ToString()+";"
					+"Fk_idCurso:"+Fk_idCurso.ToString()+";"
					+"Fk_idFranjaHoraria:"+Fk_idFranjaHoraria.ToString()+";"
					+"Fk_idProfesor:"+Fk_idProfesor.ToString()+";"
					+"Fk_idSede:"+Fk_idSede.ToString()+";"
					+"Fk_idPeriodo:"+Fk_idPeriodo.ToString()+";"
					+"NumeroGrupo:"+NumeroGrupo.ToString()+";"
					+"Fk_idDepartamento:"+Fk_idDepartamento.ToString()+";"
					+"Estado:"+Estado.ToString()+";"
					+"Eliminado:"+Eliminado.ToString()+";";
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.UsoFuncionalidad, _ID_USUARIOBitacora,operacion);
				return base.Actualizar();
			}
			catch (Exception ex)
			{
				//Construir el string a guardar en la bitácora en caso de error.
				operacion = "Error Actualizar cGrupo;"+ex.Message;
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
		///		 <LI>IdGrupo</LI>
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
				operacion = "Eliminar cGrupo;"
					+"IdGrupo:"+IdGrupo.ToString()+";";
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.UsoFuncionalidad, _ID_USUARIOBitacora,operacion);
				return base.Eliminar();
			}
			catch (Exception ex)
			{
				//Construir el string a guardar en la bitácora en caso de error.
				operacion = "Error Eliminar cGrupo;"+ex.Message;
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
			try
			{
				return base.Buscar();
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
	} //class
} //namespace
