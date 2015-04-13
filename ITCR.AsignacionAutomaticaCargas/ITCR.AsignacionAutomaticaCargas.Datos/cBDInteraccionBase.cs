//--------------------------------------------------------------------------------------
// Descripcion: Clase base para interaccion con la base de datos                        
// Generada por ITCR Gen v2010Fr4 el: 15/03/2015, 04:22 p.m.
// Dado que esta clase implementa IDisposable, las clases derivadas no deben hacerlo.   
//--------------------------------------------------------------------------------------
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
//using Microsoft.SqlServer.Types;

namespace ITCR.AsignacionAutomaticaCargas.Base
{
	/// <summary>
	/// Propósito: Enums de error usadas la biblioteca.
	/// </summary>
	public enum ITCRError
	{
		AllOk
		// Agregue más aquí (revise comas)
	}


	/// <summary>
	/// Propósito: Interfaz general para las clases de acceso a datos. Contiene solo métodos comunes a todas las clases.
	/// </summary>
	public interface IAccesoADatos
	{
		bool		Insertar();
		bool		Actualizar();
		bool		Eliminar();
		DataTable	SeleccionarUno();
		DataTable	SeleccionarTodos();
		DataTable	Buscar();
	}


	/// <summary>
	/// Propósito: Clases base abstractas para las clases de interaccion con la base de datos.
	/// </summary>
	public abstract class cBDInteraccionBase : IDisposable, IAccesoADatos
	{
		#region Variables de la clase
			protected	SqlConnection			_conexionBD;
			protected	int						_filasAfectadas;
			protected	SqlInt32				_codError;
			protected	bool					_conexionBDEsCreadaLocal;
			protected	cProveedorConexion		_conexionBDProvider;
			private		bool					_esDisposed;
		#endregion


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cBDInteraccionBase()
		{
			// Inicializar los miembros de la clase.
			InitClass();
		}


		/// <summary>
		/// Propósito: Inicializa los miembros de la clase.
		/// </summary>
		private void InitClass()
		{
			// Crea todos los objetos e inicializa otros miembros.
			_conexionBD = new SqlConnection();
			_conexionBDEsCreadaLocal = true;
			_conexionBDProvider = null;
			AppSettingsReader _configReader = new AppSettingsReader();

			// Asignar el connection string del objeto sqlconnection
			_conexionBD.ConnectionString = 
						_configReader.GetValue("Main.StringConexion", typeof(string)).ToString();
			_codError = (int)ITCRError.AllOk;
			_esDisposed = false;
		}


		/// <summary>
		/// Propósito: Implementa el método Dispose de IDispose.
		/// </summary>
		public void Dispose()
		{
			Dispose(true);
			GC.SuppressFinalize(this);
		}


		/// <summary>
		/// Propósito: Implementa la funcionalidad de Dispose.
		/// </summary>
		protected virtual void Dispose(bool isDisposing)
		{
			// Verificar si Dispose ya ha sido llamado.
			if(!_esDisposed)
			{
				if(isDisposing)
				{
					// Hacer Dispose a los recursos administrados.
					if(_conexionBDEsCreadaLocal)
					{
						// El objeto es creado en esta clase, asi que se destruye aqui.
						_conexionBD.Close();
						_conexionBD.Dispose();
						_conexionBDEsCreadaLocal = false;
					}
					_conexionBDProvider = null;
					_conexionBD = null;
				}
			}
			_esDisposed = true;
		}


		/// <summary>
		/// Propósito: Implementa el método IAccesoADatos.Insert().
		/// </summary>
		public virtual bool Insertar()
		{
			// No hay implementación, generar una excepción
			throw new NotImplementedException();
		}


		/// <summary>
		/// Propósito: Implementa el método IAccesoADatos.Eliminar().
		/// </summary>
		public virtual bool Eliminar()
		{
			// No hay implementación, generar una excepción
			throw new NotImplementedException();
		}


		/// <summary>
		/// Propósito: Implementa el método IAccesoADatos.Actualizar().
		/// </summary>
		public virtual bool Actualizar()
		{
			// No hay implementación, generar una excepción
			throw new NotImplementedException();
		}


		/// <summary>
		/// Propósito: Implementa el método IAccesoADatos.SeleccionarUno().
		/// </summary>
		public virtual DataTable SeleccionarUno()
		{
			// No hay implementación, generar una excepción
			throw new NotImplementedException();
		}


		/// <summary>
		/// Propósito: Implementa el método IAccesoADatos.SeleccionarTodos().
		/// </summary>
		public virtual DataTable SeleccionarTodos()
		{
			// No hay implementación, generar una excepción
			throw new NotImplementedException();
		}


		/// <summary>
		/// Propósito: Implementa el método IAccesoADatos.Buscar().
		/// </summary>
		public virtual DataTable Buscar()
		{
			// No hay implementación, generar una excepción
			throw new NotImplementedException();
		}


		#region Declaracion de propiedades de la clase
		public cProveedorConexion ConexionBDProvider
		{
			set
			{
				if(value==null)
				{
					// Invalid value
					throw new ArgumentNullException("ConexionBDProvider", "Se asignó Null a una propiedad que no lo permite.");
				}

				// Un objeto connection provider es pasado a esta clase.
				// Cargar el objeto SqlConnection, si esta, y crear una 
				// referencia a el. Si ya hay un objeto ConexionBD 
				// referenciado por membervar, destruir ese o simplemente 
				// quitar la referencia, basado en la bandera.
				if(_conexionBD!=null)
				{
					// Primero deshacerse del objeto Connection actual. Quien llama es responsable 
					if(_conexionBDEsCreadaLocal)
					{
						// Es un objeto creado localmente, cerrarlo y destruirlo.
						_conexionBD.Close();
						_conexionBD.Dispose();
					}
					// Remove reference.
					_conexionBD = null;
				}
				_conexionBDProvider = (cProveedorConexion)value;
				_conexionBD = _conexionBDProvider.DBConnection;
				_conexionBDEsCreadaLocal = false;
			}
		}


		public SqlInt32 CodError
		{
			get
			{
				return _codError;
			}
		}


		public int FilasAfectadas
		{
			get
			{
				return _filasAfectadas;
			}
		}
		#endregion
	}
}
