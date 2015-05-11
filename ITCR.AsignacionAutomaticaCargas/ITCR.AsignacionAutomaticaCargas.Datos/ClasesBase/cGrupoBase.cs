#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Empresa:  Tecnológico de Costa Rica
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
//using Microsoft.SqlServer.Types;  //usarlo cuando hay tipos Geometry, Geography, HierarchiId. Está en C:\Program Files\Microsoft SQL Server\100\SDK\Assemblies\Microsoft.SqlServer.Types.dll

namespace ITCR.AsignacionAutomaticaCargas.Base
{
	/// <summary>
	/// Propósito: Clase de acceso a datos para tabla 'Grupo'.
	/// </summary>
	public class cGrupoBase : cBDInteraccionBase
	{
		#region Declaraciones de miembros de la clase
			private SqlInt32		_numeroGrupo, _fk_idPeriodo, _fk_idPeriodoOld, _estado, _fk_idDepartamento, _fk_idDepartamentoOld, _fk_idSede, _fk_idSedeOld, _fk_idCurso, _fk_idCursoOld, _idGrupo, _fk_idProfesor, _fk_idProfesorOld, _fk_idFranjaHoraria, _fk_idFranjaHorariaOld;
			private SqlInt16		_eliminado;
		#endregion


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cGrupoBase()
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
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_Insertar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idCurso", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idCurso));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idFranjaHoraria", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idFranjaHoraria));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idProfesor", SqlDbType.Int, 4, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, _fk_idProfesor));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idSede", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idSede));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idPeriodo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idPeriodo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@inumeroGrupo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _numeroGrupo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idDepartamento", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idDepartamento));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iestado", SqlDbType.Int, 4, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, _estado));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@sieliminado", SqlDbType.SmallInt, 2, ParameterDirection.Input, false, 5, 0, "", DataRowVersion.Proposed, _eliminado));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iidGrupo", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _idGrupo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				_filasAfectadas = cmdAEjecutar.ExecuteNonQuery();
				_idGrupo = Int32.Parse(cmdAEjecutar.Parameters["@iidGrupo"].Value.ToString());
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_Insertar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::Insertar::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'fk_idCurso'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idCurso</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_fk_idCurso_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_EliminarTodo_Con_fk_idCurso_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idCurso", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idCurso));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				_filasAfectadas = cmdAEjecutar.ExecuteNonQuery();
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento almacenado 'pr_Grupo_EliminarTodo_Con_fk_idCurso_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::EliminarTodo_Con_fk_idCurso_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'fk_idFranjaHoraria'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idFranjaHoraria</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_fk_idFranjaHoraria_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_EliminarTodo_Con_fk_idFranjaHoraria_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idFranjaHoraria", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idFranjaHoraria));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				_filasAfectadas = cmdAEjecutar.ExecuteNonQuery();
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento almacenado 'pr_Grupo_EliminarTodo_Con_fk_idFranjaHoraria_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::EliminarTodo_Con_fk_idFranjaHoraria_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'fk_idProfesor'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idProfesor. May be SqlInt32.Null</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_fk_idProfesor_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_EliminarTodo_Con_fk_idProfesor_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idProfesor", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idProfesor));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				_filasAfectadas = cmdAEjecutar.ExecuteNonQuery();
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento almacenado 'pr_Grupo_EliminarTodo_Con_fk_idProfesor_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::EliminarTodo_Con_fk_idProfesor_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'fk_idSede'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idSede</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_fk_idSede_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_EliminarTodo_Con_fk_idSede_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idSede", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idSede));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				_filasAfectadas = cmdAEjecutar.ExecuteNonQuery();
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento almacenado 'pr_Grupo_EliminarTodo_Con_fk_idSede_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::EliminarTodo_Con_fk_idSede_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'fk_idPeriodo'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idPeriodo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_fk_idPeriodo_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_EliminarTodo_Con_fk_idPeriodo_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idPeriodo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idPeriodo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				_filasAfectadas = cmdAEjecutar.ExecuteNonQuery();
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento almacenado 'pr_Grupo_EliminarTodo_Con_fk_idPeriodo_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::EliminarTodo_Con_fk_idPeriodo_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'fk_idDepartamento'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idDepartamento</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_fk_idDepartamento_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_EliminarTodo_Con_fk_idDepartamento_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idDepartamento", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idDepartamento));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				_filasAfectadas = cmdAEjecutar.ExecuteNonQuery();
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento almacenado 'pr_Grupo_EliminarTodo_Con_fk_idDepartamento_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::EliminarTodo_Con_fk_idDepartamento_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método SELECT para un único campo. Este método hace Select de una fila de la base de datos, basado en  un único campo 'idGrupo'
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
		public DataTable SeleccionarUno_Con_idGrupo_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_SeleccionarUno_Con_idGrupo_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("Grupo");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iidGrupo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _idGrupo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				adapter.Fill(toReturn);
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_SeleccionarUno_Con_idGrupo_FK' reportó el error Código: " + _codError);
				}

				if(toReturn.Rows.Count > 0)
				{
					_idGrupo = (Int32)toReturn.Rows[0]["idGrupo"];
					_fk_idCurso = (Int32)toReturn.Rows[0]["fk_idCurso"];
					_fk_idFranjaHoraria = (Int32)toReturn.Rows[0]["fk_idFranjaHoraria"];
					_fk_idProfesor = toReturn.Rows[0]["fk_idProfesor"] == System.DBNull.Value ? SqlInt32.Null : (Int32)toReturn.Rows[0]["fk_idProfesor"];
					_fk_idSede = (Int32)toReturn.Rows[0]["fk_idSede"];
					_fk_idPeriodo = (Int32)toReturn.Rows[0]["fk_idPeriodo"];
					_numeroGrupo = (Int32)toReturn.Rows[0]["numeroGrupo"];
					_fk_idDepartamento = (Int32)toReturn.Rows[0]["fk_idDepartamento"];
					_estado = toReturn.Rows[0]["estado"] == System.DBNull.Value ? SqlInt32.Null : (Int32)toReturn.Rows[0]["estado"];
					_eliminado = (Int16)toReturn.Rows[0]["eliminado"];
				}
				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::SeleccionarUno_Con_idGrupo_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
				adapter.Dispose();
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
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_SeleccionarTodos]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("Grupo");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				adapter.Fill(toReturn);
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_SeleccionarTodos' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::SeleccionarTodos::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
				adapter.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'fk_idCurso'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idCurso</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_fk_idCurso_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_SeleccionarTodos_Con_fk_idCurso_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("Grupo");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idCurso", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idCurso));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				adapter.Fill(toReturn);
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_SeleccionarTodos_Con_fk_idCurso_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::SeleccionarTodos_Con_fk_idCurso_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
				adapter.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'fk_idFranjaHoraria'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idFranjaHoraria</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_fk_idFranjaHoraria_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_SeleccionarTodos_Con_fk_idFranjaHoraria_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("Grupo");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idFranjaHoraria", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idFranjaHoraria));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				adapter.Fill(toReturn);
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_SeleccionarTodos_Con_fk_idFranjaHoraria_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::SeleccionarTodos_Con_fk_idFranjaHoraria_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
				adapter.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'fk_idProfesor'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idProfesor. May be SqlInt32.Null</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_fk_idProfesor_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_SeleccionarTodos_Con_fk_idProfesor_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("Grupo");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idProfesor", SqlDbType.Int, 4, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, _fk_idProfesor));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				adapter.Fill(toReturn);
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_SeleccionarTodos_Con_fk_idProfesor_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::SeleccionarTodos_Con_fk_idProfesor_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
				adapter.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'fk_idSede'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idSede</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_fk_idSede_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_SeleccionarTodos_Con_fk_idSede_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("Grupo");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idSede", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idSede));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				adapter.Fill(toReturn);
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_SeleccionarTodos_Con_fk_idSede_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::SeleccionarTodos_Con_fk_idSede_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
				adapter.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'fk_idPeriodo'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idPeriodo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_fk_idPeriodo_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_SeleccionarTodos_Con_fk_idPeriodo_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("Grupo");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idPeriodo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idPeriodo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				adapter.Fill(toReturn);
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_SeleccionarTodos_Con_fk_idPeriodo_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::SeleccionarTodos_Con_fk_idPeriodo_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
				adapter.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'fk_idDepartamento'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Fk_idDepartamento</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_fk_idDepartamento_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_SeleccionarTodos_Con_fk_idDepartamento_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("Grupo");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idDepartamento", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idDepartamento));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				adapter.Fill(toReturn);
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_SeleccionarTodos_Con_fk_idDepartamento_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::SeleccionarTodos_Con_fk_idDepartamento_FK::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
				adapter.Dispose();
			}
		}


		/// <summary>
		/// Propósito: Método Buscar. Este método hace una busqueda de acuerdo con todos los campos de la tabla.
		/// </summary>
		/// <returns>DataTable si tuvo éxito, sino genera una Exception. </returns>
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
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_Grupo_Buscar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("Grupo");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iidGrupo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _idGrupo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idCurso", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idCurso));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idFranjaHoraria", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idFranjaHoraria));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idProfesor", SqlDbType.Int, 4, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, _fk_idProfesor));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idSede", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idSede));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idPeriodo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idPeriodo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@inumeroGrupo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _numeroGrupo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idDepartamento", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idDepartamento));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iestado", SqlDbType.Int, 4, ParameterDirection.Input, true, 10, 0, "", DataRowVersion.Proposed, _estado));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@sieliminado", SqlDbType.SmallInt, 2, ParameterDirection.Input, false, 5, 0, "", DataRowVersion.Proposed, _eliminado));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

				if(_conexionBDEsCreadaLocal)
				{
					// Abre una conexión.
					_conexionBD.Open();
				}
				else
				{
					if(_conexionBDProvider.IsTransactionPending)
					{
						cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
					}
				}

				// Ejecuta la consulta.
				adapter.Fill(toReturn);
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_Grupo_Buscar' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cGrupoBase::Buscar::Ocurrió un error." + ex.Message, ex);
			}
			finally
			{
				if(_conexionBDEsCreadaLocal)
				{
					// Cierra la conexión.
					_conexionBD.Close();
				}
				cmdAEjecutar.Dispose();
				adapter.Dispose();
			}
		}

        public override DataTable SeleccionarUno()
        {
            SqlCommand cmdAEjecutar = new SqlCommand();
            cmdAEjecutar.CommandText = "dbo.[pr_Grupo_Buscar"; 
            cmdAEjecutar.CommandType = CommandType.StoredProcedure;
            DataTable toReturn = new DataTable("Grupo");
            SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

            // Usar el objeto conexión de la clase base
            cmdAEjecutar.Connection = _conexionBD;

            try
            {
                cmdAEjecutar.Parameters.Add(new SqlParameter("@iidGrupo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _idGrupo));
                cmdAEjecutar.Parameters.Add(new SqlParameter("@iCodError", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _codError));

                if (_conexionBDEsCreadaLocal)
                {
                    // Abre una conexión.
                    _conexionBD.Open();
                }
                else
                {
                    if (_conexionBDProvider.IsTransactionPending)
                    {
                        cmdAEjecutar.Transaction = _conexionBDProvider.CurrentTransaction;
                    }
                }

                // Ejecuta la consulta.
                adapter.Fill(toReturn);
                _codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

                if (_codError != (int)ITCRError.AllOk)
                {
                    // Genera un error.
                    throw new Exception("Procedimiento Almacenado 'pr_Periodo_SeleccionarUno' reportó el error Código: " + _codError);
                }

                if (toReturn.Rows.Count > 0)
                {
                    _idGrupo = (Int32)toReturn.Rows[0]["idGrupo"];
                    _numeroGrupo = (Int32)toReturn.Rows[0]["numeroGrupo"];
                    _fk_idCurso = (Int32)toReturn.Rows[0]["fk_idCurso"];
                    _fk_idFranjaHoraria= (Int32)toReturn.Rows[0]["fk_idFranjaHoraria"];
                    _fk_idProfesor = (Int32)toReturn.Rows[0]["fk_idProfesor"];
                    _fk_idSede = (Int32)toReturn.Rows[0]["fk_idSede"];
                    _fk_idPeriodo = (Int32)toReturn.Rows[0]["fk_idPeriodo"];
                    _fk_idDepartamento = (Int32)toReturn.Rows[0]["fk_idDepartamento"];
                    _estado = (Int32)toReturn.Rows[0]["estado"];
                    _eliminado = toReturn.Rows[0]["eliminado"] == System.DBNull.Value ? SqlInt16.Null : (Int16)toReturn.Rows[0]["eliminado"];
                }
                return toReturn;
            }
            catch (Exception ex)
            {
                // Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
                throw new Exception("cGrupoBase::SeleccionarUno::Ocurrió un error." + ex.Message, ex);
            }
            finally
            {
                if (_conexionBDEsCreadaLocal)
                {
                    // Cierra la conexión.
                    _conexionBD.Close();
                }
                cmdAEjecutar.Dispose();
                adapter.Dispose();
            }
        }



		#region Declaraciones de propiedades de la clase
		public SqlInt32 IdGrupo
		{
			get
			{
				return _idGrupo;
			}
			set
			{
				SqlInt32 idGrupoTmp = (SqlInt32)value;
				if(idGrupoTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("IdGrupo", "IdGrupo can't be NULL");
				}
				_idGrupo = value;
			}
		}


		public SqlInt32 Fk_idCurso
		{
			get
			{
				return _fk_idCurso;
			}
			set
			{
				SqlInt32 fk_idCursoTmp = (SqlInt32)value;
				if(fk_idCursoTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Fk_idCurso", "Fk_idCurso can't be NULL");
				}
				_fk_idCurso = value;
			}
		}
		public SqlInt32 Fk_idCursoOld
		{
			get
			{
				return _fk_idCursoOld;
			}
			set
			{
				SqlInt32 fk_idCursoOldTmp = (SqlInt32)value;
				if(fk_idCursoOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("Fk_idCursoOld", "Fk_idCursoOld can't be NULL");
				}
				_fk_idCursoOld = value;
			}
		}


		public SqlInt32 Fk_idFranjaHoraria
		{
			get
			{
				return _fk_idFranjaHoraria;
			}
			set
			{
				SqlInt32 fk_idFranjaHorariaTmp = (SqlInt32)value;
				if(fk_idFranjaHorariaTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Fk_idFranjaHoraria", "Fk_idFranjaHoraria can't be NULL");
				}
				_fk_idFranjaHoraria = value;
			}
		}
		public SqlInt32 Fk_idFranjaHorariaOld
		{
			get
			{
				return _fk_idFranjaHorariaOld;
			}
			set
			{
				SqlInt32 fk_idFranjaHorariaOldTmp = (SqlInt32)value;
				if(fk_idFranjaHorariaOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("Fk_idFranjaHorariaOld", "Fk_idFranjaHorariaOld can't be NULL");
				}
				_fk_idFranjaHorariaOld = value;
			}
		}


		public SqlInt32 Fk_idProfesor
		{
			get
			{
				return _fk_idProfesor;
			}
			set
			{
				_fk_idProfesor = value;
			}
		}
		public SqlInt32 Fk_idProfesorOld
		{
			get
			{
				return _fk_idProfesorOld;
			}
			set
			{
				_fk_idProfesorOld = value;
			}
		}


		public SqlInt32 Fk_idSede
		{
			get
			{
				return _fk_idSede;
			}
			set
			{
				SqlInt32 fk_idSedeTmp = (SqlInt32)value;
				if(fk_idSedeTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Fk_idSede", "Fk_idSede can't be NULL");
				}
				_fk_idSede = value;
			}
		}
		public SqlInt32 Fk_idSedeOld
		{
			get
			{
				return _fk_idSedeOld;
			}
			set
			{
				SqlInt32 fk_idSedeOldTmp = (SqlInt32)value;
				if(fk_idSedeOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("Fk_idSedeOld", "Fk_idSedeOld can't be NULL");
				}
				_fk_idSedeOld = value;
			}
		}


		public SqlInt32 Fk_idPeriodo
		{
			get
			{
				return _fk_idPeriodo;
			}
			set
			{
				SqlInt32 fk_idPeriodoTmp = (SqlInt32)value;
				if(fk_idPeriodoTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Fk_idPeriodo", "Fk_idPeriodo can't be NULL");
				}
				_fk_idPeriodo = value;
			}
		}
		public SqlInt32 Fk_idPeriodoOld
		{
			get
			{
				return _fk_idPeriodoOld;
			}
			set
			{
				SqlInt32 fk_idPeriodoOldTmp = (SqlInt32)value;
				if(fk_idPeriodoOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("Fk_idPeriodoOld", "Fk_idPeriodoOld can't be NULL");
				}
				_fk_idPeriodoOld = value;
			}
		}


		public SqlInt32 NumeroGrupo
		{
			get
			{
				return _numeroGrupo;
			}
			set
			{
				SqlInt32 numeroGrupoTmp = (SqlInt32)value;
				if(numeroGrupoTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("NumeroGrupo", "NumeroGrupo can't be NULL");
				}
				_numeroGrupo = value;
			}
		}


		public SqlInt32 Fk_idDepartamento
		{
			get
			{
				return _fk_idDepartamento;
			}
			set
			{
				SqlInt32 fk_idDepartamentoTmp = (SqlInt32)value;
				if(fk_idDepartamentoTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Fk_idDepartamento", "Fk_idDepartamento can't be NULL");
				}
				_fk_idDepartamento = value;
			}
		}
		public SqlInt32 Fk_idDepartamentoOld
		{
			get
			{
				return _fk_idDepartamentoOld;
			}
			set
			{
				SqlInt32 fk_idDepartamentoOldTmp = (SqlInt32)value;
				if(fk_idDepartamentoOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("Fk_idDepartamentoOld", "Fk_idDepartamentoOld can't be NULL");
				}
				_fk_idDepartamentoOld = value;
			}
		}


		public SqlInt32 Estado
		{
			get
			{
				return _estado;
			}
			set
			{
				_estado = value;
			}
		}


		public SqlInt16 Eliminado
		{
			get
			{
				return _eliminado;
			}
			set
			{
				SqlInt16 eliminadoTmp = (SqlInt16)value;
				if(eliminadoTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Eliminado", "Eliminado can't be NULL");
				}
				_eliminado = value;
			}
		}
		#endregion
	}
}
