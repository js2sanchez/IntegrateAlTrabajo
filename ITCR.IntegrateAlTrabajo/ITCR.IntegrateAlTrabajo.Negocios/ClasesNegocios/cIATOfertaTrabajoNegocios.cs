#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: Intégrate al trabajo
// Descripción: Clase de LOGICA DE NEGOCIOS para tabla 'IATOfertaTrabajo'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: martes 27 de agosto de 2013, 09:45:39 p.m.
///////////////////////////////////////////////////////////////////////////
#endregion


using System;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using ITCR.IntegrateAlTrabajo.Base;
using ITCR.IntegrateAlTrabajo.Datos;
//using ITCR.IntegrateAlTrabajo.Negocios.wsSeguridad;

namespace ITCR.IntegrateAlTrabajo.Negocios
{
	/// <summary>
	/// Propósito: Clase de lógica de negocios para tabla 'IATOfertaTrabajo'.
	/// </summary>
	public class cIATOfertaTrabajoNegocios : cIATOfertaTrabajoDatos
	{
		#region Declaraciones de miembros de la clase
		private int				_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora;
		private string			_ID_USUARIOBitacora, _COD_SEDEBitacora;
		#endregion


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cIATOfertaTrabajoNegocios(int COD_APLICACIONBitacora, string COD_SEDEBitacora, int COD_FUNCIONALIDADBitacora, string ID_USUARIOBitacora) : base()
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
		///		 <LI>Nom_Puesto</LI>
		///		 <LI>Dsc_OfertaTrabajo</LI>
		///		 <LI>Txt_Requisitos</LI>
		///		 <LI>InformacionAdicional. May be SqlString.Null</LI>
		///		 <LI>Ind_Activa</LI>
		///		 <LI>FK_IdCategoriaOfertaTrabajo</LI>
		///		 <LI>FK_IdTipoOfertaTrabajo</LI>
		///		 <LI>FK_IdEmpresa</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>Id_OfertaTrabajo</LI>
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
				operacion = "Insertar cIATOfertaTrabajo;"
					+"Nom_Puesto:"+Nom_Puesto.ToString()+";"
					+"Dsc_OfertaTrabajo:"+Dsc_OfertaTrabajo.ToString()+";"
					+"Txt_Requisitos:"+Txt_Requisitos.ToString()+";"
					+"InformacionAdicional:"+InformacionAdicional.ToString()+";"
					+"Ind_Activa:"+Ind_Activa.ToString()+";"
					+"FK_IdCategoriaOfertaTrabajo:"+FK_IdCategoriaOfertaTrabajo.ToString()+";"
					+"FK_IdTipoOfertaTrabajo:"+FK_IdTipoOfertaTrabajo.ToString()+";"
					+"FK_IdEmpresa:"+FK_IdEmpresa.ToString()+";";
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.UsoFuncionalidad, _ID_USUARIOBitacora,operacion);
				return base.Insertar();
			}
			catch (Exception ex)
			{
				//Construir el string a guardar en la bitácora en caso de error.
				operacion = "Error Insertar cIATOfertaTrabajo;"+ex.Message;
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
		///		 <LI>Id_OfertaTrabajo</LI>
		///		 <LI>Nom_Puesto</LI>
		///		 <LI>Dsc_OfertaTrabajo</LI>
		///		 <LI>Txt_Requisitos</LI>
		///		 <LI>InformacionAdicional. May be SqlString.Null</LI>
		///		 <LI>Ind_Activa</LI>
		///		 <LI>FK_IdCategoriaOfertaTrabajo</LI>
		///		 <LI>FK_IdTipoOfertaTrabajo</LI>
		///		 <LI>FK_IdEmpresa</LI>
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
				operacion = "Actualizar cIATOfertaTrabajo;"
					+"Id_OfertaTrabajo:"+Id_OfertaTrabajo.ToString()+";"
					+"Nom_Puesto:"+Nom_Puesto.ToString()+";"
					+"Dsc_OfertaTrabajo:"+Dsc_OfertaTrabajo.ToString()+";"
					+"Txt_Requisitos:"+Txt_Requisitos.ToString()+";"
					+"InformacionAdicional:"+InformacionAdicional.ToString()+";"
					+"Ind_Activa:"+Ind_Activa.ToString()+";"
					+"FK_IdCategoriaOfertaTrabajo:"+FK_IdCategoriaOfertaTrabajo.ToString()+";"
					+"FK_IdTipoOfertaTrabajo:"+FK_IdTipoOfertaTrabajo.ToString()+";"
					+"FK_IdEmpresa:"+FK_IdEmpresa.ToString()+";";
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.UsoFuncionalidad, _ID_USUARIOBitacora,operacion);
				return base.Actualizar();
			}
			catch (Exception ex)
			{
				//Construir el string a guardar en la bitácora en caso de error.
				operacion = "Error Actualizar cIATOfertaTrabajo;"+ex.Message;
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
		///		 <LI>Id_OfertaTrabajo</LI>
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
				operacion = "Eliminar cIATOfertaTrabajo;"
					+"Id_OfertaTrabajo:"+Id_OfertaTrabajo.ToString()+";";
				//wsseg.BitacoraRegistrarUso(_COD_APLICACIONBitacora, _COD_FUNCIONALIDADBitacora, _COD_SEDEBitacora, eTipoEventoBitacora.UsoFuncionalidad, _ID_USUARIOBitacora,operacion);
				return base.Eliminar();
			}
			catch (Exception ex)
			{
				//Construir el string a guardar en la bitácora en caso de error.
				operacion = "Error Eliminar cIATOfertaTrabajo;"+ex.Message;
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
		///		 <LI>Id_OfertaTrabajo</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		///		 <LI>Id_OfertaTrabajo</LI>
		///		 <LI>Nom_Puesto</LI>
		///		 <LI>Dsc_OfertaTrabajo</LI>
		///		 <LI>Txt_Requisitos</LI>
		///		 <LI>InformacionAdicional</LI>
		///		 <LI>Ind_Activa</LI>
		///		 <LI>FK_IdCategoriaOfertaTrabajo</LI>
		///		 <LI>FK_IdTipoOfertaTrabajo</LI>
		///		 <LI>FK_IdEmpresa</LI>
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
		///		 <LI>Id_OfertaTrabajo</LI>
		///		 <LI>Nom_Puesto</LI>
		///		 <LI>Dsc_OfertaTrabajo</LI>
		///		 <LI>Txt_Requisitos</LI>
		///		 <LI>InformacionAdicional. May be SqlString.Null</LI>
		///		 <LI>Ind_Activa</LI>
		///		 <LI>FK_IdCategoriaOfertaTrabajo</LI>
		///		 <LI>FK_IdTipoOfertaTrabajo</LI>
		///		 <LI>FK_IdEmpresa</LI>
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
