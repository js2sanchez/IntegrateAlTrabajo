-- ================================================================================================================
-- Procedimientos generados por ITCR Gen v2010.0.0.0  on domingo 23 de marzo de 2014, 09:28:02 p.m.
-- Capa de datos para la base de datos 'BolsaTrabajo'
-- ================================================================================================================
SET NOCOUNT ON
GO
USE [BolsaTrabajo]
GO

-- ========================================================================================================
-- [Procedimientos Almacenados generados para tabla:  IATEstudio]
GO

-- //// Procedimiento almacenado de Insertar.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATEstudio_Insertar]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATEstudio_Insertar]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATEstudio'
-- Recibe: @sInstitucion varchar(60)
-- Recibe: @sTitulo varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iId_Estudio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_Insertar]
	@sInstitucion varchar(60),
	@sTitulo varchar(50),
	@iFK_IdPersona int,
	@iId_Estudio int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATEstudio]
(
	[Institucion],
	[Titulo],
	[FK_IdPersona]
)
VALUES
(
	@sInstitucion,
	@sTitulo,
	@iFK_IdPersona
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_Estudio=SCOPE_IDENTITY()
GO


-- //// Procedimiento almacenado de update para una sola fila.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATEstudio_Actualizar]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATEstudio_Actualizar]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATEstudio'
-- Recibe: @iId_Estudio int
-- Recibe: @sInstitucion varchar(60)
-- Recibe: @sTitulo varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_Actualizar]
	@iId_Estudio int,
	@sInstitucion varchar(60),
	@sTitulo varchar(50),
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATEstudio]
SET 
	[Institucion] = @sInstitucion,
	[Titulo] = @sTitulo,
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[Id_Estudio] = @iId_Estudio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento almacenado de actualizar para una o más filas usando el campo [FK_IdPersona].
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATEstudio_ActualizarTodos_Con_FK_IdPersona_FK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATEstudio_ActualizarTodos_Con_FK_IdPersona_FK]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATEstudio'.
-- Actualiza el campo [FK_IdPersona] con el valor anterior de@iFK_IdPersona  al valor @iFK_IdPersona
-- Recibe: @iFK_IdPersona int
-- Recibe: @iFK_IdPersonaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_ActualizarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iFK_IdPersonaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATEstudio]
SET
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[FK_IdPersona] = @iFK_IdPersonaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento Eliminar usando la llave primaria.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATEstudio_Eliminar]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATEstudio_Eliminar]
GO

---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATEstudio'
-- utilizando la llave primaria. 
-- Recibe: @iId_Estudio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_Eliminar]
	@iId_Estudio int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATEstudio]
WHERE
	[Id_Estudio] = @iId_Estudio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento almacenado de Delete, basado en el campo  [FK_IdPersona].
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATEstudio_EliminarTodo_FK_FK_IdPersona]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATEstudio_EliminarTodo_FK_FK_IdPersona]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATEstudio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_EliminarTodo_FK_FK_IdPersona]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATEstudio]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento almacenado de Select basado en la llave primaria.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATEstudio_SeleccionarUno]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATEstudio_SeleccionarUno]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATEstudio'
-- basado en la llave primaria.
-- Recibe: @iId_Estudio int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_SeleccionarUno]
	@iId_Estudio int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATEstudio]
WHERE
	[Id_Estudio] = @iId_Estudio


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento para seleccionar todos los registros.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATEstudio_SeleccionarTodos]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATEstudio_SeleccionarTodos]
GO

---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATEstudio'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATEstudio]
ORDER BY 
	[Id_Estudio] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento Select, basado en el campo [FK_IdPersona].
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATEstudio_SeleccionarTodos_Con_FK_IdPersona_FK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATEstudio_SeleccionarTodos_Con_FK_IdPersona_FK]
GO

---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATEstudio'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_SeleccionarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATEstudio]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento almacenado de Busqueda.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATEstudio_Buscar]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATEstudio_Buscar]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATEstudio'
-- Recibe: @iId_Estudio int
-- Recibe: @sInstitucion varchar(60)
-- Recibe: @sTitulo varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATEstudio_Buscar]
	@iId_Estudio int,
	@sInstitucion varchar(60),
	@sTitulo varchar(50),
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATEstudio] 
 WHERE 
	(@iId_Estudio IS NULL OR [Id_Estudio] = @iId_Estudio) AND 
	(@sInstitucion IS NULL OR [Institucion] LIKE @sInstitucion) AND 
	(@sTitulo IS NULL OR [Titulo] LIKE @sTitulo) AND 
	(@iFK_IdPersona IS NULL OR [FK_IdPersona] = @iFK_IdPersona)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- [Fin de los procedimientos almacenados para la tabla:     IATEstudio]
-- ========================================================================================================
GO

-- ========================================================================================================
-- [Procedimientos Almacenados generados para tabla:  IATExperienciaLaboral]
GO

-- //// Procedimiento almacenado de Insertar.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATExperienciaLaboral_Insertar]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATExperienciaLaboral_Insertar]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'IATExperienciaLaboral'
-- Recibe: @sEmpresa varchar(60)
-- Recibe: @sPuesto varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iId_ExperienciaLaboral int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_Insertar]
	@sEmpresa varchar(60),
	@sPuesto varchar(50),
	@iFK_IdPersona int,
	@iId_ExperienciaLaboral int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[IATExperienciaLaboral]
(
	[Empresa],
	[Puesto],
	[FK_IdPersona]
)
VALUES
(
	@sEmpresa,
	@sPuesto,
	@iFK_IdPersona
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iId_ExperienciaLaboral=SCOPE_IDENTITY()
GO


-- //// Procedimiento almacenado de update para una sola fila.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATExperienciaLaboral_Actualizar]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATExperienciaLaboral_Actualizar]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'IATExperienciaLaboral'
-- Recibe: @iId_ExperienciaLaboral int
-- Recibe: @sEmpresa varchar(60)
-- Recibe: @sPuesto varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_Actualizar]
	@iId_ExperienciaLaboral int,
	@sEmpresa varchar(60),
	@sPuesto varchar(50),
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATExperienciaLaboral]
SET 
	[Empresa] = @sEmpresa,
	[Puesto] = @sPuesto,
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[Id_ExperienciaLaboral] = @iId_ExperienciaLaboral


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento almacenado de actualizar para una o más filas usando el campo [FK_IdPersona].
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATExperienciaLaboral_ActualizarTodos_Con_FK_IdPersona_FK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATExperienciaLaboral_ActualizarTodos_Con_FK_IdPersona_FK]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'IATExperienciaLaboral'.
-- Actualiza el campo [FK_IdPersona] con el valor anterior de@iFK_IdPersona  al valor @iFK_IdPersona
-- Recibe: @iFK_IdPersona int
-- Recibe: @iFK_IdPersonaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_ActualizarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iFK_IdPersonaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[IATExperienciaLaboral]
SET
	[FK_IdPersona] = @iFK_IdPersona
WHERE
	[FK_IdPersona] = @iFK_IdPersonaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento Eliminar usando la llave primaria.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATExperienciaLaboral_Eliminar]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATExperienciaLaboral_Eliminar]
GO

---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'IATExperienciaLaboral'
-- utilizando la llave primaria. 
-- Recibe: @iId_ExperienciaLaboral int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_Eliminar]
	@iId_ExperienciaLaboral int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[IATExperienciaLaboral]
WHERE
	[Id_ExperienciaLaboral] = @iId_ExperienciaLaboral


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento almacenado de Delete, basado en el campo  [FK_IdPersona].
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATExperienciaLaboral_EliminarTodo_FK_FK_IdPersona]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATExperienciaLaboral_EliminarTodo_FK_FK_IdPersona]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'IATExperienciaLaboral'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_EliminarTodo_FK_FK_IdPersona]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[IATExperienciaLaboral]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento almacenado de Select basado en la llave primaria.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATExperienciaLaboral_SeleccionarUno]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATExperienciaLaboral_SeleccionarUno]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'IATExperienciaLaboral'
-- basado en la llave primaria.
-- Recibe: @iId_ExperienciaLaboral int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_SeleccionarUno]
	@iId_ExperienciaLaboral int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[IATExperienciaLaboral]
WHERE
	[Id_ExperienciaLaboral] = @iId_ExperienciaLaboral


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento para seleccionar todos los registros.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATExperienciaLaboral_SeleccionarTodos]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATExperienciaLaboral_SeleccionarTodos]
GO

---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'IATExperienciaLaboral'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[IATExperienciaLaboral]
ORDER BY 
	[Id_ExperienciaLaboral] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento Select, basado en el campo [FK_IdPersona].
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATExperienciaLaboral_SeleccionarTodos_Con_FK_IdPersona_FK]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATExperienciaLaboral_SeleccionarTodos_Con_FK_IdPersona_FK]
GO

---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'IATExperienciaLaboral'
-- basado en un campo llave primaria.
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_SeleccionarTodos_Con_FK_IdPersona_FK]
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[IATExperienciaLaboral]
WHERE
	[FK_IdPersona] = @iFK_IdPersona


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- //// Procedimiento almacenado de Busqueda.
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pr_IATExperienciaLaboral_Buscar]') and OBJECTPROPERTY(id, N'IsProcedure') = 1) drop procedure [dbo].[pr_IATExperienciaLaboral_Buscar]
GO

---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'IATExperienciaLaboral'
-- Recibe: @iId_ExperienciaLaboral int
-- Recibe: @sEmpresa varchar(60)
-- Recibe: @sPuesto varchar(50)
-- Recibe: @iFK_IdPersona int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_IATExperienciaLaboral_Buscar]
	@iId_ExperienciaLaboral int,
	@sEmpresa varchar(60),
	@sPuesto varchar(50),
	@iFK_IdPersona int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[IATExperienciaLaboral] 
 WHERE 
	(@iId_ExperienciaLaboral IS NULL OR [Id_ExperienciaLaboral] = @iId_ExperienciaLaboral) AND 
	(@sEmpresa IS NULL OR [Empresa] LIKE @sEmpresa) AND 
	(@sPuesto IS NULL OR [Puesto] LIKE @sPuesto) AND 
	(@iFK_IdPersona IS NULL OR [FK_IdPersona] = @iFK_IdPersona)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO


-- [Fin de los procedimientos almacenados para la tabla:     IATExperienciaLaboral]
-- ========================================================================================================
GO
