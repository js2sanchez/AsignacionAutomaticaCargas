#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Empresa:  Tecnológico de Costa Rica
// Proyecto: AsignacionAutomaticaCargas
// Descripción: Clase de acceso a datos para tabla 'EvaluacionProfesor'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: domingo 10 de mayo de 2015, 06:27:49 p.m.
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
	/// Propósito: Clase de acceso a datos para tabla 'EvaluacionProfesor'.
	/// </summary>
	public class cEvaluacionProfesorBase : cBDInteraccionBase
	{
		#region Declaraciones de miembros de la clase
			private SqlDateTime		_fecha;
			private SqlDecimal		_evaluacion;
			private SqlInt32		_fk_idPeriodo, _fk_idProfesor, _idEvaluacionProfesor;
			private SqlInt16		_eliminado;
		#endregion


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cEvaluacionProfesorBase()
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
		///		 <LI>Evaluacion</LI>
		///		 <LI>Fecha</LI>
		///		 <LI>Fk_idProfesor</LI>
		///		 <LI>Fk_idPeriodo</LI>
		///		 <LI>Eliminado</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>IdEvaluacionProfesor</LI>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Insertar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_EvaluacionProfesor_Insertar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@dcevaluacion", SqlDbType.Decimal, 5, ParameterDirection.Input, false, 5, 2, "", DataRowVersion.Proposed, _evaluacion));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@dafecha", SqlDbType.DateTime, 3, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _fecha));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idProfesor", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idProfesor));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idPeriodo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idPeriodo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@sieliminado", SqlDbType.SmallInt, 2, ParameterDirection.Input, false, 5, 0, "", DataRowVersion.Proposed, _eliminado));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iidEvaluacionProfesor", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _idEvaluacionProfesor));
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
				_idEvaluacionProfesor = Int32.Parse(cmdAEjecutar.Parameters["@iidEvaluacionProfesor"].Value.ToString());
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_EvaluacionProfesor_Insertar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cEvaluacionProfesorBase::Insertar::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Update. Actualiza una fila existente en la base de datos.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>IdEvaluacionProfesor</LI>
		///		 <LI>Evaluacion</LI>
		///		 <LI>Fecha</LI>
		///		 <LI>Fk_idProfesor</LI>
		///		 <LI>Fk_idPeriodo</LI>
		///		 <LI>Eliminado</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Actualizar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_EvaluacionProfesor_Actualizar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iidEvaluacionProfesor", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _idEvaluacionProfesor));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@dcevaluacion", SqlDbType.Decimal, 5, ParameterDirection.Input, false, 5, 2, "", DataRowVersion.Proposed, _evaluacion));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@dafecha", SqlDbType.DateTime, 3, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _fecha));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idProfesor", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idProfesor));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idPeriodo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idPeriodo));
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
				_filasAfectadas = cmdAEjecutar.ExecuteNonQuery();
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_EvaluacionProfesor_Actualizar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cEvaluacionProfesorBase::Actualizar::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Eliminar. Borra una fila en la base de datos, basado en la llave primaria.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>IdEvaluacionProfesor</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Eliminar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_EvaluacionProfesor_Eliminar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iidEvaluacionProfesor", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _idEvaluacionProfesor));
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
					throw new Exception("Procedimiento Almacenado 'pr_EvaluacionProfesor_Eliminar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cEvaluacionProfesorBase::Eliminar::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método SELECT. Este método hace Select de una fila existente en la base de datos, basado en la llave primaria.
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>IdEvaluacionProfesor</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		///		 <LI>IdEvaluacionProfesor</LI>
		///		 <LI>Evaluacion</LI>
		///		 <LI>Fecha</LI>
		///		 <LI>Fk_idProfesor</LI>
		///		 <LI>Fk_idPeriodo</LI>
		///		 <LI>Eliminado</LI>
		/// </UL>
		/// Llena todas las propiedades que corresponden al campo en tabla con el valor de la fila seleccionada.
		/// </remarks>
		public override DataTable SeleccionarUno()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_EvaluacionProfesor_SeleccionarUno]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("EvaluacionProfesor");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iidEvaluacionProfesor", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _idEvaluacionProfesor));
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
					throw new Exception("Procedimiento Almacenado 'pr_EvaluacionProfesor_SeleccionarUno' reportó el error Código: " + _codError);
				}

				if(toReturn.Rows.Count > 0)
				{
					_idEvaluacionProfesor = (Int32)toReturn.Rows[0]["idEvaluacionProfesor"];
					_evaluacion = (Decimal)toReturn.Rows[0]["evaluacion"];
					_fecha = (DateTime)toReturn.Rows[0]["fecha"];
					_fk_idProfesor = (Int32)toReturn.Rows[0]["fk_idProfesor"];
					_fk_idPeriodo = (Int32)toReturn.Rows[0]["fk_idPeriodo"];
					_eliminado = (Int16)toReturn.Rows[0]["eliminado"];
				}
				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cEvaluacionProfesorBase::SeleccionarUno::Ocurrió un error." + ex.Message, ex);
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
			cmdAEjecutar.CommandText = "dbo.[pr_EvaluacionProfesor_SeleccionarTodos]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("EvaluacionProfesor");
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
					throw new Exception("Procedimiento Almacenado 'pr_EvaluacionProfesor_SeleccionarTodos' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cEvaluacionProfesorBase::SeleccionarTodos::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>IdEvaluacionProfesor</LI>
		///		 <LI>Evaluacion</LI>
		///		 <LI>Fecha</LI>
		///		 <LI>Fk_idProfesor</LI>
		///		 <LI>Fk_idPeriodo</LI>
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
			cmdAEjecutar.CommandText = "dbo.[pr_EvaluacionProfesor_Buscar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("EvaluacionProfesor");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iidEvaluacionProfesor", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _idEvaluacionProfesor));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@dcevaluacion", SqlDbType.Decimal, 5, ParameterDirection.Input, false, 5, 2, "", DataRowVersion.Proposed, _evaluacion));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@dafecha", SqlDbType.DateTime, 3, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _fecha));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idProfesor", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idProfesor));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idPeriodo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idPeriodo));
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
					throw new Exception("Procedimiento Almacenado 'pr_EvaluacionProfesor_Buscar' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cEvaluacionProfesorBase::Buscar::Ocurrió un error." + ex.Message, ex);
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

        public DataTable BuscarTodos()
        {
            SqlCommand cmdAEjecutar = new SqlCommand();
            cmdAEjecutar.CommandText = "dbo.[pr_EvaluacionProfesor_BuscarTodos]";
            cmdAEjecutar.CommandType = CommandType.StoredProcedure;
            DataTable toReturn = new DataTable("EvaluacionProfesor");
            SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

            // Usar el objeto conexión de la clase base
            cmdAEjecutar.Connection = _conexionBD;

            try
            {
                cmdAEjecutar.Parameters.Add(new SqlParameter("@ifk_idPeriodo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fk_idPeriodo));
                cmdAEjecutar.Parameters.Add(new SqlParameter("@sieliminado", SqlDbType.SmallInt, 2, ParameterDirection.Input, false, 5, 0, "", DataRowVersion.Proposed, _eliminado));
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
                    throw new Exception("Procedimiento Almacenado 'pr_EvaluacionProfesor_BuscarTodos' reportó el error Código: " + _codError);
                }

                return toReturn;
            }
            catch (Exception ex)
            {
                // Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
                throw new Exception("cEvaluacionProfesorBase::BuscarTodos::Ocurrió un error." + ex.Message, ex);
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

        public DataTable BuscarUno(String Cedula)
        {
            SqlCommand cmdAEjecutar = new SqlCommand();
            cmdAEjecutar.CommandText = "dbo.[pr_EvaluacionProfesor_BuscarUno]";
            cmdAEjecutar.CommandType = CommandType.StoredProcedure;
            DataTable toReturn = new DataTable("EvaluacionProfesor");
            SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

            // Usar el objeto conexión de la clase base
            cmdAEjecutar.Connection = _conexionBD;

            try
            {
                cmdAEjecutar.Parameters.Add(new SqlParameter("@scedulaIdentidad", SqlDbType.VarChar, 50, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, Cedula));
                cmdAEjecutar.Parameters.Add(new SqlParameter("@sieliminado", SqlDbType.SmallInt, 2, ParameterDirection.Input, false, 5, 0, "", DataRowVersion.Proposed, _eliminado));
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
                    throw new Exception("Procedimiento Almacenado 'pr_EvaluacionProfesor_BuscarUno' reportó el error Código: " + _codError);
                }

                return toReturn;
            }
            catch (Exception ex)
            {
                // Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
                throw new Exception("cEvaluacionProfesorBase::BuscarUno::Ocurrió un error." + ex.Message, ex);
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
		public SqlInt32 IdEvaluacionProfesor
		{
			get
			{
				return _idEvaluacionProfesor;
			}
			set
			{
				SqlInt32 idEvaluacionProfesorTmp = (SqlInt32)value;
				if(idEvaluacionProfesorTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("IdEvaluacionProfesor", "IdEvaluacionProfesor can't be NULL");
				}
				_idEvaluacionProfesor = value;
			}
		}


		public SqlDecimal Evaluacion
		{
			get
			{
				return _evaluacion;
			}
			set
			{
				SqlDecimal evaluacionTmp = (SqlDecimal)value;
				if(evaluacionTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Evaluacion", "Evaluacion can't be NULL");
				}
				_evaluacion = value;
			}
		}


		public SqlDateTime Fecha
		{
			get
			{
				return _fecha;
			}
			set
			{
				SqlDateTime fechaTmp = (SqlDateTime)value;
				if(fechaTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Fecha", "Fecha can't be NULL");
				}
				_fecha = value;
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
				SqlInt32 fk_idProfesorTmp = (SqlInt32)value;
				if(fk_idProfesorTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Fk_idProfesor", "Fk_idProfesor can't be NULL");
				}
				_fk_idProfesor = value;
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
