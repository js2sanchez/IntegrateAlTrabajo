#region Acerca de...
///////////////////////////////////////////////////////////////////////////
// Cliente:  Tecnológico de Costa Rica
// Proyecto: Intégrate al trabajo
// Descripción: Clase de acceso a datos para tabla 'IATPersona'
// Generado por ITCR Gen v2010.0.0.0 
// Fecha: martes 27 de agosto de 2013, 09:45:39 p.m.
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
	/// Propósito: Clase de acceso a datos derivada para tabla 'IATPersona'.
	/// </summary>
	public class cIATPersonaDatos : cIATPersonaBase
	{


		/// <summary>
		/// Propósito: Constructor de la clase.
		/// </summary>
		public cIATPersonaDatos() : base()
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
		///		 <LI>Nom_Persona</LI>
		///		 <LI>Apellido1</LI>
		///		 <LI>Apellido2</LI>
		///		 <LI>Num_Cedula</LI>
		///		 <LI>Fec_Nacimiento</LI>
		///		 <LI>Sexo</LI>
		///		 <LI>Pasatiempos</LI>
		///		 <LI>FK_IdUsuario</LI>
		///		 <LI>FK_IdDistrito</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>Id_Persona</LI>
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
		///		 <LI>Id_Persona</LI>
		///		 <LI>Nom_Persona</LI>
		///		 <LI>Apellido1</LI>
		///		 <LI>Apellido2</LI>
		///		 <LI>Num_Cedula</LI>
		///		 <LI>Fec_Nacimiento</LI>
		///		 <LI>Sexo</LI>
		///		 <LI>Pasatiempos</LI>
		///		 <LI>FK_IdUsuario</LI>
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
		///		 <LI>Id_Persona</LI>
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
		///		 <LI>Id_Persona</LI>
		/// </UL>
		/// Propiedades actualizadas luego de una llamada exitosa a este método: 
		/// <UL>
		///		 <LI>CodError</LI>
		///		 <LI>Id_Persona</LI>
		///		 <LI>Nom_Persona</LI>
		///		 <LI>Apellido1</LI>
		///		 <LI>Apellido2</LI>
		///		 <LI>Num_Cedula</LI>
		///		 <LI>Fec_Nacimiento</LI>
		///		 <LI>Sexo</LI>
		///		 <LI>Pasatiempos</LI>
		///		 <LI>FK_IdUsuario</LI>
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
		///		 <LI>Id_Persona</LI>
		///		 <LI>Nom_Persona</LI>
		///		 <LI>Apellido1</LI>
		///		 <LI>Apellido2</LI>
		///		 <LI>Num_Cedula</LI>
		///		 <LI>Fec_Nacimiento</LI>
		///		 <LI>Sexo</LI>
		///		 <LI>Pasatiempos</LI>
		///		 <LI>FK_IdUsuario</LI>
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
