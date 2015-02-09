#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Empresa:  Tecnológico de Costa Rica
// Proyecto: IntegrateAlTrabajo
// Descripción: Clase de acceso a datos para tabla 'IATAplicantesOferta'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: sábado, 19 de octubre de 2013, 02:05:45 p.m.
// Dado que esta clase implementa IDispose, las clases derivadas no deben hacerlo.
///////////////////////////////////////////////////////////////////////////
#endregion


using System;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
//using Microsoft.SqlServer.Types;  //usarlo cuando hay tipos Geometry, Geography, HierarchiId. Está en C:\Program Files\Microsoft SQL Server\100\SDK\Assemblies\Microsoft.SqlServer.Types.dll

namespace ITCR.IntegrateAlTrabajo.Base
{
	/// <summary>
	/// Propósito: Clase de acceso a datos para tabla 'IATAplicantesOferta'.
	/// </summary>
	public class cIATAplicantesOfertaBase : cBDInteraccionBase
	{
		#region Declaraciones de miembros de la clase
			private SqlInt32		_fK_IdOfertaTrabajo, _fK_IdOfertaTrabajoOld, _fK_IdPersona, _fK_IdPersonaOld, _id_AplicantesOferta;
		#endregion


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cIATAplicantesOfertaBase()
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
		///		 <LI>FK_IdPersona</LI>
		///		 <LI>FK_IdOfertaTrabajo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>Id_AplicantesOferta</LI>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Insertar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_Insertar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdPersona));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdOfertaTrabajo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdOfertaTrabajo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_AplicantesOferta", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _id_AplicantesOferta));
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
				_id_AplicantesOferta = Int32.Parse(cmdAEjecutar.Parameters["@iId_AplicantesOferta"].Value.ToString());
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_IATAplicantesOferta_Insertar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::Insertar::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_AplicantesOferta</LI>
		///		 <LI>FK_IdPersona</LI>
		///		 <LI>FK_IdOfertaTrabajo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Actualizar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_Actualizar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_AplicantesOferta", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_AplicantesOferta));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdPersona));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdOfertaTrabajo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdOfertaTrabajo));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATAplicantesOferta_Actualizar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::Actualizar::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Update para actualizar una o más filas utilizando la llave foránea 'FK_IdPersona.
		/// Este método actualiza una o más filas existentes en la base de datos, actualiza el campo 'FK_IdPersona' en
		/// todas las filas que tienen ese valor para este campo con el valor 'FK_IdPersonaanterior 
		/// con el valor colocado en la propiedad 'FK_IdPersona'.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdPersona</LI>
		///		 <LI>FK_IdPersonaOld</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool ActualizarTodos_Con_FK_IdPersona_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_ActualizarTodos_Con_FK_IdPersona_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdPersona));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdPersonaOld", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdPersonaOld));
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
					throw new Exception("Procedimiento almacenado 'pr_IATAplicantesOferta_ActualizarTodos_Con_FK_IdPersona_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::ActualizarTodos_Con_FK_IdPersona_FK::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Update para actualizar una o más filas utilizando la llave foránea 'FK_IdOfertaTrabajo.
		/// Este método actualiza una o más filas existentes en la base de datos, actualiza el campo 'FK_IdOfertaTrabajo' en
		/// todas las filas que tienen ese valor para este campo con el valor 'FK_IdOfertaTrabajoanterior 
		/// con el valor colocado en la propiedad 'FK_IdOfertaTrabajo'.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdOfertaTrabajo</LI>
		///		 <LI>FK_IdOfertaTrabajoOld</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool ActualizarTodos_Con_FK_IdOfertaTrabajo_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_ActualizarTodos_Con_FK_IdOfertaTrabajo_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdOfertaTrabajo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdOfertaTrabajo));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdOfertaTrabajoOld", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdOfertaTrabajoOld));
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
					throw new Exception("Procedimiento almacenado 'pr_IATAplicantesOferta_ActualizarTodos_Con_FK_IdOfertaTrabajo_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::ActualizarTodos_Con_FK_IdOfertaTrabajo_FK::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_AplicantesOferta</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Eliminar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_Eliminar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_AplicantesOferta", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_AplicantesOferta));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATAplicantesOferta_Eliminar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::Eliminar::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'FK_IdPersona'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdPersona</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_FK_IdPersona_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_EliminarTodo_Con_FK_IdPersona_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdPersona));
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
					throw new Exception("Procedimiento almacenado 'pr_IATAplicantesOferta_EliminarTodo_Con_FK_IdPersona_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::EliminarTodo_Con_FK_IdPersona_FK::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'FK_IdOfertaTrabajo'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdOfertaTrabajo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_FK_IdOfertaTrabajo_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_EliminarTodo_Con_FK_IdOfertaTrabajo_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdOfertaTrabajo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdOfertaTrabajo));
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
					throw new Exception("Procedimiento almacenado 'pr_IATAplicantesOferta_EliminarTodo_Con_FK_IdOfertaTrabajo_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::EliminarTodo_Con_FK_IdOfertaTrabajo_FK::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_AplicantesOferta</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		///		 <LI>Id_AplicantesOferta</LI>
		///		 <LI>FK_IdPersona</LI>
		///		 <LI>FK_IdOfertaTrabajo</LI>
		/// </UL>
		/// Llena todas las propiedades que corresponden al campo en tabla con el valor de la fila seleccionada.
		/// </remarks>
		public override DataTable SeleccionarUno()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_SeleccionarUno]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATAplicantesOferta");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_AplicantesOferta", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_AplicantesOferta));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATAplicantesOferta_SeleccionarUno' reportó el error Código: " + _codError);
				}

				if(toReturn.Rows.Count > 0)
				{
					_id_AplicantesOferta = (Int32)toReturn.Rows[0]["Id_AplicantesOferta"];
					_fK_IdPersona = (Int32)toReturn.Rows[0]["FK_IdPersona"];
					_fK_IdOfertaTrabajo = (Int32)toReturn.Rows[0]["FK_IdOfertaTrabajo"];
				}
				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::SeleccionarUno::Ocurrió un error." + ex.Message, ex);
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
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_SeleccionarTodos]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATAplicantesOferta");
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
					throw new Exception("Procedimiento Almacenado 'pr_IATAplicantesOferta_SeleccionarTodos' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::SeleccionarTodos::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'FK_IdPersona'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdPersona</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_FK_IdPersona_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_SeleccionarTodos_Con_FK_IdPersona_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATAplicantesOferta");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdPersona));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATAplicantesOferta_SeleccionarTodos_Con_FK_IdPersona_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::SeleccionarTodos_Con_FK_IdPersona_FK::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'FK_IdOfertaTrabajo'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdOfertaTrabajo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_FK_IdOfertaTrabajo_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_SeleccionarTodos_Con_FK_IdOfertaTrabajo_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATAplicantesOferta");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdOfertaTrabajo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdOfertaTrabajo));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATAplicantesOferta_SeleccionarTodos_Con_FK_IdOfertaTrabajo_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::SeleccionarTodos_Con_FK_IdOfertaTrabajo_FK::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_AplicantesOferta</LI>
		///		 <LI>FK_IdPersona</LI>
		///		 <LI>FK_IdOfertaTrabajo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override DataTable Buscar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATAplicantesOferta_Buscar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATAplicantesOferta");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_AplicantesOferta", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_AplicantesOferta));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdPersona));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdOfertaTrabajo", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdOfertaTrabajo));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATAplicantesOferta_Buscar' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATAplicantesOfertaBase::Buscar::Ocurrió un error." + ex.Message, ex);
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


		#region Declaraciones de propiedades de la clase
		public SqlInt32 Id_AplicantesOferta
		{
			get
			{
				return _id_AplicantesOferta;
			}
			set
			{
				SqlInt32 id_AplicantesOfertaTmp = (SqlInt32)value;
				if(id_AplicantesOfertaTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Id_AplicantesOferta", "Id_AplicantesOferta can't be NULL");
				}
				_id_AplicantesOferta = value;
			}
		}


		public SqlInt32 FK_IdPersona
		{
			get
			{
				return _fK_IdPersona;
			}
			set
			{
				SqlInt32 fK_IdPersonaTmp = (SqlInt32)value;
				if(fK_IdPersonaTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("FK_IdPersona", "FK_IdPersona can't be NULL");
				}
				_fK_IdPersona = value;
			}
		}
		public SqlInt32 FK_IdPersonaOld
		{
			get
			{
				return _fK_IdPersonaOld;
			}
			set
			{
				SqlInt32 fK_IdPersonaOldTmp = (SqlInt32)value;
				if(fK_IdPersonaOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("FK_IdPersonaOld", "FK_IdPersonaOld can't be NULL");
				}
				_fK_IdPersonaOld = value;
			}
		}


		public SqlInt32 FK_IdOfertaTrabajo
		{
			get
			{
				return _fK_IdOfertaTrabajo;
			}
			set
			{
				SqlInt32 fK_IdOfertaTrabajoTmp = (SqlInt32)value;
				if(fK_IdOfertaTrabajoTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("FK_IdOfertaTrabajo", "FK_IdOfertaTrabajo can't be NULL");
				}
				_fK_IdOfertaTrabajo = value;
			}
		}
		public SqlInt32 FK_IdOfertaTrabajoOld
		{
			get
			{
				return _fK_IdOfertaTrabajoOld;
			}
			set
			{
				SqlInt32 fK_IdOfertaTrabajoOldTmp = (SqlInt32)value;
				if(fK_IdOfertaTrabajoOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("FK_IdOfertaTrabajoOld", "FK_IdOfertaTrabajoOld can't be NULL");
				}
				_fK_IdOfertaTrabajoOld = value;
			}
		}
		#endregion
	}
}
