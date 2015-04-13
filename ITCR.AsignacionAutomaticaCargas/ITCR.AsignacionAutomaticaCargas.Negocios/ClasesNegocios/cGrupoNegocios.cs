#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCargas
// Descripción: Clase de LOGICA DE NEGOCIOS para tabla 'Grupo'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: sábado 11 de abril de 2015, 11:03:30 p.m.
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
