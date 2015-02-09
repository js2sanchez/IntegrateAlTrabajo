#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Empresa:  Tecnológico de Costa Rica
// Proyecto: Intégrate al trabajo
// Descripción: Clase de acceso a datos para tabla 'IATCalificacionEmpresa'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: martes 27 de agosto de 2013, 09:45:37 p.m.
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
	/// Propósito: Clase de acceso a datos para tabla 'IATCalificacionEmpresa'.
	/// </summary>
	public class cIATCalificacionEmpresaBase : cBDInteraccionBase
	{
		#region Declaraciones de miembros de la clase
			private SqlInt32		_fK_idEmpresa, _fK_idEmpresaOld, _fK_idPersona, _fK_idPersonaOld, _id_Empresa;
			private SqlByte			_puntaje;
			private SqlString		_comentario;
		#endregion


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cIATCalificacionEmpresaBase()
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
		///		 <LI>Puntaje</LI>
		///		 <LI>Comentario</LI>
		///		 <LI>FK_idPersona</LI>
		///		 <LI>FK_idEmpresa</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>Id_Empresa</LI>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Insertar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_Insertar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@byPuntaje", SqlDbType.TinyInt, 1, ParameterDirection.Input, false, 3, 0, "", DataRowVersion.Proposed, _puntaje));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@sComentario", SqlDbType.VarChar, 300, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _comentario));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idPersona));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idEmpresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idEmpresa));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Empresa", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _id_Empresa));
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
				_id_Empresa = Int32.Parse(cmdAEjecutar.Parameters["@iId_Empresa"].Value.ToString());
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_IATCalificacionEmpresa_Insertar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::Insertar::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_Empresa</LI>
		///		 <LI>Puntaje</LI>
		///		 <LI>Comentario</LI>
		///		 <LI>FK_idPersona</LI>
		///		 <LI>FK_idEmpresa</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Actualizar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_Actualizar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Empresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_Empresa));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@byPuntaje", SqlDbType.TinyInt, 1, ParameterDirection.Input, false, 3, 0, "", DataRowVersion.Proposed, _puntaje));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@sComentario", SqlDbType.VarChar, 300, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _comentario));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idPersona));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idEmpresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idEmpresa));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATCalificacionEmpresa_Actualizar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::Actualizar::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Update para actualizar una o más filas utilizando la llave foránea 'FK_idPersona.
		/// Este método actualiza una o más filas existentes en la base de datos, actualiza el campo 'FK_idPersona' en
		/// todas las filas que tienen ese valor para este campo con el valor 'FK_idPersonaanterior 
		/// con el valor colocado en la propiedad 'FK_idPersona'.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_idPersona</LI>
		///		 <LI>FK_idPersonaOld</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool ActualizarTodos_Con_FK_idPersona_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_ActualizarTodos_Con_FK_idPersona_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idPersona));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idPersonaOld", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idPersonaOld));
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
					throw new Exception("Procedimiento almacenado 'pr_IATCalificacionEmpresa_ActualizarTodos_Con_FK_idPersona_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::ActualizarTodos_Con_FK_idPersona_FK::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Update para actualizar una o más filas utilizando la llave foránea 'FK_idEmpresa.
		/// Este método actualiza una o más filas existentes en la base de datos, actualiza el campo 'FK_idEmpresa' en
		/// todas las filas que tienen ese valor para este campo con el valor 'FK_idEmpresaanterior 
		/// con el valor colocado en la propiedad 'FK_idEmpresa'.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_idEmpresa</LI>
		///		 <LI>FK_idEmpresaOld</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool ActualizarTodos_Con_FK_idEmpresa_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_ActualizarTodos_Con_FK_idEmpresa_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idEmpresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idEmpresa));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idEmpresaOld", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idEmpresaOld));
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
					throw new Exception("Procedimiento almacenado 'pr_IATCalificacionEmpresa_ActualizarTodos_Con_FK_idEmpresa_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::ActualizarTodos_Con_FK_idEmpresa_FK::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_Empresa</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Eliminar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_Eliminar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Empresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_Empresa));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATCalificacionEmpresa_Eliminar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::Eliminar::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'FK_idPersona'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_idPersona</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_FK_idPersona_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_EliminarTodo_Con_FK_idPersona_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idPersona));
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
					throw new Exception("Procedimiento almacenado 'pr_IATCalificacionEmpresa_EliminarTodo_Con_FK_idPersona_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::EliminarTodo_Con_FK_idPersona_FK::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'FK_idEmpresa'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_idEmpresa</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_FK_idEmpresa_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_EliminarTodo_Con_FK_idEmpresa_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idEmpresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idEmpresa));
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
					throw new Exception("Procedimiento almacenado 'pr_IATCalificacionEmpresa_EliminarTodo_Con_FK_idEmpresa_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::EliminarTodo_Con_FK_idEmpresa_FK::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_Empresa</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		///		 <LI>Id_Empresa</LI>
		///		 <LI>Puntaje</LI>
		///		 <LI>Comentario</LI>
		///		 <LI>FK_idPersona</LI>
		///		 <LI>FK_idEmpresa</LI>
		/// </UL>
		/// Llena todas las propiedades que corresponden al campo en tabla con el valor de la fila seleccionada.
		/// </remarks>
		public override DataTable SeleccionarUno()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_SeleccionarUno]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATCalificacionEmpresa");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Empresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_Empresa));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATCalificacionEmpresa_SeleccionarUno' reportó el error Código: " + _codError);
				}

				if(toReturn.Rows.Count > 0)
				{
					_id_Empresa = (Int32)toReturn.Rows[0]["Id_Empresa"];
					_puntaje = (byte)toReturn.Rows[0]["Puntaje"];
					_comentario = (string)toReturn.Rows[0]["Comentario"];
					_fK_idPersona = (Int32)toReturn.Rows[0]["FK_idPersona"];
					_fK_idEmpresa = (Int32)toReturn.Rows[0]["FK_idEmpresa"];
				}
				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::SeleccionarUno::Ocurrió un error." + ex.Message, ex);
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
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_SeleccionarTodos]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATCalificacionEmpresa");
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
					throw new Exception("Procedimiento Almacenado 'pr_IATCalificacionEmpresa_SeleccionarTodos' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::SeleccionarTodos::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'FK_idPersona'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_idPersona</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_FK_idPersona_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_SeleccionarTodos_Con_FK_idPersona_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATCalificacionEmpresa");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idPersona));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATCalificacionEmpresa_SeleccionarTodos_Con_FK_idPersona_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::SeleccionarTodos_Con_FK_idPersona_FK::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'FK_idEmpresa'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_idEmpresa</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_FK_idEmpresa_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_SeleccionarTodos_Con_FK_idEmpresa_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATCalificacionEmpresa");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idEmpresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idEmpresa));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATCalificacionEmpresa_SeleccionarTodos_Con_FK_idEmpresa_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::SeleccionarTodos_Con_FK_idEmpresa_FK::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_Empresa</LI>
		///		 <LI>Puntaje</LI>
		///		 <LI>Comentario</LI>
		///		 <LI>FK_idPersona</LI>
		///		 <LI>FK_idEmpresa</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override DataTable Buscar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATCalificacionEmpresa_Buscar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATCalificacionEmpresa");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Empresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_Empresa));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@byPuntaje", SqlDbType.TinyInt, 1, ParameterDirection.Input, false, 3, 0, "", DataRowVersion.Proposed, _puntaje));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@sComentario", SqlDbType.VarChar, 300, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _comentario));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idPersona", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idPersona));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_idEmpresa", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_idEmpresa));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATCalificacionEmpresa_Buscar' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATCalificacionEmpresaBase::Buscar::Ocurrió un error." + ex.Message, ex);
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
		public SqlInt32 Id_Empresa
		{
			get
			{
				return _id_Empresa;
			}
			set
			{
				SqlInt32 id_EmpresaTmp = (SqlInt32)value;
				if(id_EmpresaTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Id_Empresa", "Id_Empresa can't be NULL");
				}
				_id_Empresa = value;
			}
		}


		public SqlByte Puntaje
		{
			get
			{
				return _puntaje;
			}
			set
			{
				SqlByte puntajeTmp = (SqlByte)value;
				if(puntajeTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Puntaje", "Puntaje can't be NULL");
				}
				_puntaje = value;
			}
		}


		public SqlString Comentario
		{
			get
			{
				return _comentario;
			}
			set
			{
				SqlString comentarioTmp = (SqlString)value;
				if(comentarioTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Comentario", "Comentario can't be NULL");
				}
				_comentario = value;
			}
		}


		public SqlInt32 FK_idPersona
		{
			get
			{
				return _fK_idPersona;
			}
			set
			{
				SqlInt32 fK_idPersonaTmp = (SqlInt32)value;
				if(fK_idPersonaTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("FK_idPersona", "FK_idPersona can't be NULL");
				}
				_fK_idPersona = value;
			}
		}
		public SqlInt32 FK_idPersonaOld
		{
			get
			{
				return _fK_idPersonaOld;
			}
			set
			{
				SqlInt32 fK_idPersonaOldTmp = (SqlInt32)value;
				if(fK_idPersonaOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("FK_idPersonaOld", "FK_idPersonaOld can't be NULL");
				}
				_fK_idPersonaOld = value;
			}
		}


		public SqlInt32 FK_idEmpresa
		{
			get
			{
				return _fK_idEmpresa;
			}
			set
			{
				SqlInt32 fK_idEmpresaTmp = (SqlInt32)value;
				if(fK_idEmpresaTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("FK_idEmpresa", "FK_idEmpresa can't be NULL");
				}
				_fK_idEmpresa = value;
			}
		}
		public SqlInt32 FK_idEmpresaOld
		{
			get
			{
				return _fK_idEmpresaOld;
			}
			set
			{
				SqlInt32 fK_idEmpresaOldTmp = (SqlInt32)value;
				if(fK_idEmpresaOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("FK_idEmpresaOld", "FK_idEmpresaOld can't be NULL");
				}
				_fK_idEmpresaOld = value;
			}
		}
		#endregion
	}
}
