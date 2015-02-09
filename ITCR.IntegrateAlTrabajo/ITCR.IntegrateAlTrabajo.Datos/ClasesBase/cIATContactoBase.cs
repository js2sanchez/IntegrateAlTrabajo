#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Empresa:  Tecnológico de Costa Rica
// Proyecto: Intégrate al trabajo
// Descripción: Clase de acceso a datos para tabla 'IATContacto'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: martes 27 de agosto de 2013, 09:45:38 p.m.
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
	/// Propósito: Clase de acceso a datos para tabla 'IATContacto'.
	/// </summary>
	public class cIATContactoBase : cBDInteraccionBase
	{
		#region Declaraciones de miembros de la clase
			private SqlInt32		_fK_IdTipoContacto, _fK_IdTipoContactoOld, _fK_IdUsuario, _fK_IdUsuarioOld, _id_Contacto;
			private SqlString		_detalle;
		#endregion


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cIATContactoBase()
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
		///		 <LI>Detalle</LI>
		///		 <LI>FK_IdTipoContacto</LI>
		///		 <LI>FK_IdUsuario</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>Id_Contacto</LI>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Insertar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_Insertar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@sDetalle", SqlDbType.VarChar, 80, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _detalle));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdTipoContacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdTipoContacto));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdUsuario", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdUsuario));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Contacto", SqlDbType.Int, 4, ParameterDirection.Output, true, 10, 0, "", DataRowVersion.Proposed, _id_Contacto));
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
				_id_Contacto = Int32.Parse(cmdAEjecutar.Parameters["@iId_Contacto"].Value.ToString());
				_codError = Int32.Parse(cmdAEjecutar.Parameters["@iCodError"].Value.ToString());

				if(_codError != (int)ITCRError.AllOk)
				{
					// Genera un error.
					throw new Exception("Procedimiento Almacenado 'pr_IATContacto_Insertar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::Insertar::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_Contacto</LI>
		///		 <LI>Detalle</LI>
		///		 <LI>FK_IdTipoContacto</LI>
		///		 <LI>FK_IdUsuario</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Actualizar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_Actualizar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Contacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_Contacto));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@sDetalle", SqlDbType.VarChar, 80, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _detalle));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdTipoContacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdTipoContacto));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdUsuario", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdUsuario));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATContacto_Actualizar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::Actualizar::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Update para actualizar una o más filas utilizando la llave foránea 'FK_IdTipoContacto.
		/// Este método actualiza una o más filas existentes en la base de datos, actualiza el campo 'FK_IdTipoContacto' en
		/// todas las filas que tienen ese valor para este campo con el valor 'FK_IdTipoContactoanterior 
		/// con el valor colocado en la propiedad 'FK_IdTipoContacto'.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdTipoContacto</LI>
		///		 <LI>FK_IdTipoContactoOld</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool ActualizarTodos_Con_FK_IdTipoContacto_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_ActualizarTodos_Con_FK_IdTipoContacto_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdTipoContacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdTipoContacto));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdTipoContactoOld", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdTipoContactoOld));
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
					throw new Exception("Procedimiento almacenado 'pr_IATContacto_ActualizarTodos_Con_FK_IdTipoContacto_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::ActualizarTodos_Con_FK_IdTipoContacto_FK::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Update para actualizar una o más filas utilizando la llave foránea 'FK_IdUsuario.
		/// Este método actualiza una o más filas existentes en la base de datos, actualiza el campo 'FK_IdUsuario' en
		/// todas las filas que tienen ese valor para este campo con el valor 'FK_IdUsuarioanterior 
		/// con el valor colocado en la propiedad 'FK_IdUsuario'.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdUsuario</LI>
		///		 <LI>FK_IdUsuarioOld</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool ActualizarTodos_Con_FK_IdUsuario_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_ActualizarTodos_Con_FK_IdUsuario_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdUsuario", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdUsuario));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdUsuarioOld", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdUsuarioOld));
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
					throw new Exception("Procedimiento almacenado 'pr_IATContacto_ActualizarTodos_Con_FK_IdUsuario_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::ActualizarTodos_Con_FK_IdUsuario_FK::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_Contacto</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Eliminar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_Eliminar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Contacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_Contacto));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATContacto_Eliminar' reportó el error Codigo: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::Eliminar::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'FK_IdTipoContacto'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdTipoContacto</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_FK_IdTipoContacto_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_EliminarTodo_Con_FK_IdTipoContacto_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdTipoContacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdTipoContacto));
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
					throw new Exception("Procedimiento almacenado 'pr_IATContacto_EliminarTodo_Con_FK_IdTipoContacto_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::EliminarTodo_Con_FK_IdTipoContacto_FK::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método Eliminar para una llave primaria. Este método va a borrar una o más filas en la base de datos, basado en la llave primaria 'FK_IdUsuario'
		/// </summary>
		/// <returns>True si tuvo éxito, false otherwise. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdUsuario</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public bool EliminarTodo_Con_FK_IdUsuario_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_EliminarTodo_Con_FK_IdUsuario_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdUsuario", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdUsuario));
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
					throw new Exception("Procedimiento almacenado 'pr_IATContacto_EliminarTodo_Con_FK_IdUsuario_FK' reportó el error Código: " + _codError);
				}

				return true;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::EliminarTodo_Con_FK_IdUsuario_FK::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_Contacto</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		///		 <LI>Id_Contacto</LI>
		///		 <LI>Detalle</LI>
		///		 <LI>FK_IdTipoContacto</LI>
		///		 <LI>FK_IdUsuario</LI>
		/// </UL>
		/// Llena todas las propiedades que corresponden al campo en tabla con el valor de la fila seleccionada.
		/// </remarks>
		public override DataTable SeleccionarUno()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_SeleccionarUno]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATContacto");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Contacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_Contacto));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATContacto_SeleccionarUno' reportó el error Código: " + _codError);
				}

				if(toReturn.Rows.Count > 0)
				{
					_id_Contacto = (Int32)toReturn.Rows[0]["Id_Contacto"];
					_detalle = (string)toReturn.Rows[0]["Detalle"];
					_fK_IdTipoContacto = (Int32)toReturn.Rows[0]["FK_IdTipoContacto"];
					_fK_IdUsuario = (Int32)toReturn.Rows[0]["FK_IdUsuario"];
				}
				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::SeleccionarUno::Ocurrió un error." + ex.Message, ex);
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
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_SeleccionarTodos]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATContacto");
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
					throw new Exception("Procedimiento Almacenado 'pr_IATContacto_SeleccionarTodos' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::SeleccionarTodos::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'FK_IdTipoContacto'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdTipoContacto</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_FK_IdTipoContacto_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_SeleccionarTodos_Con_FK_IdTipoContacto_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATContacto");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdTipoContacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdTipoContacto));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATContacto_SeleccionarTodos_Con_FK_IdTipoContacto_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::SeleccionarTodos_Con_FK_IdTipoContacto_FK::Ocurrió un error." + ex.Message, ex);
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
		/// Propósito: Método SELECT para una llave primaria. Este método hace Select de una o más filas de la base de datos, basado en la llave primaria 'FK_IdUsuario'
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>FK_IdUsuario</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public DataTable SeleccionarTodos_Con_FK_IdUsuario_FK()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_SeleccionarTodos_Con_FK_IdUsuario_FK]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATContacto");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdUsuario", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdUsuario));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATContacto_SeleccionarTodos_Con_FK_IdUsuario_FK' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch(Exception ex)
			{
				// Ocurrió un error. Le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::SeleccionarTodos_Con_FK_IdUsuario_FK::Ocurrió un error." + ex.Message, ex);
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
		///		 <LI>Id_Contacto</LI>
		///		 <LI>Detalle</LI>
		///		 <LI>FK_IdTipoContacto</LI>
		///		 <LI>FK_IdUsuario</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override DataTable Buscar()
		{
			SqlCommand	cmdAEjecutar = new SqlCommand();
			cmdAEjecutar.CommandText = "dbo.[pr_IATContacto_Buscar]";
			cmdAEjecutar.CommandType = CommandType.StoredProcedure;
			DataTable toReturn = new DataTable("IATContacto");
			SqlDataAdapter adapter = new SqlDataAdapter(cmdAEjecutar);

			// Usar el objeto conexión de la clase base
			cmdAEjecutar.Connection = _conexionBD;

			try
			{
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iId_Contacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _id_Contacto));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@sDetalle", SqlDbType.VarChar, 80, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _detalle));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdTipoContacto", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdTipoContacto));
				cmdAEjecutar.Parameters.Add(new SqlParameter("@iFK_IdUsuario", SqlDbType.Int, 4, ParameterDirection.Input, false, 10, 0, "", DataRowVersion.Proposed, _fK_IdUsuario));
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
					throw new Exception("Procedimiento Almacenado 'pr_IATContacto_Buscar' reportó el error Código: " + _codError);
				}

				return toReturn;
			}
			catch (Exception ex)
			{
				// Ocurrió un error. le hace Bubble a quien llama y encapsula el objeto Exception
				throw new Exception("cIATContactoBase::Buscar::Ocurrió un error." + ex.Message, ex);
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
		public SqlInt32 Id_Contacto
		{
			get
			{
				return _id_Contacto;
			}
			set
			{
				SqlInt32 id_ContactoTmp = (SqlInt32)value;
				if(id_ContactoTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Id_Contacto", "Id_Contacto can't be NULL");
				}
				_id_Contacto = value;
			}
		}


		public SqlString Detalle
		{
			get
			{
				return _detalle;
			}
			set
			{
				SqlString detalleTmp = (SqlString)value;
				if(detalleTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("Detalle", "Detalle can't be NULL");
				}
				_detalle = value;
			}
		}


		public SqlInt32 FK_IdTipoContacto
		{
			get
			{
				return _fK_IdTipoContacto;
			}
			set
			{
				SqlInt32 fK_IdTipoContactoTmp = (SqlInt32)value;
				if(fK_IdTipoContactoTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("FK_IdTipoContacto", "FK_IdTipoContacto can't be NULL");
				}
				_fK_IdTipoContacto = value;
			}
		}
		public SqlInt32 FK_IdTipoContactoOld
		{
			get
			{
				return _fK_IdTipoContactoOld;
			}
			set
			{
				SqlInt32 fK_IdTipoContactoOldTmp = (SqlInt32)value;
				if(fK_IdTipoContactoOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("FK_IdTipoContactoOld", "FK_IdTipoContactoOld can't be NULL");
				}
				_fK_IdTipoContactoOld = value;
			}
		}


		public SqlInt32 FK_IdUsuario
		{
			get
			{
				return _fK_IdUsuario;
			}
			set
			{
				SqlInt32 fK_IdUsuarioTmp = (SqlInt32)value;
				if(fK_IdUsuarioTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("FK_IdUsuario", "FK_IdUsuario can't be NULL");
				}
				_fK_IdUsuario = value;
			}
		}
		public SqlInt32 FK_IdUsuarioOld
		{
			get
			{
				return _fK_IdUsuarioOld;
			}
			set
			{
				SqlInt32 fK_IdUsuarioOldTmp = (SqlInt32)value;
				if(fK_IdUsuarioOldTmp.IsNull )
				{
					throw new ArgumentOutOfRangeException("FK_IdUsuarioOld", "FK_IdUsuarioOld can't be NULL");
				}
				_fK_IdUsuarioOld = value;
			}
		}
		#endregion
	}
}
