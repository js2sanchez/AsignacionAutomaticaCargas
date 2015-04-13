#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCursos
// Descripción: Clase Connection Provider para compartir la conexión a la base de datos 
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: domingo 15 de marzo de 2015, 04:22:33 p.m.
// Esta clase implementa IDisposable.
///////////////////////////////////////////////////////////////////////////
#endregion


using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace ITCR.AsignacionAutomaticaCargas.Base
{
	/// <summary>
	/// Propósito: provee un objeto SqlConnection que puede ser compartido entre objetos de la capa de acceso a datos
	/// para proveer una manera de implementar transacciones ADO.NET transaction sin la complicación de los objetos SqlConnection
	/// en una capa superior.
	/// </summary>
	public class cProveedorConexion : IDisposable
	{
		#region Declaración de Miembros de la clase
			private	SqlConnection		_dBConnection;
			private	bool				_isTransactionPending, _esDisposed;
			private	SqlTransaction		_currentTransaction;
			private	ArrayList			_savePoints;
		#endregion


		public cProveedorConexion()
		{
			// Inicializar la clase
			InitClass();
		}


		/// <summary>
		/// Propósito: Implementa el método IDispose.
		/// </summary>
		public void Dispose()
		{
			Dispose(true);
			GC.SuppressFinalize(this);
		}


		/// <summary>
		/// Propósito: Implementa la funcionalidad del método Dispose.
		/// </summary>
		protected virtual void Dispose(bool isDisposing)
		{
			// Verificar si Dispose ya ha sido llamado.
			if(!_esDisposed)
			{
				if(isDisposing)
				{
					// Hacer Dispose de recursos administrados.
					if(_currentTransaction != null)
					{
						_currentTransaction.Dispose();
						_currentTransaction = null;
					}
					if(_dBConnection != null)
					{
						// cerrar la conexión va a hacer rollback de cualquier transacción pendiente
						_dBConnection.Close();
						_dBConnection.Dispose();
						_dBConnection = null;
					}
				}
			}
			_esDisposed = true;
		}


		/// <summary>
		/// Propósito: Inicializa miembros de la clase.
		/// </summary>
		private void InitClass()
		{
			// crear todos los objetos e inicializar otros miembros.
			_dBConnection = new SqlConnection();
			AppSettingsReader _configReader = new AppSettingsReader();

			// Asignar el connection string del objeto sqlconnection
			_dBConnection.ConnectionString = 
						_configReader.GetValue("Main.StringConexion", typeof(string)).ToString();
			_esDisposed = false;
			_currentTransaction = null;
			_isTransactionPending = false;
			_savePoints = new ArrayList();
		}


		/// <summary>
		/// Propósito: abre el objeto connection.
		/// </summary>
		/// <returns>true, si tuvo éxito, o sino genera una Exception.</returns>
		public bool OpenConnection()
		{
			try
			{
				if((_dBConnection.State & ConnectionState.Open) > 0)
				{
					// it's already open.
					throw new Exception("OpenConnection::La conexión ya está abierta.");
				}
				_dBConnection.Open();
				_isTransactionPending = false;
				return true;
			}
			catch(Exception ex)
			{
				// bubble exception
				throw ex;
			}
		}


		/// <summary>
		/// Propósito: inicia una nueva transacción ADO.NET usando el objeto connection ya abierto para esta clase.
		/// </summary>
		/// <param name="transactionName">Nombre de la transacción a iniciar</param>
		/// <returns>true, si la transacción inicia correctamente, sino genera una Exception</returns>
		public bool BeginTransaction(string transactionName)
		{
			try
			{
				if(_isTransactionPending)
				{
					// no se permiten transacciones anidadas.
					throw new Exception("BeginTransaction::Hay otra transacción pendiente. No se permite el anidamiento");
				}
				if((_dBConnection.State & ConnectionState.Open) == 0)
				{
					// no hay conexión abierta
					throw new Exception("BeginTransaction::La conexión no está abierta.");
				}
				// iniciar la transacción y guardar el objeto Transaction.
				_currentTransaction = _dBConnection.BeginTransaction(IsolationLevel.ReadCommitted, transactionName);
				_isTransactionPending = true;
				_savePoints.Clear();
				return true;
			}
			catch(Exception ex)
			{
				// bubble error
				throw ex;
			}
		}


		/// <summary>
		/// Propósito: hace commit a una transacción pendiente en el objeto Connection de esta clase.
		/// </summary>
		/// <returns>true, si el commit fue exitoso, sino genera una Exception</returns>
		public bool CommitTransaction()
		{
			try
			{
				if(!_isTransactionPending)
				{
					// No hay una transacción pendiente
					throw new Exception("CommitTransaction::No hay una transacción pendiente.");
				}
				if((_dBConnection.State & ConnectionState.Open) == 0)
				{
					// no hay conexión abierta
					throw new Exception("CommitTransaction::La conexión no está abierta.");
				}
				// commit the transaction
				_currentTransaction.Commit();
				_isTransactionPending = false;
				_currentTransaction.Dispose();
				_currentTransaction = null;
				_savePoints.Clear();
				return true;
			}
			catch(Exception ex)
			{
				// bubble error
				throw ex;
			}
		}


		/// <summary>
		/// Propósito: hace rollback a una transaccion pendiente en el objeto conexión abierto de la clase, 
		/// o hace rollback hasta el savepoint con el nombre indicado. Los savepoints se crean con SaveTransaction().
		/// </summary>
		/// <param name="transactionToRollback">Nombre de la transacción a hacer roll back. Puede ser el nombre de un savepoint</param>
		/// <returns>true, si el rollback tuvo éxito, sino genera una Exception</returns>
		public bool RollbackTransaction(string transactionToRollback)
		{
			try
			{
				if(!_isTransactionPending)
				{
					// No hay una transacción pendiente
					throw new Exception("RollbackTransaction::No hay una transacción pendiente.");
				}
				if((_dBConnection.State & ConnectionState.Open) == 0)
				{
					// no hay conexión abierta
					throw new Exception("RollbackTransaction::La conexión no está abierta.");
				}
				// rollback the transaction
				_currentTransaction.Rollback(transactionToRollback);
				// si este no era un savepoint, se le hizo rollback a la transacción completa, entonces
				// cse puede limpiar.
				if(!_savePoints.Contains(transactionToRollback))
				{
					// it's not a savepoint
					_isTransactionPending = false;
					_currentTransaction.Dispose();
					_currentTransaction = null;
					_savePoints.Clear();
				}
				return true;
			}
			catch(Exception ex)
			{
				// bubble error
				throw ex;
			}
		}


		/// <summary>
		/// Propósito: Guarda una transacción pendiente en la conexión abierta para esta clase hasta un savepoint
		/// con el nombre dado.
		/// Cuando se envía un rollback, quien llama puede hacer rollback hasta este punto o a la transacción completa.
		/// </summary>
		/// <param name="savePointName">Nombre del savepoint a guardar dentro de la transacción actual.</param>
		/// <returns>true, si el save fue exitoso, sino genera una Exception</returns>
		public bool SaveTransaction(string savePointName)
		{
			try
			{
				if(!_isTransactionPending)
				{
					// No hay una transacción pendiente
					throw new Exception("SaveTransaction::No hay una transacción pendiente.");
				}
				if((_dBConnection.State & ConnectionState.Open) == 0)
				{
					// no hay conexión abierta
					throw new Exception("SaveTransaction::La conexión no está abierta.");
				}
				// save the transaction
				_currentTransaction.Save(savePointName);
				// Store the savepoint in the list.
				_savePoints.Add(savePointName);
				return true;
			}
			catch(Exception ex)
			{
				// bubble error
				throw ex;
			}
		}


		/// <summary>
		/// Propósito: Cierra la conexión abierta. Dependiendo de bCommitPendingTransactions, se le hace
		/// commit a la transacción pendiente, o es abortada. 
		/// </summary>
		/// <param name="commitPendingTransaction">Bandera que indica qué hacer cuando una transacción aún está pendiente. True
		/// hace commit a la transacción actual, false le hace rollback.</param>
		/// <returns>true, si el cierre fue exitoso, false if connection was already closed, sino genera una Exception cuando
		/// ocurre un error</returns>
		public bool CloseConnection(bool commitPendingTransaction)
		{
			try
			{
				if((_dBConnection.State & ConnectionState.Open) == 0)
				{
					// no hay conexión abierta
					return false;
				}
				if(_isTransactionPending)
				{
					if(commitPendingTransaction)
					{
						// hacer commit a la transacción pendiente
						_currentTransaction.Commit();
					}
					else
					{
						// hacer rollback a la transacción pendiente
						_currentTransaction.Rollback();
					}
					_isTransactionPending = false;
					_currentTransaction.Dispose();
					_currentTransaction = null;
					_savePoints.Clear();
				}
				// cierra la conexión
				_dBConnection.Close();
				return true;
			}
			catch(Exception ex)
			{
				// bubble error
				throw ex;
			}
		}


		#region Declaración de propiedades de la clase
		public SqlTransaction CurrentTransaction
		{
			get
			{
				return _currentTransaction;
			}
		}


		public bool IsTransactionPending
		{
			get
			{
				return _isTransactionPending;
			}
		}


		public SqlConnection DBConnection
		{
			get
			{
				return _dBConnection;
			}
		}
		#endregion
	}
}
