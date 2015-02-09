#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: Intégrate al trabajo
// Descripción: Clase de acceso a datos para tabla 'IATEmpresa'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: domingo 1 de septiembre de 2013, 10:05:02 a.m.
// Dado que esta clase implementa IDispose, las clases derivadas no deben hacerlo.
///////////////////////////////////////////////////////////////////////////
#endregion


using System;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using ITCR.IntegrateAlTrabajo.Base;

namespace ITCR.IntegrateAlTrabajo.Datos
{
	/// <summary>
	/// Propósito: Clase de acceso a datos derivada para tabla 'IATEmpresa'.
	/// </summary>
	public class cIATEmpresaDatos : cIATEmpresaBase
	{


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cIATEmpresaDatos() : base()
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
		///		 <LI>Nom_Empresa</LI>
		///		 <LI>Num_CedulaJuridica</LI>
		///		 <LI>Dsc_Empresa</LI>
		///		 <LI>FK_IdUsuario</LI>
		///		 <LI>PuntajePromedio</LI>
		///		 <LI>FK_IdDistrito</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>Id_Empresa</LI>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Insertar()
		{
			return base.Insertar();
		}


		/// <summary>
		/// Propósito: Método Update. Actualiza una fila existente en la base de datos.
		/// </summary>
		/// <returns>True si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Id_Empresa</LI>
		///		 <LI>Nom_Empresa</LI>
		///		 <LI>Num_CedulaJuridica</LI>
		///		 <LI>Dsc_Empresa</LI>
		///		 <LI>FK_IdUsuario</LI>
		///		 <LI>PuntajePromedio</LI>
		///		 <LI>FK_IdDistrito</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override bool Actualizar()
		{
			return base.Actualizar();
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
			return base.Eliminar();
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
		///		 <LI>Nom_Empresa</LI>
		///		 <LI>Num_CedulaJuridica</LI>
		///		 <LI>Dsc_Empresa</LI>
		///		 <LI>FK_IdUsuario</LI>
		///		 <LI>PuntajePromedio</LI>
		///		 <LI>FK_IdDistrito</LI>
		/// </UL>
		/// Llena todas las propiedades que corresponden al campo en tabla con el valor de la fila seleccionada.
		/// </remarks>
		public override DataTable SeleccionarUno()
		{
			return base.SeleccionarUno();
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
			return base.SeleccionarTodos();
		}


		/// <summary>
		/// Propósito: Método Buscar. Este método va a Hacer un SELECT de tabla.
		/// </summary>
		/// <returns>DataTable object si tuvo éxito, sino genera una Exception. </returns>
		/// <remarks>
		/// Propiedades necesarias para este método: 
		/// <UL>
		///		 <LI>Id_Empresa</LI>
		///		 <LI>Nom_Empresa</LI>
		///		 <LI>Num_CedulaJuridica</LI>
		///		 <LI>Dsc_Empresa</LI>
		///		 <LI>FK_IdUsuario</LI>
		///		 <LI>PuntajePromedio</LI>
		///		 <LI>FK_IdDistrito</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		/// </UL>
		/// </remarks>
		public override DataTable Buscar()
		{
			//TODO: agregar % para busqueda de campos string (varchar, etc.) con LIKE (el procedimiento ya lo hace), así:
			//if (!base.DescripcionCF.IsNull) {
				//    base.DescripcionCF = "{0}" + base.DescripcionCF + "{0}"; }
			return base.Buscar();
		}
	} //class
} //namespace
