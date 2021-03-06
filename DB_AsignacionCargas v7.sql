USE [master]
GO
/****** Object:  Database [DB_AsignacionCargas]    Script Date: 05/24/2015 13:40:38 ******/
CREATE DATABASE [DB_AsignacionCargas] ON  PRIMARY 
( NAME = N'DB_AsignacionCargas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER2008\MSSQL\DATA\DB_AsignacionCargas.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_AsignacionCargas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER2008\MSSQL\DATA\DB_AsignacionCargas_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_AsignacionCargas] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_AsignacionCargas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_AsignacionCargas] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET ARITHABORT OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DB_AsignacionCargas] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DB_AsignacionCargas] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DB_AsignacionCargas] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET  DISABLE_BROKER
GO
ALTER DATABASE [DB_AsignacionCargas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DB_AsignacionCargas] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DB_AsignacionCargas] SET  READ_WRITE
GO
ALTER DATABASE [DB_AsignacionCargas] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DB_AsignacionCargas] SET  MULTI_USER
GO
ALTER DATABASE [DB_AsignacionCargas] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DB_AsignacionCargas] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_AsignacionCargas', N'ON'
GO
USE [DB_AsignacionCargas]
GO
/****** Object:  Table [dbo].[tipoUsuario]    Script Date: 05/24/2015 13:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipoUsuario](
	[idTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[tipoUsuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipoUsuario] PRIMARY KEY CLUSTERED 
(
	[idTipoUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipoProfesor]    Script Date: 05/24/2015 13:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipoProfesor](
	[idTipoProfesor] [int] IDENTITY(1,1) NOT NULL,
	[tipoProfesor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipoProfesor] PRIMARY KEY CLUSTERED 
(
	[idTipoProfesor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoPrioridad]    Script Date: 05/24/2015 13:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPrioridad](
	[idTipoPrioridad] [int] IDENTITY(1,1) NOT NULL,
	[tipoPrioridad] [varchar](10) NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_TipoPrioridad] PRIMARY KEY CLUSTERED 
(
	[idTipoPrioridad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipoContacto]    Script Date: 05/24/2015 13:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipoContacto](
	[idTipoContacto] [int] IDENTITY(1,1) NOT NULL,
	[tipoContacto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipoContacto] PRIMARY KEY CLUSTERED 
(
	[idTipoContacto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 05/24/2015 13:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sede](
	[idSede] [int] IDENTITY(1,1) NOT NULL,
	[nombreSede] [varchar](50) NOT NULL,
	[codigoSede] [varchar](10) NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_Sede] PRIMARY KEY CLUSTERED 
(
	[idSede] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'PreferenciasCurso'
-- basado en la llave primaria.
-- Recibe: @iidPreferenciaCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_SeleccionarUno]
	@iidPreferenciaCurso int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[PreferenciasCurso]
WHERE
	[idPreferenciaCurso] = @iidPreferenciaCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idSede_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idSede int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idSede_FK]
	@ifk_idSede int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idSede] = @ifk_idSede


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idfranjaHoraria_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idfranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idfranjaHoraria_FK]
	@ifk_idfranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idfranjaHoraria] = @ifk_idfranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idCurso_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_SeleccionarTodos_Con_fk_idCurso_FK]
	@ifk_idCurso int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idCurso] = @ifk_idCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'PreferenciasCurso'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[PreferenciasCurso]
ORDER BY 
	[idPreferenciaCurso] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'PreferenciasCurso'
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idfranjaHoraria int
-- Recibe: @spreferencia nchar(1)
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iidPreferenciaCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_Insertar]
	@ifk_idProfesor int,
	@ifk_idCurso int,
	@ifk_idfranjaHoraria int,
	@spreferencia nchar(1),
	@ifk_idSede int,
	@ifk_idPeriodo int,
	@iidPreferenciaCurso int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[PreferenciasCurso]
(
	[fk_idProfesor],
	[fk_idCurso],
	[fk_idfranjaHoraria],
	[preferencia],
	[fk_idSede],
	[fk_idPeriodo]
)
VALUES
(
	@ifk_idProfesor,
	@ifk_idCurso,
	@ifk_idfranjaHoraria,
	@spreferencia,
	@ifk_idSede,
	@ifk_idPeriodo
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidPreferenciaCurso=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idSede]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idSede int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idSede]
	@ifk_idSede int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idSede] = @ifk_idSede


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idProfesor]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idProfesor]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idPeriodo]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idPeriodo]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idfranjaHoraria]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idfranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idfranjaHoraria]
	@ifk_idfranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idfranjaHoraria] = @ifk_idfranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idCurso]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciasCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_EliminarTodo_FK_fk_idCurso]
	@ifk_idCurso int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciasCurso]
WHERE
	[fk_idCurso] = @ifk_idCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'PreferenciasCurso'
-- utilizando la llave primaria. 
-- Recibe: @iidPreferenciaCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_Eliminar]
	@iidPreferenciaCurso int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[PreferenciasCurso]
WHERE
	[idPreferenciaCurso] = @iidPreferenciaCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'PreferenciasCurso'
-- Recibe: @iidPreferenciaCurso int
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idfranjaHoraria int
-- Recibe: @spreferencia nchar(1)
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_Buscar]
	@iidPreferenciaCurso int,
	@ifk_idProfesor int,
	@ifk_idCurso int,
	@ifk_idfranjaHoraria int,
	@spreferencia nchar(1),
	@ifk_idSede int,
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[PreferenciasCurso] 
 WHERE 
	(@iidPreferenciaCurso IS NULL OR [idPreferenciaCurso] = @iidPreferenciaCurso) AND 
	(@ifk_idProfesor IS NULL OR [fk_idProfesor] = @ifk_idProfesor) AND 
	(@ifk_idCurso IS NULL OR [fk_idCurso] = @ifk_idCurso) AND 
	(@ifk_idfranjaHoraria IS NULL OR [fk_idfranjaHoraria] = @ifk_idfranjaHoraria) AND 
	(@spreferencia IS NULL OR [preferencia] LIKE @spreferencia) AND 
	(@ifk_idSede IS NULL OR [fk_idSede] = @ifk_idSede) AND 
	(@ifk_idPeriodo IS NULL OR [fk_idPeriodo] = @ifk_idPeriodo)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idSede_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciasCurso'.
-- Actualiza el campo [fk_idSede] con el valor anterior de@ifk_idSede  al valor @ifk_idSede
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idSedeOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idSede_FK]
	@ifk_idSede int,
	@ifk_idSedeOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciasCurso]
SET
	[fk_idSede] = @ifk_idSede
WHERE
	[fk_idSede] = @ifk_idSedeOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciasCurso'.
-- Actualiza el campo [fk_idProfesor] con el valor anterior de@ifk_idProfesor  al valor @ifk_idProfesor
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idProfesorOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@ifk_idProfesorOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciasCurso]
SET
	[fk_idProfesor] = @ifk_idProfesor
WHERE
	[fk_idProfesor] = @ifk_idProfesorOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciasCurso'.
-- Actualiza el campo [fk_idPeriodo] con el valor anterior de@ifk_idPeriodo  al valor @ifk_idPeriodo
-- Recibe: @ifk_idPeriodo int
-- Recibe: @ifk_idPeriodoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@ifk_idPeriodoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciasCurso]
SET
	[fk_idPeriodo] = @ifk_idPeriodo
WHERE
	[fk_idPeriodo] = @ifk_idPeriodoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idfranjaHoraria_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciasCurso'.
-- Actualiza el campo [fk_idfranjaHoraria] con el valor anterior de@ifk_idfranjaHoraria  al valor @ifk_idfranjaHoraria
-- Recibe: @ifk_idfranjaHoraria int
-- Recibe: @ifk_idfranjaHorariaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idfranjaHoraria_FK]
	@ifk_idfranjaHoraria int,
	@ifk_idfranjaHorariaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciasCurso]
SET
	[fk_idfranjaHoraria] = @ifk_idfranjaHoraria
WHERE
	[fk_idfranjaHoraria] = @ifk_idfranjaHorariaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idCurso_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciasCurso'.
-- Actualiza el campo [fk_idCurso] con el valor anterior de@ifk_idCurso  al valor @ifk_idCurso
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idCursoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_ActualizarTodos_Con_fk_idCurso_FK]
	@ifk_idCurso int,
	@ifk_idCursoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciasCurso]
SET
	[fk_idCurso] = @ifk_idCurso
WHERE
	[fk_idCurso] = @ifk_idCursoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciasCurso_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'PreferenciasCurso'
-- Recibe: @iidPreferenciaCurso int
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idfranjaHoraria int
-- Recibe: @spreferencia nchar(1)
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciasCurso_Actualizar]
	@iidPreferenciaCurso int,
	@ifk_idProfesor int,
	@ifk_idCurso int,
	@ifk_idfranjaHoraria int,
	@spreferencia nchar(1),
	@ifk_idSede int,
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciasCurso]
SET 
	[fk_idProfesor] = @ifk_idProfesor,
	[fk_idCurso] = @ifk_idCurso,
	[fk_idfranjaHoraria] = @ifk_idfranjaHoraria,
	[preferencia] = @spreferencia,
	[fk_idSede] = @ifk_idSede,
	[fk_idPeriodo] = @ifk_idPeriodo
WHERE
	[idPreferenciaCurso] = @iidPreferenciaCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[idDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[nombreDepartamento] [varchar](50) NULL,
	[codigoDepartamento] [varchar](10) NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gradoAcademico]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gradoAcademico](
	[idGradoAcademico] [int] IDENTITY(1,1) NOT NULL,
	[gradoAcademico] [varchar](50) NOT NULL,
	[abreviaturaGrado] [nchar](5) NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_gradoAcademico] PRIMARY KEY CLUSTERED 
(
	[idGradoAcademico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[franjaHoraria]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[franjaHoraria](
	[idFranjaHoraria] [int] IDENTITY(1,1) NOT NULL,
	[horaInicio] [time](0) NOT NULL,
	[horaFinal] [time](0) NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_franjaHoraria] PRIMARY KEY CLUSTERED 
(
	[idFranjaHoraria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvaluacionProfesor]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluacionProfesor](
	[idEvaluacionProfesor] [int] IDENTITY(1,1) NOT NULL,
	[evaluacion] [decimal](5, 2) NOT NULL,
	[fecha] [date] NOT NULL,
	[fk_idProfesor] [int] NOT NULL,
	[fk_idPeriodo] [int] NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_PromedioProfesor] PRIMARY KEY CLUSTERED 
(
	[idEvaluacionProfesor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modalidad]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modalidad](
	[idModalidad] [int] IDENTITY(1,1) NOT NULL,
	[codigoModalidad] [varchar](10) NOT NULL,
	[modalidad] [varchar](50) NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_Modalidad] PRIMARY KEY CLUSTERED 
(
	[idModalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JornadaLaboral]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JornadaLaboral](
	[idJornada] [int] IDENTITY(1,1) NOT NULL,
	[tipoJornadaLaboral] [varchar](50) NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_JornadaLaboral] PRIMARY KEY CLUSTERED 
(
	[idJornada] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_Departamento_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'Departamento'
-- basado en la llave primaria.
-- Recibe: @iidDepartamento int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Departamento_SeleccionarUno]
	@iidDepartamento int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[Departamento]
WHERE
	[idDepartamento] = @iidDepartamento


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Departamento_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'Departamento'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Departamento_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[Departamento]
ORDER BY 
	[idDepartamento] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Departamento_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'Departamento'
-- Recibe: @snombreDepartamento varchar(50)
-- Recibe: @scodigoDepartamento varchar(10)
-- Recibe: @sieliminado smallint
-- Retorna: @iidDepartamento int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Departamento_Insertar]
	@snombreDepartamento varchar(50),
	@scodigoDepartamento varchar(10),
	@sieliminado smallint,
	@iidDepartamento int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[Departamento]
(
	[nombreDepartamento],
	[codigoDepartamento],
	[eliminado]
)
VALUES
(
	@snombreDepartamento,
	@scodigoDepartamento,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidDepartamento=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_Departamento_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'Departamento'
-- utilizando la llave primaria. 
-- Recibe: @iidDepartamento int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Departamento_Eliminar]
	@iidDepartamento int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[Departamento]
WHERE
	[idDepartamento] = @iidDepartamento


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Departamento_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Departamento'
-- Recibe: @iidDepartamento int
-- Recibe: @snombreDepartamento varchar(50)
-- Recibe: @scodigoDepartamento varchar(10)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Departamento_Buscar]
	@iidDepartamento int,
	@snombreDepartamento varchar(50),
	@scodigoDepartamento varchar(10),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[Departamento] 
 WHERE 
	(@iidDepartamento IS NULL OR [idDepartamento] = @iidDepartamento) AND 
	(@snombreDepartamento IS NULL OR [nombreDepartamento] LIKE @snombreDepartamento) AND 
	(@scodigoDepartamento IS NULL OR [codigoDepartamento] LIKE @scodigoDepartamento) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Departamento_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'Departamento'
-- Recibe: @iidDepartamento int
-- Recibe: @snombreDepartamento varchar(50)
-- Recibe: @scodigoDepartamento varchar(10)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Departamento_Actualizar]
	@iidDepartamento int,
	@snombreDepartamento varchar(50),
	@scodigoDepartamento varchar(10),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Departamento]
SET 
	[nombreDepartamento] = @snombreDepartamento,
	[codigoDepartamento] = @scodigoDepartamento,
	[eliminado] = @sieliminado
WHERE
	[idDepartamento] = @iidDepartamento


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[Periodo]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Periodo](
	[idPeriodo] [int] IDENTITY(1,1) NOT NULL,
	[anyo] [int] NOT NULL,
	[fk_idModalidad] [int] NOT NULL,
	[numeroPeriodo] [int] NOT NULL,
	[eliminado] [smallint] NULL,
 CONSTRAINT [PK_Periodo] PRIMARY KEY CLUSTERED 
(
	[idPeriodo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiasFranja]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiasFranja](
	[idDiasFranja] [int] IDENTITY(1,1) NOT NULL,
	[fk_idFranjaHoraria] [int] NOT NULL,
	[dia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DiasFranja] PRIMARY KEY CLUSTERED 
(
	[idDiasFranja] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Curso](
	[idCurso] [int] IDENTITY(1,1) NOT NULL,
	[codigoCurso] [varchar](10) NOT NULL,
	[nombreCurso] [varchar](50) NOT NULL,
	[fk_idGradoAcademinico] [int] NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_Modalidad_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'Modalidad'
-- basado en la llave primaria.
-- Recibe: @iidModalidad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Modalidad_SeleccionarUno]
	@iidModalidad int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[Modalidad]
WHERE
	[idModalidad] = @iidModalidad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Modalidad_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'Modalidad'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Modalidad_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[Modalidad]
ORDER BY 
	[idModalidad] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Modalidad_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'Modalidad'
-- Recibe: @scodigoModalidad varchar(10)
-- Recibe: @smodalidad varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iidModalidad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Modalidad_Insertar]
	@scodigoModalidad varchar(10),
	@smodalidad varchar(50),
	@sieliminado smallint,
	@iidModalidad int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[Modalidad]
(
	[codigoModalidad],
	[modalidad],
	[eliminado]
)
VALUES
(
	@scodigoModalidad,
	@smodalidad,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidModalidad=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_Modalidad_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'Modalidad'
-- utilizando la llave primaria. 
-- Recibe: @iidModalidad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Modalidad_Eliminar]
	@iidModalidad int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[Modalidad]
WHERE
	[idModalidad] = @iidModalidad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Modalidad_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Modalidad'
-- Recibe: @iidModalidad int
-- Recibe: @scodigoModalidad varchar(10)
-- Recibe: @smodalidad varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Modalidad_Buscar]
	@iidModalidad int,
	@scodigoModalidad varchar(10),
	@smodalidad varchar(50),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[Modalidad] 
 WHERE 
	(@iidModalidad IS NULL OR [idModalidad] = @iidModalidad) AND 
	(@scodigoModalidad IS NULL OR [codigoModalidad] LIKE @scodigoModalidad) AND 
	(@smodalidad IS NULL OR [modalidad] LIKE @smodalidad) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Modalidad_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'Modalidad'
-- Recibe: @iidModalidad int
-- Recibe: @scodigoModalidad varchar(10)
-- Recibe: @smodalidad varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Modalidad_Actualizar]
	@iidModalidad int,
	@scodigoModalidad varchar(10),
	@smodalidad varchar(50),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Modalidad]
SET 
	[codigoModalidad] = @scodigoModalidad,
	[modalidad] = @smodalidad,
	[eliminado] = @sieliminado
WHERE
	[idModalidad] = @iidModalidad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_JornadaLaboral_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'JornadaLaboral'
-- basado en la llave primaria.
-- Recibe: @iidJornada int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_JornadaLaboral_SeleccionarUno]
	@iidJornada int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[JornadaLaboral]
WHERE
	[idJornada] = @iidJornada


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_JornadaLaboral_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'JornadaLaboral'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_JornadaLaboral_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[JornadaLaboral]
ORDER BY 
	[idJornada] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_JornadaLaboral_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'JornadaLaboral'
-- Recibe: @stipoJornadaLaboral varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iidJornada int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_JornadaLaboral_Insertar]
	@stipoJornadaLaboral varchar(50),
	@sieliminado smallint,
	@iidJornada int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[JornadaLaboral]
(
	[tipoJornadaLaboral],
	[eliminado]
)
VALUES
(
	@stipoJornadaLaboral,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidJornada=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_JornadaLaboral_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'JornadaLaboral'
-- utilizando la llave primaria. 
-- Recibe: @iidJornada int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_JornadaLaboral_Eliminar]
	@iidJornada int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[JornadaLaboral]
WHERE
	[idJornada] = @iidJornada


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_JornadaLaboral_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'JornadaLaboral'
-- Recibe: @iidJornada int
-- Recibe: @stipoJornadaLaboral varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_JornadaLaboral_Buscar]
	@iidJornada int,
	@stipoJornadaLaboral varchar(50),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[JornadaLaboral] 
 WHERE 
	(@iidJornada IS NULL OR [idJornada] = @iidJornada) AND 
	(@stipoJornadaLaboral IS NULL OR [tipoJornadaLaboral] LIKE @stipoJornadaLaboral) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_JornadaLaboral_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'JornadaLaboral'
-- Recibe: @iidJornada int
-- Recibe: @stipoJornadaLaboral varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_JornadaLaboral_Actualizar]
	@iidJornada int,
	@stipoJornadaLaboral varchar(50),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[JornadaLaboral]
SET 
	[tipoJornadaLaboral] = @stipoJornadaLaboral,
	[eliminado] = @sieliminado
WHERE
	[idJornada] = @iidJornada


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoUsuario_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'tipoUsuario'
-- basado en la llave primaria.
-- Recibe: @iidTipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoUsuario_SeleccionarUno]
	@iidTipoUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[tipoUsuario]
WHERE
	[idTipoUsuario] = @iidTipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoUsuario_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'tipoUsuario'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoUsuario_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[tipoUsuario]
ORDER BY 
	[idTipoUsuario] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoUsuario_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'tipoUsuario'
-- Recibe: @stipoUsuario varchar(50)
-- Retorna: @iidTipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoUsuario_Insertar]
	@stipoUsuario varchar(50),
	@iidTipoUsuario int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[tipoUsuario]
(
	[tipoUsuario]
)
VALUES
(
	@stipoUsuario
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidTipoUsuario=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoUsuario_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'tipoUsuario'
-- utilizando la llave primaria. 
-- Recibe: @iidTipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoUsuario_Eliminar]
	@iidTipoUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[tipoUsuario]
WHERE
	[idTipoUsuario] = @iidTipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoUsuario_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'tipoUsuario'
-- Recibe: @iidTipoUsuario int
-- Recibe: @stipoUsuario varchar(50)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoUsuario_Buscar]
	@iidTipoUsuario int,
	@stipoUsuario varchar(50),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[tipoUsuario] 
 WHERE 
	(@iidTipoUsuario IS NULL OR [idTipoUsuario] = @iidTipoUsuario) AND 
	(@stipoUsuario IS NULL OR [tipoUsuario] LIKE @stipoUsuario)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoUsuario_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'tipoUsuario'
-- Recibe: @iidTipoUsuario int
-- Recibe: @stipoUsuario varchar(50)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoUsuario_Actualizar]
	@iidTipoUsuario int,
	@stipoUsuario varchar(50),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[tipoUsuario]
SET 
	[tipoUsuario] = @stipoUsuario
WHERE
	[idTipoUsuario] = @iidTipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoProfesor_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'tipoProfesor'
-- basado en la llave primaria.
-- Recibe: @iidTipoProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoProfesor_SeleccionarUno]
	@iidTipoProfesor int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[tipoProfesor]
WHERE
	[idTipoProfesor] = @iidTipoProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoProfesor_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'tipoProfesor'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoProfesor_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[tipoProfesor]
ORDER BY 
	[idTipoProfesor] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoProfesor_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'tipoProfesor'
-- Recibe: @stipoProfesor varchar(50)
-- Retorna: @iidTipoProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoProfesor_Insertar]
	@stipoProfesor varchar(50),
	@iidTipoProfesor int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[tipoProfesor]
(
	[tipoProfesor]
)
VALUES
(
	@stipoProfesor
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidTipoProfesor=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoProfesor_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'tipoProfesor'
-- utilizando la llave primaria. 
-- Recibe: @iidTipoProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoProfesor_Eliminar]
	@iidTipoProfesor int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[tipoProfesor]
WHERE
	[idTipoProfesor] = @iidTipoProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoProfesor_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'tipoProfesor'
-- Recibe: @iidTipoProfesor int
-- Recibe: @stipoProfesor varchar(50)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoProfesor_Buscar]
	@iidTipoProfesor int,
	@stipoProfesor varchar(50),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[tipoProfesor] 
 WHERE 
	(@iidTipoProfesor IS NULL OR [idTipoProfesor] = @iidTipoProfesor) AND 
	(@stipoProfesor IS NULL OR [tipoProfesor] LIKE @stipoProfesor)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoProfesor_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'tipoProfesor'
-- Recibe: @iidTipoProfesor int
-- Recibe: @stipoProfesor varchar(50)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoProfesor_Actualizar]
	@iidTipoProfesor int,
	@stipoProfesor varchar(50),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[tipoProfesor]
SET 
	[tipoProfesor] = @stipoProfesor
WHERE
	[idTipoProfesor] = @iidTipoProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_TipoPrioridad_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'TipoPrioridad'
-- basado en la llave primaria.
-- Recibe: @iidTipoPrioridad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_TipoPrioridad_SeleccionarUno]
	@iidTipoPrioridad int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[TipoPrioridad]
WHERE
	[idTipoPrioridad] = @iidTipoPrioridad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_TipoPrioridad_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'TipoPrioridad'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_TipoPrioridad_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[TipoPrioridad]
ORDER BY 
	[idTipoPrioridad] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_TipoPrioridad_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'TipoPrioridad'
-- Recibe: @stipoPrioridad varchar(10)
-- Recibe: @sieliminado smallint
-- Retorna: @iidTipoPrioridad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_TipoPrioridad_Insertar]
	@stipoPrioridad varchar(10),
	@sieliminado smallint,
	@iidTipoPrioridad int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[TipoPrioridad]
(
	[tipoPrioridad],
	[eliminado]
)
VALUES
(
	@stipoPrioridad,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidTipoPrioridad=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_TipoPrioridad_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'TipoPrioridad'
-- utilizando la llave primaria. 
-- Recibe: @iidTipoPrioridad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_TipoPrioridad_Eliminar]
	@iidTipoPrioridad int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[TipoPrioridad]
WHERE
	[idTipoPrioridad] = @iidTipoPrioridad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_TipoPrioridad_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'TipoPrioridad'
-- Recibe: @iidTipoPrioridad int
-- Recibe: @stipoPrioridad varchar(10)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_TipoPrioridad_Buscar]
	@iidTipoPrioridad int,
	@stipoPrioridad varchar(10),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[TipoPrioridad] 
 WHERE 
	(@iidTipoPrioridad IS NULL OR [idTipoPrioridad] = @iidTipoPrioridad) AND 
	(@stipoPrioridad IS NULL OR [tipoPrioridad] LIKE @stipoPrioridad) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_TipoPrioridad_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'TipoPrioridad'
-- Recibe: @iidTipoPrioridad int
-- Recibe: @stipoPrioridad varchar(10)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_TipoPrioridad_Actualizar]
	@iidTipoPrioridad int,
	@stipoPrioridad varchar(10),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[TipoPrioridad]
SET 
	[tipoPrioridad] = @stipoPrioridad,
	[eliminado] = @sieliminado
WHERE
	[idTipoPrioridad] = @iidTipoPrioridad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoContacto_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'tipoContacto'
-- basado en la llave primaria.
-- Recibe: @iidTipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoContacto_SeleccionarUno]
	@iidTipoContacto int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[tipoContacto]
WHERE
	[idTipoContacto] = @iidTipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoContacto_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'tipoContacto'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoContacto_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[tipoContacto]
ORDER BY 
	[idTipoContacto] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoContacto_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'tipoContacto'
-- Recibe: @stipoContacto varchar(50)
-- Retorna: @iidTipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoContacto_Insertar]
	@stipoContacto varchar(50),
	@iidTipoContacto int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[tipoContacto]
(
	[tipoContacto]
)
VALUES
(
	@stipoContacto
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidTipoContacto=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoContacto_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'tipoContacto'
-- utilizando la llave primaria. 
-- Recibe: @iidTipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoContacto_Eliminar]
	@iidTipoContacto int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[tipoContacto]
WHERE
	[idTipoContacto] = @iidTipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoContacto_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'tipoContacto'
-- Recibe: @iidTipoContacto int
-- Recibe: @stipoContacto varchar(50)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoContacto_Buscar]
	@iidTipoContacto int,
	@stipoContacto varchar(50),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[tipoContacto] 
 WHERE 
	(@iidTipoContacto IS NULL OR [idTipoContacto] = @iidTipoContacto) AND 
	(@stipoContacto IS NULL OR [tipoContacto] LIKE @stipoContacto)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_tipoContacto_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'tipoContacto'
-- Recibe: @iidTipoContacto int
-- Recibe: @stipoContacto varchar(50)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_tipoContacto_Actualizar]
	@iidTipoContacto int,
	@stipoContacto varchar(50),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[tipoContacto]
SET 
	[tipoContacto] = @stipoContacto
WHERE
	[idTipoContacto] = @iidTipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Sede_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'Sede'
-- basado en la llave primaria.
-- Recibe: @iidSede int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Sede_SeleccionarUno]
	@iidSede int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[Sede]
WHERE
	[idSede] = @iidSede


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Sede_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'Sede'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Sede_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[Sede]
ORDER BY 
	[idSede] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Sede_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'Sede'
-- Recibe: @snombreSede varchar(50)
-- Recibe: @scodigoSede varchar(10)
-- Recibe: @sieliminado smallint
-- Retorna: @iidSede int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Sede_Insertar]
	@snombreSede varchar(50),
	@scodigoSede varchar(10),
	@sieliminado smallint,
	@iidSede int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[Sede]
(
	[nombreSede],
	[codigoSede],
	[eliminado]
)
VALUES
(
	@snombreSede,
	@scodigoSede,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidSede=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_Sede_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'Sede'
-- utilizando la llave primaria. 
-- Recibe: @iidSede int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Sede_Eliminar]
	@iidSede int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[Sede]
WHERE
	[idSede] = @iidSede


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Sede_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Sede'
-- Recibe: @iidSede int
-- Recibe: @snombreSede varchar(50)
-- Recibe: @scodigoSede varchar(10)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Sede_Buscar]
	@iidSede int,
	@snombreSede varchar(50),
	@scodigoSede varchar(10),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[Sede] 
 WHERE 
	(@iidSede IS NULL OR [idSede] = @iidSede) AND 
	(@snombreSede IS NULL OR [nombreSede] LIKE @snombreSede) AND 
	(@scodigoSede IS NULL OR [codigoSede] LIKE @scodigoSede) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Sede_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'Sede'
-- Recibe: @iidSede int
-- Recibe: @snombreSede varchar(50)
-- Recibe: @scodigoSede varchar(10)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Sede_Actualizar]
	@iidSede int,
	@snombreSede varchar(50),
	@scodigoSede varchar(10),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Sede]
SET 
	[nombreSede] = @snombreSede,
	[codigoSede] = @scodigoSede,
	[eliminado] = @sieliminado
WHERE
	[idSede] = @iidSede


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_gradoAcademico_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'gradoAcademico'
-- basado en la llave primaria.
-- Recibe: @iidGradoAcademico int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_gradoAcademico_SeleccionarUno]
	@iidGradoAcademico int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[gradoAcademico]
WHERE
	[idGradoAcademico] = @iidGradoAcademico


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_gradoAcademico_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'gradoAcademico'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_gradoAcademico_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[gradoAcademico]
ORDER BY 
	[idGradoAcademico] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_gradoAcademico_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'gradoAcademico'
-- Recibe: @sgradoAcademico varchar(50)
-- Recibe: @sabreviaturaGrado nchar(5)
-- Recibe: @sieliminado smallint
-- Retorna: @iidGradoAcademico int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_gradoAcademico_Insertar]
	@sgradoAcademico varchar(50),
	@sabreviaturaGrado nchar(5),
	@sieliminado smallint,
	@iidGradoAcademico int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[gradoAcademico]
(
	[gradoAcademico],
	[abreviaturaGrado],
	[eliminado]
)
VALUES
(
	@sgradoAcademico,
	@sabreviaturaGrado,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidGradoAcademico=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_gradoAcademico_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'gradoAcademico'
-- utilizando la llave primaria. 
-- Recibe: @iidGradoAcademico int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_gradoAcademico_Eliminar]
	@iidGradoAcademico int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[gradoAcademico]
WHERE
	[idGradoAcademico] = @iidGradoAcademico


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_gradoAcademico_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'gradoAcademico'
-- Recibe: @iidGradoAcademico int
-- Recibe: @sgradoAcademico varchar(50)
-- Recibe: @sabreviaturaGrado nchar(5)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_gradoAcademico_Buscar]
	@iidGradoAcademico int,
	@sgradoAcademico varchar(50),
	@sabreviaturaGrado nchar(5),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[gradoAcademico] 
 WHERE 
	(@iidGradoAcademico IS NULL OR [idGradoAcademico] = @iidGradoAcademico) AND 
	(@sgradoAcademico IS NULL OR [gradoAcademico] LIKE @sgradoAcademico) AND 
	(@sabreviaturaGrado IS NULL OR [abreviaturaGrado] LIKE @sabreviaturaGrado) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_gradoAcademico_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'gradoAcademico'
-- Recibe: @iidGradoAcademico int
-- Recibe: @sgradoAcademico varchar(50)
-- Recibe: @sabreviaturaGrado nchar(5)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_gradoAcademico_Actualizar]
	@iidGradoAcademico int,
	@sgradoAcademico varchar(50),
	@sabreviaturaGrado nchar(5),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[gradoAcademico]
SET 
	[gradoAcademico] = @sgradoAcademico,
	[abreviaturaGrado] = @sabreviaturaGrado,
	[eliminado] = @sieliminado
WHERE
	[idGradoAcademico] = @iidGradoAcademico


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_franjaHoraria_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'franjaHoraria'
-- basado en la llave primaria.
-- Recibe: @iidFranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_franjaHoraria_SeleccionarUno]
	@iidFranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[franjaHoraria]
WHERE
	[idFranjaHoraria] = @iidFranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_franjaHoraria_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'franjaHoraria'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_franjaHoraria_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[franjaHoraria]
ORDER BY 
	[idFranjaHoraria] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_franjaHoraria_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'franjaHoraria'
-- Recibe: @tihoraInicio time
-- Recibe: @tihoraFinal time
-- Recibe: @sieliminado smallint
-- Retorna: @iidFranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_franjaHoraria_Insertar]
	@tihoraInicio time,
	@tihoraFinal time,
	@sieliminado smallint,
	@iidFranjaHoraria int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[franjaHoraria]
(
	[horaInicio],
	[horaFinal],
	[eliminado]
)
VALUES
(
	@tihoraInicio,
	@tihoraFinal,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidFranjaHoraria=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_franjaHoraria_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'franjaHoraria'
-- utilizando la llave primaria. 
-- Recibe: @iidFranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_franjaHoraria_Eliminar]
	@iidFranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[franjaHoraria]
WHERE
	[idFranjaHoraria] = @iidFranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_franjaHoraria_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'franjaHoraria'
-- Recibe: @iidFranjaHoraria int
-- Recibe: @tihoraInicio time
-- Recibe: @tihoraFinal time
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_franjaHoraria_Buscar]
	@iidFranjaHoraria int,
	@tihoraInicio time,
	@tihoraFinal time,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[franjaHoraria] 
 WHERE 
	(@iidFranjaHoraria IS NULL OR [idFranjaHoraria] = @iidFranjaHoraria) AND 
	(@tihoraInicio IS NULL OR [horaInicio] >= @tihoraInicio) AND 
	(@tihoraFinal IS NULL OR [horaFinal] >= @tihoraFinal) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_franjaHoraria_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'franjaHoraria'
-- Recibe: @iidFranjaHoraria int
-- Recibe: @tihoraInicio time
-- Recibe: @tihoraFinal time
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_franjaHoraria_Actualizar]
	@iidFranjaHoraria int,
	@tihoraInicio time,
	@tihoraFinal time,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[franjaHoraria]
SET 
	[horaInicio] = @tihoraInicio,
	[horaFinal] = @tihoraFinal,
	[eliminado] = @sieliminado
WHERE
	[idFranjaHoraria] = @iidFranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'EvaluacionProfesor'
-- basado en la llave primaria.
-- Recibe: @iidEvaluacionProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_SeleccionarUno]
	@iidEvaluacionProfesor int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[EvaluacionProfesor]
WHERE
	[idEvaluacionProfesor] = @iidEvaluacionProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_SeleccionarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'EvaluacionProfesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_SeleccionarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[EvaluacionProfesor]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_SeleccionarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'EvaluacionProfesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_SeleccionarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[EvaluacionProfesor]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'EvaluacionProfesor'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[EvaluacionProfesor]
ORDER BY 
	[idEvaluacionProfesor] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'EvaluacionProfesor'
-- Recibe: @dcevaluacion decimal(5, 2)
-- Recibe: @dafecha date
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iidEvaluacionProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_Insertar]
	@dcevaluacion decimal(5, 2),
	@dafecha date,
	@ifk_idProfesor int,
	@ifk_idPeriodo int,
	@sieliminado smallint,
	@iidEvaluacionProfesor int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[EvaluacionProfesor]
(
	[evaluacion],
	[fecha],
	[fk_idProfesor],
	[fk_idPeriodo],
	[eliminado]
)
VALUES
(
	@dcevaluacion,
	@dafecha,
	@ifk_idProfesor,
	@ifk_idPeriodo,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidEvaluacionProfesor=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_EliminarTodo_FK_fk_idProfesor]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'EvaluacionProfesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_EliminarTodo_FK_fk_idProfesor]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[EvaluacionProfesor]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_EliminarTodo_FK_fk_idPeriodo]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'EvaluacionProfesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_EliminarTodo_FK_fk_idPeriodo]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[EvaluacionProfesor]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'EvaluacionProfesor'
-- utilizando la llave primaria. 
-- Recibe: @iidEvaluacionProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_Eliminar]
	@iidEvaluacionProfesor int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[EvaluacionProfesor]
WHERE
	[idEvaluacionProfesor] = @iidEvaluacionProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[primerApellido] [varchar](50) NOT NULL,
	[segundoApellido] [varchar](50) NOT NULL,
	[login] [varchar](50) NOT NULL,
	[contrasena] [varchar](200) NOT NULL,
	[fk_tipoUsuario] [int] NOT NULL,
	[fraseContrasena] [varchar](50) NOT NULL,
	[cedulaIdentidad] [varchar](50) NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'EvaluacionProfesor'
-- Recibe: @iidEvaluacionProfesor int
-- Recibe: @dcevaluacion decimal(5, 2)
-- Recibe: @dafecha date
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_Buscar]
	@iidEvaluacionProfesor int,
	@dcevaluacion decimal(5, 2),
	@dafecha date,
	@ifk_idProfesor int,
	@ifk_idPeriodo int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[EvaluacionProfesor] 
 WHERE 
	(@iidEvaluacionProfesor IS NULL OR [idEvaluacionProfesor] = @iidEvaluacionProfesor) AND 
	(@dcevaluacion IS NULL OR [evaluacion] = @dcevaluacion) AND 
	(@dafecha IS NULL OR [fecha] >= @dafecha) AND 
	(@ifk_idProfesor IS NULL OR [fk_idProfesor] = @ifk_idProfesor) AND 
	(@ifk_idPeriodo IS NULL OR [fk_idPeriodo] = @ifk_idPeriodo) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_ActualizarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'EvaluacionProfesor'.
-- Actualiza el campo [fk_idProfesor] con el valor anterior de@ifk_idProfesor  al valor @ifk_idProfesor
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idProfesorOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_ActualizarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@ifk_idProfesorOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[EvaluacionProfesor]
SET
	[fk_idProfesor] = @ifk_idProfesor
WHERE
	[fk_idProfesor] = @ifk_idProfesorOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_ActualizarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'EvaluacionProfesor'.
-- Actualiza el campo [fk_idPeriodo] con el valor anterior de@ifk_idPeriodo  al valor @ifk_idPeriodo
-- Recibe: @ifk_idPeriodo int
-- Recibe: @ifk_idPeriodoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_ActualizarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@ifk_idPeriodoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[EvaluacionProfesor]
SET
	[fk_idPeriodo] = @ifk_idPeriodo
WHERE
	[fk_idPeriodo] = @ifk_idPeriodoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'EvaluacionProfesor'
-- Recibe: @iidEvaluacionProfesor int
-- Recibe: @dcevaluacion decimal(5, 2)
-- Recibe: @dafecha date
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_Actualizar]
	@iidEvaluacionProfesor int,
	@dcevaluacion decimal(5, 2),
	@dafecha date,
	@ifk_idProfesor int,
	@ifk_idPeriodo int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[EvaluacionProfesor]
SET 
	[evaluacion] = @dcevaluacion,
	[fecha] = @dafecha,
	[fk_idProfesor] = @ifk_idProfesor,
	[fk_idPeriodo] = @ifk_idPeriodo,
	[eliminado] = @sieliminado
WHERE
	[idEvaluacionProfesor] = @iidEvaluacionProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesor](
	[idProfesor] [int] IDENTITY(1,1) NOT NULL,
	[fk_idDepartamento] [int] NOT NULL,
	[fk_idJornada] [int] NOT NULL,
	[fk_idtipoProfesor] [int] NOT NULL,
	[fechaIngreso] [date] NULL,
	[fk_idGradoAcademico] [int] NULL,
	[Notas] [varchar](300) NULL,
	[fk_idUsuario] [int] NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[idProfesor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'Usuario'
-- basado en la llave primaria.
-- Recibe: @iidUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_SeleccionarUno]
	@iidUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[Usuario]
WHERE
	[idUsuario] = @iidUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_SeleccionarTodos_Con_fk_tipoUsuario_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Usuario'
-- basado en un campo llave primaria.
-- Recibe: @ifk_tipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_SeleccionarTodos_Con_fk_tipoUsuario_FK]
	@ifk_tipoUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Usuario]
WHERE
	[fk_tipoUsuario] = @ifk_tipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'Usuario'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[Usuario]
ORDER BY 
	[idUsuario] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'Usuario'
-- Recibe: @snombre varchar(50)
-- Recibe: @sprimerApellido varchar(50)
-- Recibe: @ssegundoApellido varchar(50)
-- Recibe: @slogin varchar(50)
-- Recibe: @scontrasena varchar(200)
-- Recibe: @ifk_tipoUsuario int
-- Recibe: @sfraseContrasena varchar(50)
-- Recibe: @scedulaIdentidad varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iidUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_Insertar]
	@snombre varchar(50),
	@sprimerApellido varchar(50),
	@ssegundoApellido varchar(50),
	@slogin varchar(50),
	@scontrasena varchar(200),
	@ifk_tipoUsuario int,
	@sfraseContrasena varchar(50),
	@scedulaIdentidad varchar(50),
	@sieliminado smallint,
	@iidUsuario int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[Usuario]
(
	[nombre],
	[primerApellido],
	[segundoApellido],
	[login],
	[contrasena],
	[fk_tipoUsuario],
	[fraseContrasena],
	[cedulaIdentidad],
	[eliminado]
)
VALUES
(
	@snombre,
	@sprimerApellido,
	@ssegundoApellido,
	@slogin,
	@scontrasena,
	@ifk_tipoUsuario,
	@sfraseContrasena,
	@scedulaIdentidad,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidUsuario=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_EliminarTodo_FK_fk_tipoUsuario]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Usuario'
-- basado en un campo llave primaria.
-- Recibe: @ifk_tipoUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_EliminarTodo_FK_fk_tipoUsuario]
	@ifk_tipoUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Usuario]
WHERE
	[fk_tipoUsuario] = @ifk_tipoUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'Usuario'
-- utilizando la llave primaria. 
-- Recibe: @iidUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_Eliminar]
	@iidUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[Usuario]
WHERE
	[idUsuario] = @iidUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Usuario'
-- Recibe: @iidUsuario int
-- Recibe: @snombre varchar(50)
-- Recibe: @sprimerApellido varchar(50)
-- Recibe: @ssegundoApellido varchar(50)
-- Recibe: @slogin varchar(50)
-- Recibe: @scontrasena varchar(200)
-- Recibe: @ifk_tipoUsuario int
-- Recibe: @sfraseContrasena varchar(50)
-- Recibe: @scedulaIdentidad varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_Buscar]
	@iidUsuario int,
	@snombre varchar(50),
	@sprimerApellido varchar(50),
	@ssegundoApellido varchar(50),
	@slogin varchar(50),
	@scontrasena varchar(200),
	@ifk_tipoUsuario int,
	@sfraseContrasena varchar(50),
	@scedulaIdentidad varchar(50),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[Usuario] 
 WHERE 
	(@iidUsuario IS NULL OR [idUsuario] = @iidUsuario) AND 
	(@snombre IS NULL OR [nombre] LIKE @snombre) AND 
	(@sprimerApellido IS NULL OR [primerApellido] LIKE @sprimerApellido) AND 
	(@ssegundoApellido IS NULL OR [segundoApellido] LIKE @ssegundoApellido) AND 
	(@slogin IS NULL OR [login] LIKE @slogin) AND 
	(@scontrasena IS NULL OR [contrasena] LIKE @scontrasena) AND 
	(@ifk_tipoUsuario IS NULL OR [fk_tipoUsuario] = @ifk_tipoUsuario) AND 
	(@sfraseContrasena IS NULL OR [fraseContrasena] LIKE @sfraseContrasena) AND 
	(@scedulaIdentidad IS NULL OR [cedulaIdentidad] LIKE @scedulaIdentidad) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_Autenticar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Usuario'
-- Recibe: @iidUsuario int
-- Recibe: @snombre varchar(50)
-- Recibe: @sprimerApellido varchar(50)
-- Recibe: @ssegundoApellido varchar(50)
-- Recibe: @slogin varchar(50)
-- Recibe: @scontrasena varchar(200)
-- Recibe: @ifk_tipoUsuario int
-- Recibe: @sfraseContrasena varchar(50)
-- Recibe: @scedulaIdentidad varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_Autenticar]
	@slogin varchar(50),
	@scontrasena varchar(200),
	@iCodError int OUTPUT,
	@result varchar(50) OUTPUT
AS
-- Busca filas en la tabla.
 Select @result = B.tipoUsuario 
 FROM [dbo].[Usuario] A
 INNER JOIN  [dbo].[tipoUsuario] B
 ON A.fk_tipoUsuario = B.idTipoUsuario
 WHERE 
	login = @slogin AND 
	contrasena = @scontrasena
RETURN

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_ActualizarTodos_Con_fk_tipoUsuario_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Usuario'.
-- Actualiza el campo [fk_tipoUsuario] con el valor anterior de@ifk_tipoUsuario  al valor @ifk_tipoUsuario
-- Recibe: @ifk_tipoUsuario int
-- Recibe: @ifk_tipoUsuarioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_ActualizarTodos_Con_fk_tipoUsuario_FK]
	@ifk_tipoUsuario int,
	@ifk_tipoUsuarioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Usuario]
SET
	[fk_tipoUsuario] = @ifk_tipoUsuario
WHERE
	[fk_tipoUsuario] = @ifk_tipoUsuarioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Usuario_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'Usuario'
-- Recibe: @iidUsuario int
-- Recibe: @snombre varchar(50)
-- Recibe: @sprimerApellido varchar(50)
-- Recibe: @ssegundoApellido varchar(50)
-- Recibe: @slogin varchar(50)
-- Recibe: @scontrasena varchar(200)
-- Recibe: @ifk_tipoUsuario int
-- Recibe: @sfraseContrasena varchar(50)
-- Recibe: @scedulaIdentidad varchar(50)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Usuario_Actualizar]
	@iidUsuario int,
	@snombre varchar(50),
	@sprimerApellido varchar(50),
	@ssegundoApellido varchar(50),
	@slogin varchar(50),
	@scontrasena varchar(200),
	@ifk_tipoUsuario int,
	@sfraseContrasena varchar(50),
	@scedulaIdentidad varchar(50),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Usuario]
SET 
	[nombre] = @snombre,
	[primerApellido] = @sprimerApellido,
	[segundoApellido] = @ssegundoApellido,
	[login] = @slogin,
	[contrasena] = @scontrasena,
	[fk_tipoUsuario] = @ifk_tipoUsuario,
	[fraseContrasena] = @sfraseContrasena,
	[cedulaIdentidad] = @scedulaIdentidad,
	[eliminado] = @sieliminado
WHERE
	[idUsuario] = @iidUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Periodo_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'Periodo'
-- basado en la llave primaria.
-- Recibe: @iidPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Periodo_SeleccionarUno]
	@iidPeriodo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[Periodo]
WHERE
	[idPeriodo] = @iidPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Periodo_SeleccionarTodos_Con_fk_idModalidad_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Periodo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idModalidad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Periodo_SeleccionarTodos_Con_fk_idModalidad_FK]
	@ifk_idModalidad int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Periodo]
WHERE
	[fk_idModalidad] = @ifk_idModalidad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Periodo_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'Periodo'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Periodo_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[Periodo]
ORDER BY 
	[idPeriodo] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Periodo_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'Periodo'
-- Recibe: @ianyo int
-- Recibe: @ifk_idModalidad int
-- Recibe: @inumeroPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iidPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Periodo_Insertar]
	@ianyo int,
	@ifk_idModalidad int,
	@inumeroPeriodo int,
	@sieliminado smallint,
	@iidPeriodo int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[Periodo]
(
	[anyo],
	[fk_idModalidad],
	[numeroPeriodo],
	[eliminado]
)
VALUES
(
	@ianyo,
	@ifk_idModalidad,
	@inumeroPeriodo,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidPeriodo=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_Periodo_EliminarTodo_FK_fk_idModalidad]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Periodo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idModalidad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Periodo_EliminarTodo_FK_fk_idModalidad]
	@ifk_idModalidad int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Periodo]
WHERE
	[fk_idModalidad] = @ifk_idModalidad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Periodo_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'Periodo'
-- utilizando la llave primaria. 
-- Recibe: @iidPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Periodo_Eliminar]
	@iidPeriodo int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[Periodo]
WHERE
	[idPeriodo] = @iidPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Periodo_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Periodo'
-- Recibe: @iidPeriodo int
-- Recibe: @ianyo int
-- Recibe: @ifk_idModalidad int
-- Recibe: @inumeroPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Periodo_Buscar]
	@iidPeriodo int,
	@ianyo int,
	@ifk_idModalidad int,
	@inumeroPeriodo int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[Periodo] 
 WHERE 
	(@iidPeriodo IS NULL OR [idPeriodo] = @iidPeriodo) AND 
	(@ianyo IS NULL OR [anyo] = @ianyo) AND 
	(@ifk_idModalidad IS NULL OR [fk_idModalidad] = @ifk_idModalidad) AND 
	(@inumeroPeriodo IS NULL OR [numeroPeriodo] = @inumeroPeriodo) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Periodo_ActualizarTodos_Con_fk_idModalidad_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Periodo'.
-- Actualiza el campo [fk_idModalidad] con el valor anterior de@ifk_idModalidad  al valor @ifk_idModalidad
-- Recibe: @ifk_idModalidad int
-- Recibe: @ifk_idModalidadOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Periodo_ActualizarTodos_Con_fk_idModalidad_FK]
	@ifk_idModalidad int,
	@ifk_idModalidadOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Periodo]
SET
	[fk_idModalidad] = @ifk_idModalidad
WHERE
	[fk_idModalidad] = @ifk_idModalidadOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Periodo_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'Periodo'
-- Recibe: @iidPeriodo int
-- Recibe: @ianyo int
-- Recibe: @ifk_idModalidad int
-- Recibe: @inumeroPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Periodo_Actualizar]
	@iidPeriodo int,
	@ianyo int,
	@ifk_idModalidad int,
	@inumeroPeriodo int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Periodo]
SET 
	[anyo] = @ianyo,
	[fk_idModalidad] = @ifk_idModalidad,
	[numeroPeriodo] = @inumeroPeriodo,
	[eliminado] = @sieliminado
WHERE
	[idPeriodo] = @iidPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacto](
	[idContacto] [int] IDENTITY(1,1) NOT NULL,
	[fk_idtipoContacto] [int] NOT NULL,
	[fk_idUsuario] [int] NOT NULL,
	[contacto] [varchar](250) NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_Contacto] PRIMARY KEY CLUSTERED 
(
	[idContacto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[pr_DiasFranja_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'DiasFranja'
-- basado en la llave primaria.
-- Recibe: @iidDiasFranja int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_DiasFranja_SeleccionarUno]
	@iidDiasFranja int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[DiasFranja]
WHERE
	[idDiasFranja] = @iidDiasFranja


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_DiasFranja_SeleccionarTodos_Con_fk_idFranjaHoraria_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'DiasFranja'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idFranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_DiasFranja_SeleccionarTodos_Con_fk_idFranjaHoraria_FK]
	@ifk_idFranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[DiasFranja]
WHERE
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_DiasFranja_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'DiasFranja'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_DiasFranja_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[DiasFranja]
ORDER BY 
	[idDiasFranja] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_DiasFranja_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'DiasFranja'
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @sdia varchar(50)
-- Retorna: @iidDiasFranja int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_DiasFranja_Insertar]
	@ifk_idFranjaHoraria int,
	@sdia varchar(50),
	@iidDiasFranja int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[DiasFranja]
(
	[fk_idFranjaHoraria],
	[dia]
)
VALUES
(
	@ifk_idFranjaHoraria,
	@sdia
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidDiasFranja=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_DiasFranja_EliminarTodo_FK_fk_idFranjaHoraria]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'DiasFranja'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idFranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_DiasFranja_EliminarTodo_FK_fk_idFranjaHoraria]
	@ifk_idFranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[DiasFranja]
WHERE
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_DiasFranja_Eliminar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'DiasFranja'
-- utilizando la llave primaria. 
-- Recibe: @iidDiasFranja int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_DiasFranja_Eliminar]
	@iidDiasFranja int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[DiasFranja]
WHERE
	[idDiasFranja] = @iidDiasFranja


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_DiasFranja_Buscar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'DiasFranja'
-- Recibe: @iidDiasFranja int
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @sdia varchar(50)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_DiasFranja_Buscar]
	@iidDiasFranja int,
	@ifk_idFranjaHoraria int,
	@sdia varchar(50),
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[DiasFranja] 
 WHERE 
	(@iidDiasFranja IS NULL OR [idDiasFranja] = @iidDiasFranja) AND 
	(@ifk_idFranjaHoraria IS NULL OR [fk_idFranjaHoraria] = @ifk_idFranjaHoraria) AND 
	(@sdia IS NULL OR [dia] LIKE @sdia)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_DiasFranja_ActualizarTodos_Con_fk_idFranjaHoraria_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'DiasFranja'.
-- Actualiza el campo [fk_idFranjaHoraria] con el valor anterior de@ifk_idFranjaHoraria  al valor @ifk_idFranjaHoraria
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @ifk_idFranjaHorariaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_DiasFranja_ActualizarTodos_Con_fk_idFranjaHoraria_FK]
	@ifk_idFranjaHoraria int,
	@ifk_idFranjaHorariaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[DiasFranja]
SET
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria
WHERE
	[fk_idFranjaHoraria] = @ifk_idFranjaHorariaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_DiasFranja_Actualizar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'DiasFranja'
-- Recibe: @iidDiasFranja int
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @sdia varchar(50)
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_DiasFranja_Actualizar]
	@iidDiasFranja int,
	@ifk_idFranjaHoraria int,
	@sdia varchar(50),
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[DiasFranja]
SET 
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria,
	[dia] = @sdia
WHERE
	[idDiasFranja] = @iidDiasFranja


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Curso_SeleccionarUno]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'Curso'
-- basado en la llave primaria.
-- Recibe: @iidCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Curso_SeleccionarUno]
	@iidCurso int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[Curso]
WHERE
	[idCurso] = @iidCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Curso_SeleccionarTodos_Con_fk_idGradoAcademinico_FK]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Curso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idGradoAcademinico int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Curso_SeleccionarTodos_Con_fk_idGradoAcademinico_FK]
	@ifk_idGradoAcademinico int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Curso]
WHERE
	[fk_idGradoAcademinico] = @ifk_idGradoAcademinico


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Curso_SeleccionarTodos]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'Curso'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Curso_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[Curso]
ORDER BY 
	[idCurso] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Curso_Insertar]    Script Date: 05/24/2015 13:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'Curso'
-- Recibe: @scodigoCurso varchar(10)
-- Recibe: @snombreCurso varchar(50)
-- Recibe: @ifk_idGradoAcademinico int
-- Recibe: @sieliminado smallint
-- Retorna: @iidCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Curso_Insertar]
	@scodigoCurso varchar(10),
	@snombreCurso varchar(50),
	@ifk_idGradoAcademinico int,
	@sieliminado smallint,
	@iidCurso int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[Curso]
(
	[codigoCurso],
	[nombreCurso],
	[fk_idGradoAcademinico],
	[eliminado]
)
VALUES
(
	@scodigoCurso,
	@snombreCurso,
	@ifk_idGradoAcademinico,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidCurso=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_Curso_EliminarTodo_FK_fk_idGradoAcademinico]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Curso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idGradoAcademinico int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Curso_EliminarTodo_FK_fk_idGradoAcademinico]
	@ifk_idGradoAcademinico int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Curso]
WHERE
	[fk_idGradoAcademinico] = @ifk_idGradoAcademinico


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Curso_Eliminar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'Curso'
-- utilizando la llave primaria. 
-- Recibe: @iidCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Curso_Eliminar]
	@iidCurso int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[Curso]
WHERE
	[idCurso] = @iidCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Curso_Buscar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Curso'
-- Recibe: @iidCurso int
-- Recibe: @scodigoCurso varchar(10)
-- Recibe: @snombreCurso varchar(50)
-- Recibe: @ifk_idGradoAcademinico int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Curso_Buscar]
	@iidCurso int,
	@scodigoCurso varchar(10),
	@snombreCurso varchar(50),
	@ifk_idGradoAcademinico int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[Curso] 
 WHERE 
	(@iidCurso IS NULL OR [idCurso] = @iidCurso) AND 
	(@scodigoCurso IS NULL OR [codigoCurso] LIKE @scodigoCurso) AND 
	(@snombreCurso IS NULL OR [nombreCurso] LIKE @snombreCurso) AND 
	(@ifk_idGradoAcademinico IS NULL OR [fk_idGradoAcademinico] = @ifk_idGradoAcademinico) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Curso_ActualizarTodos_Con_fk_idGradoAcademinico_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Curso'.
-- Actualiza el campo [fk_idGradoAcademinico] con el valor anterior de@ifk_idGradoAcademinico  al valor @ifk_idGradoAcademinico
-- Recibe: @ifk_idGradoAcademinico int
-- Recibe: @ifk_idGradoAcademinicoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Curso_ActualizarTodos_Con_fk_idGradoAcademinico_FK]
	@ifk_idGradoAcademinico int,
	@ifk_idGradoAcademinicoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Curso]
SET
	[fk_idGradoAcademinico] = @ifk_idGradoAcademinico
WHERE
	[fk_idGradoAcademinico] = @ifk_idGradoAcademinicoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Curso_Actualizar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'Curso'
-- Recibe: @iidCurso int
-- Recibe: @scodigoCurso varchar(10)
-- Recibe: @snombreCurso varchar(50)
-- Recibe: @ifk_idGradoAcademinico int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Curso_Actualizar]
	@iidCurso int,
	@scodigoCurso varchar(10),
	@snombreCurso varchar(50),
	@ifk_idGradoAcademinico int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Curso]
SET 
	[codigoCurso] = @scodigoCurso,
	[nombreCurso] = @snombreCurso,
	[fk_idGradoAcademinico] = @ifk_idGradoAcademinico,
	[eliminado] = @sieliminado
WHERE
	[idCurso] = @iidCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_SeleccionarUno]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'Contacto'
-- basado en la llave primaria.
-- Recibe: @iidContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_SeleccionarUno]
	@iidContacto int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[Contacto]
WHERE
	[idContacto] = @iidContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_SeleccionarTodos_Con_fk_idUsuario_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Contacto'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_SeleccionarTodos_Con_fk_idUsuario_FK]
	@ifk_idUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Contacto]
WHERE
	[fk_idUsuario] = @ifk_idUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_SeleccionarTodos_Con_fk_idtipoContacto_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Contacto'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idtipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_SeleccionarTodos_Con_fk_idtipoContacto_FK]
	@ifk_idtipoContacto int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Contacto]
WHERE
	[fk_idtipoContacto] = @ifk_idtipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_SeleccionarTodos]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'Contacto'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[Contacto]
ORDER BY 
	[idContacto] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_Insertar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'Contacto'
-- Recibe: @ifk_idtipoContacto int
-- Recibe: @ifk_idUsuario int
-- Recibe: @scontacto varchar(250)
-- Recibe: @sieliminado smallint
-- Retorna: @iidContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_Insertar]
	@ifk_idtipoContacto int,
	@ifk_idUsuario int,
	@scontacto varchar(250),
	@sieliminado smallint,
	@iidContacto int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[Contacto]
(
	[fk_idtipoContacto],
	[fk_idUsuario],
	[contacto],
	[eliminado]
)
VALUES
(
	@ifk_idtipoContacto,
	@ifk_idUsuario,
	@scontacto,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidContacto=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_EliminarTodo_FK_fk_idUsuario]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Contacto'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_EliminarTodo_FK_fk_idUsuario]
	@ifk_idUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Contacto]
WHERE
	[fk_idUsuario] = @ifk_idUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_EliminarTodo_FK_fk_idtipoContacto]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Contacto'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idtipoContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_EliminarTodo_FK_fk_idtipoContacto]
	@ifk_idtipoContacto int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Contacto]
WHERE
	[fk_idtipoContacto] = @ifk_idtipoContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_Eliminar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'Contacto'
-- utilizando la llave primaria. 
-- Recibe: @iidContacto int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_Eliminar]
	@iidContacto int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[Contacto]
WHERE
	[idContacto] = @iidContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_Buscar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Contacto'
-- Recibe: @iidContacto int
-- Recibe: @ifk_idtipoContacto int
-- Recibe: @ifk_idUsuario int
-- Recibe: @scontacto varchar(250)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_Buscar]
	@iidContacto int,
	@ifk_idtipoContacto int,
	@ifk_idUsuario int,
	@scontacto varchar(250),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[Contacto] 
 WHERE 
	(@iidContacto IS NULL OR [idContacto] = @iidContacto) AND 
	(@ifk_idtipoContacto IS NULL OR [fk_idtipoContacto] = @ifk_idtipoContacto) AND 
	(@ifk_idUsuario IS NULL OR [fk_idUsuario] = @ifk_idUsuario) AND 
	(@scontacto IS NULL OR [contacto] LIKE @scontacto) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_ActualizarTodos_Con_fk_idUsuario_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Contacto'.
-- Actualiza el campo [fk_idUsuario] con el valor anterior de@ifk_idUsuario  al valor @ifk_idUsuario
-- Recibe: @ifk_idUsuario int
-- Recibe: @ifk_idUsuarioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_ActualizarTodos_Con_fk_idUsuario_FK]
	@ifk_idUsuario int,
	@ifk_idUsuarioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Contacto]
SET
	[fk_idUsuario] = @ifk_idUsuario
WHERE
	[fk_idUsuario] = @ifk_idUsuarioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_ActualizarTodos_Con_fk_idtipoContacto_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Contacto'.
-- Actualiza el campo [fk_idtipoContacto] con el valor anterior de@ifk_idtipoContacto  al valor @ifk_idtipoContacto
-- Recibe: @ifk_idtipoContacto int
-- Recibe: @ifk_idtipoContactoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_ActualizarTodos_Con_fk_idtipoContacto_FK]
	@ifk_idtipoContacto int,
	@ifk_idtipoContactoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Contacto]
SET
	[fk_idtipoContacto] = @ifk_idtipoContacto
WHERE
	[fk_idtipoContacto] = @ifk_idtipoContactoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Contacto_Actualizar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'Contacto'
-- Recibe: @iidContacto int
-- Recibe: @ifk_idtipoContacto int
-- Recibe: @ifk_idUsuario int
-- Recibe: @scontacto varchar(250)
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Contacto_Actualizar]
	@iidContacto int,
	@ifk_idtipoContacto int,
	@ifk_idUsuario int,
	@scontacto varchar(250),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Contacto]
SET 
	[fk_idtipoContacto] = @ifk_idtipoContacto,
	[fk_idUsuario] = @ifk_idUsuario,
	[contacto] = @scontacto,
	[eliminado] = @sieliminado
WHERE
	[idContacto] = @iidContacto


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[idGrupo] [int] IDENTITY(1,1) NOT NULL,
	[fk_idCurso] [int] NOT NULL,
	[fk_idFranjaHoraria] [int] NOT NULL,
	[fk_idProfesor] [int] NULL,
	[fk_idSede] [int] NOT NULL,
	[fk_idPeriodo] [int] NOT NULL,
	[numeroGrupo] [int] NOT NULL,
	[fk_idDepartamento] [int] NOT NULL,
	[estado] [int] NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[idGrupo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_BuscarUno]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'EvaluacionProfesor'
-- Recibe: @iidEvaluacionProfesor int
-- Recibe: @dcevaluacion decimal(4, 2)
-- Recibe: @dafecha date
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_BuscarUno]
	@scedulaIdentidad varchar(50),
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT idEvaluacionProfesor, cedulaIdentidad, nombre + ' ' + primerapellido + ' ' + segundoapellido Nombre, convert(varchar(50),numeroPeriodo) + ' ' + convert(varchar(50),modalidad) + ' ' + convert(varchar(50),anyo) Periodo, evaluacion FROM [dbo].[EvaluacionProfesor] E
inner join Profesor P on E.fk_idProfesor = P.idProfesor
inner join Usuario U on P.fk_idUsuario = U.idUsuario
inner join Periodo PE on E.fk_idPeriodo = PE.idPeriodo
inner join Modalidad M on PE.fk_idModalidad = M.idModalidad
 WHERE 
	(@scedulaIdentidad IS NULL OR [cedulaIdentidad] LIKE @scedulaIdentidad) AND 
	(@sieliminado IS NULL OR E.[eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_EvaluacionProfesor_BuscarTodos]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'EvaluacionProfesor'
-- Recibe: @iidEvaluacionProfesor int
-- Recibe: @dcevaluacion decimal(4, 2)
-- Recibe: @dafecha date
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_EvaluacionProfesor_BuscarTodos]
	@ifk_idPeriodo int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT idEvaluacionProfesor, cedulaIdentidad, nombre + ' ' + primerapellido + ' ' + segundoapellido Nombre, evaluacion FROM [dbo].[EvaluacionProfesor] E
inner join Profesor P on E.fk_idProfesor = P.idProfesor
inner join Usuario U on P.fk_idUsuario = U.idUsuario
 WHERE 
	(@ifk_idPeriodo IS NULL OR [fk_idPeriodo] = @ifk_idPeriodo) AND 
	(@sieliminado IS NULL OR E.[eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_SeleccionarUno]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'Profesor'
-- basado en la llave primaria.
-- Recibe: @iidProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_SeleccionarUno]
	@iidProfesor int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[Profesor]
WHERE
	[idProfesor] = @iidProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idUsuario_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idUsuario_FK]
	@ifk_idUsuario int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Profesor]
WHERE
	[fk_idUsuario] = @ifk_idUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idtipoProfesor_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idtipoProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idtipoProfesor_FK]
	@ifk_idtipoProfesor int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Profesor]
WHERE
	[fk_idtipoProfesor] = @ifk_idtipoProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idJornada_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idJornada int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idJornada_FK]
	@ifk_idJornada int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Profesor]
WHERE
	[fk_idJornada] = @ifk_idJornada


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idGradoAcademico_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idGradoAcademico int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idGradoAcademico_FK]
	@ifk_idGradoAcademico int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Profesor]
WHERE
	[fk_idGradoAcademico] = @ifk_idGradoAcademico


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idDepartamento_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idDepartamento int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_SeleccionarTodos_Con_fk_idDepartamento_FK]
	@ifk_idDepartamento int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Profesor]
WHERE
	[fk_idDepartamento] = @ifk_idDepartamento


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_SeleccionarTodos]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'Profesor'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[Profesor]
ORDER BY 
	[idProfesor] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_Insertar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'Profesor'
-- Recibe: @ifk_idDepartamento int
-- Recibe: @ifk_idJornada int
-- Recibe: @ifk_idtipoProfesor int
-- Recibe: @dafechaIngreso date
-- Recibe: @ifk_idGradoAcademico int
-- Recibe: @sNotas varchar(300)
-- Recibe: @ifk_idUsuario int
-- Recibe: @sieliminado smallint
-- Retorna: @iidProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_Insertar]
	@ifk_idDepartamento int,
	@ifk_idJornada int,
	@ifk_idtipoProfesor int,
	@dafechaIngreso date,
	@ifk_idGradoAcademico int,
	@sNotas varchar(300),
	@ifk_idUsuario int,
	@sieliminado smallint,
	@iidProfesor int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[Profesor]
(
	[fk_idDepartamento],
	[fk_idJornada],
	[fk_idtipoProfesor],
	[fechaIngreso],
	[fk_idGradoAcademico],
	[Notas],
	[fk_idUsuario],
	[eliminado]
)
VALUES
(
	@ifk_idDepartamento,
	@ifk_idJornada,
	@ifk_idtipoProfesor,
	@dafechaIngreso,
	@ifk_idGradoAcademico,
	@sNotas,
	@ifk_idUsuario,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidProfesor=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_EliminarTodo_FK_fk_idUsuario]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idUsuario int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_EliminarTodo_FK_fk_idUsuario]
	@ifk_idUsuario int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Profesor]
WHERE
	[fk_idUsuario] = @ifk_idUsuario


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_EliminarTodo_FK_fk_idtipoProfesor]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idtipoProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_EliminarTodo_FK_fk_idtipoProfesor]
	@ifk_idtipoProfesor int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Profesor]
WHERE
	[fk_idtipoProfesor] = @ifk_idtipoProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_EliminarTodo_FK_fk_idJornada]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idJornada int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_EliminarTodo_FK_fk_idJornada]
	@ifk_idJornada int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Profesor]
WHERE
	[fk_idJornada] = @ifk_idJornada


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_EliminarTodo_FK_fk_idGradoAcademico]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idGradoAcademico int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_EliminarTodo_FK_fk_idGradoAcademico]
	@ifk_idGradoAcademico int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Profesor]
WHERE
	[fk_idGradoAcademico] = @ifk_idGradoAcademico


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_EliminarTodo_FK_fk_idDepartamento]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Profesor'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idDepartamento int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_EliminarTodo_FK_fk_idDepartamento]
	@ifk_idDepartamento int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Profesor]
WHERE
	[fk_idDepartamento] = @ifk_idDepartamento


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_Eliminar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'Profesor'
-- utilizando la llave primaria. 
-- Recibe: @iidProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_Eliminar]
	@iidProfesor int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[Profesor]
WHERE
	[idProfesor] = @iidProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_BuscarTodos]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Profesor'
-- Recibe: @iidProfesor int
-- Recibe: @ifk_idDepartamento int
-- Recibe: @ifk_idJornada int
-- Recibe: @ifk_idtipoProfesor int
-- Recibe: @dafechaIngreso date
-- Recibe: @ifk_idGradoAcademico int
-- Recibe: @sNotas varchar(300)
-- Recibe: @ifk_idUsuario int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_BuscarTodos]
	@iidProfesor int,
	@ifk_idDepartamento int,
	@ifk_idJornada int,
	@ifk_idtipoProfesor int,
	@dafechaIngreso date,
	@ifk_idGradoAcademico int,
	@sNotas varchar(300),
	@ifk_idUsuario int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT idUsuario, idProfesor, cedulaIdentidad, nombre, primerApellido, segundoApellido, nombreDepartamento, tipoJornadaLaboral, tipoProfesor  FROM [dbo].[Profesor] A
inner join [dbo].[Usuario] B on A.[fk_idUsuario] = B.idUsuario
inner join [dbo].[Departamento] C on A.fk_idDepartamento = C.idDepartamento
inner join [dbo].[JornadaLaboral] D on A.fk_idJornada = D.idJornada
inner join [dbo].[tipoProfesor] E on A.fk_idtipoProfesor = E.idTipoProfesor
 WHERE 
	(@iidProfesor IS NULL OR [idProfesor] = @iidProfesor) AND 
	(@ifk_idDepartamento IS NULL OR [fk_idDepartamento] = @ifk_idDepartamento) AND 
	(@ifk_idJornada IS NULL OR [fk_idJornada] = @ifk_idJornada) AND 
	(@ifk_idtipoProfesor IS NULL OR [fk_idtipoProfesor] = @ifk_idtipoProfesor) AND 
	(@dafechaIngreso IS NULL OR [fechaIngreso] >= @dafechaIngreso) AND 
	(@ifk_idGradoAcademico IS NULL OR [fk_idGradoAcademico] = @ifk_idGradoAcademico) AND 
	(@sNotas IS NULL OR [Notas] LIKE @sNotas) AND 
	(@ifk_idUsuario IS NULL OR [fk_idUsuario] = @ifk_idUsuario) AND 
	(@sieliminado IS NULL OR A.[eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_Buscar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Profesor'
-- Recibe: @iidProfesor int
-- Recibe: @ifk_idDepartamento int
-- Recibe: @ifk_idJornada int
-- Recibe: @ifk_idtipoProfesor int
-- Recibe: @dafechaIngreso date
-- Recibe: @ifk_idGradoAcademico int
-- Recibe: @sNotas varchar(300)
-- Recibe: @ifk_idUsuario int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_Buscar]
	@iidProfesor int,
	@ifk_idDepartamento int,
	@ifk_idJornada int,
	@ifk_idtipoProfesor int,
	@dafechaIngreso date,
	@ifk_idGradoAcademico int,
	@sNotas varchar(300),
	@ifk_idUsuario int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[Profesor] 
 WHERE 
	(@iidProfesor IS NULL OR [idProfesor] = @iidProfesor) AND 
	(@ifk_idDepartamento IS NULL OR [fk_idDepartamento] = @ifk_idDepartamento) AND 
	(@ifk_idJornada IS NULL OR [fk_idJornada] = @ifk_idJornada) AND 
	(@ifk_idtipoProfesor IS NULL OR [fk_idtipoProfesor] = @ifk_idtipoProfesor) AND 
	(@dafechaIngreso IS NULL OR [fechaIngreso] >= @dafechaIngreso) AND 
	(@ifk_idGradoAcademico IS NULL OR [fk_idGradoAcademico] = @ifk_idGradoAcademico) AND 
	(@sNotas IS NULL OR [Notas] LIKE @sNotas) AND 
	(@ifk_idUsuario IS NULL OR [fk_idUsuario] = @ifk_idUsuario) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idUsuario_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Profesor'.
-- Actualiza el campo [fk_idUsuario] con el valor anterior de@ifk_idUsuario  al valor @ifk_idUsuario
-- Recibe: @ifk_idUsuario int
-- Recibe: @ifk_idUsuarioOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idUsuario_FK]
	@ifk_idUsuario int,
	@ifk_idUsuarioOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Profesor]
SET
	[fk_idUsuario] = @ifk_idUsuario
WHERE
	[fk_idUsuario] = @ifk_idUsuarioOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idtipoProfesor_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Profesor'.
-- Actualiza el campo [fk_idtipoProfesor] con el valor anterior de@ifk_idtipoProfesor  al valor @ifk_idtipoProfesor
-- Recibe: @ifk_idtipoProfesor int
-- Recibe: @ifk_idtipoProfesorOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idtipoProfesor_FK]
	@ifk_idtipoProfesor int,
	@ifk_idtipoProfesorOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Profesor]
SET
	[fk_idtipoProfesor] = @ifk_idtipoProfesor
WHERE
	[fk_idtipoProfesor] = @ifk_idtipoProfesorOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idJornada_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Profesor'.
-- Actualiza el campo [fk_idJornada] con el valor anterior de@ifk_idJornada  al valor @ifk_idJornada
-- Recibe: @ifk_idJornada int
-- Recibe: @ifk_idJornadaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idJornada_FK]
	@ifk_idJornada int,
	@ifk_idJornadaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Profesor]
SET
	[fk_idJornada] = @ifk_idJornada
WHERE
	[fk_idJornada] = @ifk_idJornadaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idGradoAcademico_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Profesor'.
-- Actualiza el campo [fk_idGradoAcademico] con el valor anterior de@ifk_idGradoAcademico  al valor @ifk_idGradoAcademico
-- Recibe: @ifk_idGradoAcademico int
-- Recibe: @ifk_idGradoAcademicoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idGradoAcademico_FK]
	@ifk_idGradoAcademico int,
	@ifk_idGradoAcademicoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Profesor]
SET
	[fk_idGradoAcademico] = @ifk_idGradoAcademico
WHERE
	[fk_idGradoAcademico] = @ifk_idGradoAcademicoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idDepartamento_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Profesor'.
-- Actualiza el campo [fk_idDepartamento] con el valor anterior de@ifk_idDepartamento  al valor @ifk_idDepartamento
-- Recibe: @ifk_idDepartamento int
-- Recibe: @ifk_idDepartamentoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_ActualizarTodos_Con_fk_idDepartamento_FK]
	@ifk_idDepartamento int,
	@ifk_idDepartamentoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Profesor]
SET
	[fk_idDepartamento] = @ifk_idDepartamento
WHERE
	[fk_idDepartamento] = @ifk_idDepartamentoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Profesor_Actualizar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'Profesor'
-- Recibe: @iidProfesor int
-- Recibe: @ifk_idDepartamento int
-- Recibe: @ifk_idJornada int
-- Recibe: @ifk_idtipoProfesor int
-- Recibe: @dafechaIngreso date
-- Recibe: @ifk_idGradoAcademico int
-- Recibe: @sNotas varchar(300)
-- Recibe: @ifk_idUsuario int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Profesor_Actualizar]
	@iidProfesor int,
	@ifk_idDepartamento int,
	@ifk_idJornada int,
	@ifk_idtipoProfesor int,
	@dafechaIngreso date,
	@ifk_idGradoAcademico int,
	@sNotas varchar(300),
	@ifk_idUsuario int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Profesor]
SET 
	[fk_idDepartamento] = @ifk_idDepartamento,
	[fk_idJornada] = @ifk_idJornada,
	[fk_idtipoProfesor] = @ifk_idtipoProfesor,
	[fechaIngreso] = @dafechaIngreso,
	[fk_idGradoAcademico] = @ifk_idGradoAcademico,
	[Notas] = @sNotas,
	[fk_idUsuario] = @ifk_idUsuario,
	[eliminado] = @sieliminado
WHERE
	[idProfesor] = @iidProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  Table [dbo].[PreferenciaHorarios]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenciaHorarios](
	[idPreferenciaHorarios] [int] IDENTITY(1,1) NOT NULL,
	[fk_idFranjaHoraria] [int] NOT NULL,
	[fk_idPeriodo] [int] NOT NULL,
	[fk_idProfesor] [int] NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_PreferenciaHorarios] PRIMARY KEY CLUSTERED 
(
	[idPreferenciaHorarios] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferenciaCurso]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenciaCurso](
	[idPreferenciaCurso] [int] IDENTITY(1,1) NOT NULL,
	[fk_idCurso] [int] NOT NULL,
	[fk_idSede] [int] NOT NULL,
	[fk_idProfesor] [int] NOT NULL,
	[fk_idTipoPrioridad] [int] NOT NULL,
	[fk_idPeriodo] [int] NOT NULL,
	[eliminado] [smallint] NOT NULL,
 CONSTRAINT [PK_PreferenciaCurso] PRIMARY KEY CLUSTERED 
(
	[idPreferenciaCurso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[pr_Estadisticas_Consultar_Cursos]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rebeca Moreno>
-- Create date: <21/05/2015>
-- Description:	<procedure para consultar estadisticas>
-- =============================================
CREATE PROCEDURE [dbo].[pr_Estadisticas_Consultar_Cursos]
	-- Add the parameters for the stored procedure here
	@iidPeriodo int,
	@iCodError int OUTPUT
AS

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    if @iidPeriodo = 0
    begin
		select nombreCurso, codigoCurso,TipoPrioridad as preferencia,COUNT(nombreCurso) as cantidad 
		from [DB_AsignacionCargas].dbo.PreferenciaCurso a
		INNER JOIN [DB_AsignacionCargas].dbo.Curso b ON
		a.fk_idCurso = b.idCurso		
		INNER JOIN [DB_AsignacionCargas].dbo.TipoPrioridad c ON 
		c.idTipoPrioridad = a.fk_idTipoPrioridad	
		where b.eliminado = 0 and
		c.eliminado = 0
		group by nombreCurso,TipoPrioridad,codigoCurso
	end
	else
	begin 
		select nombreCurso, codigoCurso,TipoPrioridad as preferencia,COUNT(nombreCurso) as cantidad 
		from [DB_AsignacionCargas].dbo.PreferenciaCurso a
		INNER JOIN [DB_AsignacionCargas].dbo.Curso b ON
		a.fk_idCurso = b.idCurso		
		INNER JOIN [DB_AsignacionCargas].dbo.TipoPrioridad c ON 
		c.idTipoPrioridad = a.fk_idTipoPrioridad	
		where b.eliminado = 0 and
		c.eliminado = 0 and  a.fk_idPeriodo = @iidPeriodo
		group by nombreCurso,TipoPrioridad,codigoCurso 
	end
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_SeleccionarUno]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'PreferenciaHorarios'
-- basado en la llave primaria.
-- Recibe: @iidPreferenciaHorarios int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_SeleccionarUno]
	@iidPreferenciaHorarios int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[PreferenciaHorarios]
WHERE
	[idPreferenciaHorarios] = @iidPreferenciaHorarios


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_SeleccionarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciaHorarios'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_SeleccionarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciaHorarios]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_SeleccionarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciaHorarios'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_SeleccionarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciaHorarios]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_SeleccionarTodos_Con_fk_idFranjaHoraria_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciaHorarios'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idFranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_SeleccionarTodos_Con_fk_idFranjaHoraria_FK]
	@ifk_idFranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciaHorarios]
WHERE
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_SeleccionarTodos]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'PreferenciaHorarios'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[PreferenciaHorarios]
ORDER BY 
	[idPreferenciaHorarios] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_Insertar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'PreferenciaHorarios'
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @ifk_idProfesor int
-- Recibe: @sieliminado smallint
-- Retorna: @iidPreferenciaHorarios int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_Insertar]
	@ifk_idFranjaHoraria int,
	@ifk_idPeriodo int,
	@ifk_idProfesor int,
	@sieliminado smallint,
	@iidPreferenciaHorarios int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[PreferenciaHorarios]
(
	[fk_idFranjaHoraria],
	[fk_idPeriodo],
	[fk_idProfesor],
	[eliminado]
)
VALUES
(
	@ifk_idFranjaHoraria,
	@ifk_idPeriodo,
	@ifk_idProfesor,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidPreferenciaHorarios=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_EliminarTodo_FK_fk_idProfesor]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciaHorarios'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_EliminarTodo_FK_fk_idProfesor]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciaHorarios]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_EliminarTodo_FK_fk_idPeriodo]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciaHorarios'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_EliminarTodo_FK_fk_idPeriodo]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciaHorarios]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_EliminarTodo_FK_fk_idFranjaHoraria]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciaHorarios'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idFranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_EliminarTodo_FK_fk_idFranjaHoraria]
	@ifk_idFranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciaHorarios]
WHERE
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_Eliminar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'PreferenciaHorarios'
-- utilizando la llave primaria. 
-- Recibe: @iidPreferenciaHorarios int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_Eliminar]
	@iidPreferenciaHorarios int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[PreferenciaHorarios]
WHERE
	[idPreferenciaHorarios] = @iidPreferenciaHorarios


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_Buscar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'PreferenciaHorarios'
-- Recibe: @iidPreferenciaHorarios int
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @ifk_idProfesor int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_Buscar]
	@iidPreferenciaHorarios int,
	@ifk_idFranjaHoraria int,
	@ifk_idPeriodo int,
	@ifk_idProfesor int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[PreferenciaHorarios] 
 WHERE 
	(@iidPreferenciaHorarios IS NULL OR [idPreferenciaHorarios] = @iidPreferenciaHorarios) AND 
	(@ifk_idFranjaHoraria IS NULL OR [fk_idFranjaHoraria] = @ifk_idFranjaHoraria) AND 
	(@ifk_idPeriodo IS NULL OR [fk_idPeriodo] = @ifk_idPeriodo) AND 
	(@ifk_idProfesor IS NULL OR [fk_idProfesor] = @ifk_idProfesor) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_ActualizarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciaHorarios'.
-- Actualiza el campo [fk_idProfesor] con el valor anterior de@ifk_idProfesor  al valor @ifk_idProfesor
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idProfesorOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_ActualizarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@ifk_idProfesorOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaHorarios]
SET
	[fk_idProfesor] = @ifk_idProfesor
WHERE
	[fk_idProfesor] = @ifk_idProfesorOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_ActualizarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciaHorarios'.
-- Actualiza el campo [fk_idPeriodo] con el valor anterior de@ifk_idPeriodo  al valor @ifk_idPeriodo
-- Recibe: @ifk_idPeriodo int
-- Recibe: @ifk_idPeriodoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_ActualizarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@ifk_idPeriodoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaHorarios]
SET
	[fk_idPeriodo] = @ifk_idPeriodo
WHERE
	[fk_idPeriodo] = @ifk_idPeriodoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_ActualizarTodos_Con_fk_idFranjaHoraria_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciaHorarios'.
-- Actualiza el campo [fk_idFranjaHoraria] con el valor anterior de@ifk_idFranjaHoraria  al valor @ifk_idFranjaHoraria
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @ifk_idFranjaHorariaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_ActualizarTodos_Con_fk_idFranjaHoraria_FK]
	@ifk_idFranjaHoraria int,
	@ifk_idFranjaHorariaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaHorarios]
SET
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria
WHERE
	[fk_idFranjaHoraria] = @ifk_idFranjaHorariaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaHorarios_Actualizar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'PreferenciaHorarios'
-- Recibe: @iidPreferenciaHorarios int
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @ifk_idProfesor int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaHorarios_Actualizar]
	@iidPreferenciaHorarios int,
	@ifk_idFranjaHoraria int,
	@ifk_idPeriodo int,
	@ifk_idProfesor int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaHorarios]
SET 
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria,
	[fk_idPeriodo] = @ifk_idPeriodo,
	[fk_idProfesor] = @ifk_idProfesor,
	[eliminado] = @sieliminado
WHERE
	[idPreferenciaHorarios] = @iidPreferenciaHorarios


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_SeleccionarUno]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'PreferenciaCurso'
-- basado en la llave primaria.
-- Recibe: @iidPreferenciaCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_SeleccionarUno]
	@iidPreferenciaCurso int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[PreferenciaCurso]
WHERE
	[idPreferenciaCurso] = @iidPreferenciaCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idTipoPrioridad_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idTipoPrioridad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idTipoPrioridad_FK]
	@ifk_idTipoPrioridad int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idTipoPrioridad] = @ifk_idTipoPrioridad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idSede_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idSede int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idSede_FK]
	@ifk_idSede int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idSede] = @ifk_idSede


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idCurso_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_SeleccionarTodos_Con_fk_idCurso_FK]
	@ifk_idCurso int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idCurso] = @ifk_idCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_SeleccionarTodos]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'PreferenciaCurso'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[PreferenciaCurso]
ORDER BY 
	[idPreferenciaCurso] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_Insertar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'PreferenciaCurso'
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idTipoPrioridad int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iidPreferenciaCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_Insertar]
	@ifk_idCurso int,
	@ifk_idSede int,
	@ifk_idProfesor int,
	@ifk_idTipoPrioridad int,
	@ifk_idPeriodo int,
	@sieliminado smallint,
	@iidPreferenciaCurso int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[PreferenciaCurso]
(
	[fk_idCurso],
	[fk_idSede],
	[fk_idProfesor],
	[fk_idTipoPrioridad],
	[fk_idPeriodo],
	[eliminado]
)
VALUES
(
	@ifk_idCurso,
	@ifk_idSede,
	@ifk_idProfesor,
	@ifk_idTipoPrioridad,
	@ifk_idPeriodo,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidPreferenciaCurso=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idTipoPrioridad]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idTipoPrioridad int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idTipoPrioridad]
	@ifk_idTipoPrioridad int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idTipoPrioridad] = @ifk_idTipoPrioridad


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idSede]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idSede int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idSede]
	@ifk_idSede int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idSede] = @ifk_idSede


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idProfesor]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idProfesor]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idPeriodo]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idPeriodo]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idCurso]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'PreferenciaCurso'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_EliminarTodo_FK_fk_idCurso]
	@ifk_idCurso int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[PreferenciaCurso]
WHERE
	[fk_idCurso] = @ifk_idCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_Eliminar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'PreferenciaCurso'
-- utilizando la llave primaria. 
-- Recibe: @iidPreferenciaCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_Eliminar]
	@iidPreferenciaCurso int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[PreferenciaCurso]
WHERE
	[idPreferenciaCurso] = @iidPreferenciaCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_BuscarDetallado]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'PreferenciaCurso'
-- Recibe: @iidPreferenciaCurso int
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idTipoPrioridad int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_BuscarDetallado]
	@ifk_idCurso int,
	@ifk_idSede int,
	@ifk_idProfesor int,
	@ifk_idTipoPrioridad int,
	@ifk_idPeriodo int,
	@sieliminado smallint
AS
-- Busca filas en la tabla.
SELECT idPreferenciaCurso, TP.tipoPrioridad Prioridad, C.nombreCurso Curso, S.nombreSede Sede FROM [dbo].[PreferenciaCurso] PC
inner join dbo.TipoPrioridad TP on PC.fk_idTipoPrioridad = TP.idTipoPrioridad
inner join dbo.Curso C on PC.fk_idCurso = C.idCurso
inner join dbo.Sede S on PC.fk_idSede = S.idSede
 WHERE 
	(@ifk_idCurso IS NULL OR [fk_idCurso] = @ifk_idCurso) AND 
	(@ifk_idSede IS NULL OR [fk_idSede] = @ifk_idSede) AND 
	(@ifk_idProfesor IS NULL OR [fk_idProfesor] = @ifk_idProfesor) AND 
	(@ifk_idTipoPrioridad IS NULL OR [fk_idTipoPrioridad] = @ifk_idTipoPrioridad) AND 
	(@ifk_idPeriodo IS NULL OR [fk_idPeriodo] = @ifk_idPeriodo) AND 
	(@sieliminado IS NULL OR PC.[eliminado] = @sieliminado)
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_Buscar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'PreferenciaCurso'
-- Recibe: @iidPreferenciaCurso int
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idTipoPrioridad int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_Buscar]
	@iidPreferenciaCurso int,
	@ifk_idCurso int,
	@ifk_idSede int,
	@ifk_idProfesor int,
	@ifk_idTipoPrioridad int,
	@ifk_idPeriodo int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[PreferenciaCurso] 
 WHERE 
	(@iidPreferenciaCurso IS NULL OR [idPreferenciaCurso] = @iidPreferenciaCurso) AND 
	(@ifk_idCurso IS NULL OR [fk_idCurso] = @ifk_idCurso) AND 
	(@ifk_idSede IS NULL OR [fk_idSede] = @ifk_idSede) AND 
	(@ifk_idProfesor IS NULL OR [fk_idProfesor] = @ifk_idProfesor) AND 
	(@ifk_idTipoPrioridad IS NULL OR [fk_idTipoPrioridad] = @ifk_idTipoPrioridad) AND 
	(@ifk_idPeriodo IS NULL OR [fk_idPeriodo] = @ifk_idPeriodo) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idTipoPrioridad_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciaCurso'.
-- Actualiza el campo [fk_idTipoPrioridad] con el valor anterior de@ifk_idTipoPrioridad  al valor @ifk_idTipoPrioridad
-- Recibe: @ifk_idTipoPrioridad int
-- Recibe: @ifk_idTipoPrioridadOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idTipoPrioridad_FK]
	@ifk_idTipoPrioridad int,
	@ifk_idTipoPrioridadOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaCurso]
SET
	[fk_idTipoPrioridad] = @ifk_idTipoPrioridad
WHERE
	[fk_idTipoPrioridad] = @ifk_idTipoPrioridadOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idSede_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciaCurso'.
-- Actualiza el campo [fk_idSede] con el valor anterior de@ifk_idSede  al valor @ifk_idSede
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idSedeOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idSede_FK]
	@ifk_idSede int,
	@ifk_idSedeOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaCurso]
SET
	[fk_idSede] = @ifk_idSede
WHERE
	[fk_idSede] = @ifk_idSedeOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciaCurso'.
-- Actualiza el campo [fk_idProfesor] con el valor anterior de@ifk_idProfesor  al valor @ifk_idProfesor
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idProfesorOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@ifk_idProfesorOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaCurso]
SET
	[fk_idProfesor] = @ifk_idProfesor
WHERE
	[fk_idProfesor] = @ifk_idProfesorOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciaCurso'.
-- Actualiza el campo [fk_idPeriodo] con el valor anterior de@ifk_idPeriodo  al valor @ifk_idPeriodo
-- Recibe: @ifk_idPeriodo int
-- Recibe: @ifk_idPeriodoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@ifk_idPeriodoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaCurso]
SET
	[fk_idPeriodo] = @ifk_idPeriodo
WHERE
	[fk_idPeriodo] = @ifk_idPeriodoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idCurso_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'PreferenciaCurso'.
-- Actualiza el campo [fk_idCurso] con el valor anterior de@ifk_idCurso  al valor @ifk_idCurso
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idCursoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_ActualizarTodos_Con_fk_idCurso_FK]
	@ifk_idCurso int,
	@ifk_idCursoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaCurso]
SET
	[fk_idCurso] = @ifk_idCurso
WHERE
	[fk_idCurso] = @ifk_idCursoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_PreferenciaCurso_Actualizar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'PreferenciaCurso'
-- Recibe: @iidPreferenciaCurso int
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idTipoPrioridad int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_PreferenciaCurso_Actualizar]
	@iidPreferenciaCurso int,
	@ifk_idCurso int,
	@ifk_idSede int,
	@ifk_idProfesor int,
	@ifk_idTipoPrioridad int,
	@ifk_idPeriodo int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[PreferenciaCurso]
SET 
	[fk_idCurso] = @ifk_idCurso,
	[fk_idSede] = @ifk_idSede,
	[fk_idProfesor] = @ifk_idProfesor,
	[fk_idTipoPrioridad] = @ifk_idTipoPrioridad,
	[fk_idPeriodo] = @ifk_idPeriodo,
	[eliminado] = @sieliminado
WHERE
	[idPreferenciaCurso] = @iidPreferenciaCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_SeleccionarUno_Con_idGrupo_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una o más filas existentes de tabla 'Grupo'
-- basado en el campo [idGrupo], which is unique per row.
-- Recibe: @iidGrupo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_SeleccionarUno_Con_idGrupo_FK]
	@iidGrupo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de tabla.
SELECT * FROM [dbo].[Grupo]
WHERE
	[idGrupo] = @iidGrupo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_SeleccionarUno]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que selecciona una fila de la tabla 'Grupo'
-- basado en la llave primaria.
-- Recibe: @iidGrupo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_SeleccionarUno]
	@iidGrupo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una fila de la tabla.
SELECT * FROM [dbo].[Grupo]
WHERE
	[idGrupo] = @iidGrupo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idSede_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idSede int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idSede_FK]
	@ifk_idSede int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Grupo]
WHERE
	[fk_idSede] = @ifk_idSede


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Grupo]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Grupo]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idFranjaHoraria_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idFranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idFranjaHoraria_FK]
	@ifk_idFranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Grupo]
WHERE
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idDepartamento_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idDepartamento int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idDepartamento_FK]
	@ifk_idDepartamento int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Grupo]
WHERE
	[fk_idDepartamento] = @ifk_idDepartamento


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idCurso_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona una o más filas existentes de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_SeleccionarTodos_Con_fk_idCurso_FK]
	@ifk_idCurso int,
	@iCodError int OUTPUT
AS
-- Hacer SELECT de una o más filas existentes de tabla.
SELECT * FROM [dbo].[Grupo]
WHERE
	[fk_idCurso] = @ifk_idCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_SeleccionarTodos]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento que selecciona todas las filas de la tabla 'Grupo'
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_SeleccionarTodos]
	@iCodError int OUTPUT
AS
-- Hacer un SELECT All de la tabla.
SELECT * FROM [dbo].[Grupo]
ORDER BY 
	[idGrupo] ASC


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_Insertar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que inserta una fila en tabla 'Grupo'
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @inumeroGrupo int
-- Recibe: @ifk_idDepartamento int
-- Recibe: @iestado int
-- Recibe: @sieliminado smallint
-- Retorna: @iidGrupo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_Insertar]
	@ifk_idCurso int,
	@ifk_idFranjaHoraria int,
	@ifk_idProfesor int,
	@ifk_idSede int,
	@ifk_idPeriodo int,
	@inumeroGrupo int,
	@ifk_idDepartamento int,
	@iestado int,
	@sieliminado smallint,
	@iidGrupo int OUTPUT,
	@iCodError int OUTPUT
AS
-- Inserta una fila en la tabla.
INSERT [dbo].[Grupo]
(
	[fk_idCurso],
	[fk_idFranjaHoraria],
	[fk_idProfesor],
	[fk_idSede],
	[fk_idPeriodo],
	[numeroGrupo],
	[fk_idDepartamento],
	[estado],
	[eliminado]
)
VALUES
(
	@ifk_idCurso,
	@ifk_idFranjaHoraria,
	@ifk_idProfesor,
	@ifk_idSede,
	@ifk_idPeriodo,
	@inumeroGrupo,
	@ifk_idDepartamento,
	@iestado,
	@sieliminado
)


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
-- Obtener el valor IDENTITY para la fila insertada.
SELECT @iidGrupo=SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_EliminarTodo_FK_fk_idSede]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idSede int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_EliminarTodo_FK_fk_idSede]
	@ifk_idSede int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Grupo]
WHERE
	[fk_idSede] = @ifk_idSede


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_EliminarTodo_FK_fk_idProfesor]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idProfesor int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_EliminarTodo_FK_fk_idProfesor]
	@ifk_idProfesor int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Grupo]
WHERE
	[fk_idProfesor] = @ifk_idProfesor


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_EliminarTodo_FK_fk_idPeriodo]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idPeriodo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_EliminarTodo_FK_fk_idPeriodo]
	@ifk_idPeriodo int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Grupo]
WHERE
	[fk_idPeriodo] = @ifk_idPeriodo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_EliminarTodo_FK_fk_idFranjaHoraria]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idFranjaHoraria int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_EliminarTodo_FK_fk_idFranjaHoraria]
	@ifk_idFranjaHoraria int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Grupo]
WHERE
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_EliminarTodo_FK_fk_idDepartamento]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idDepartamento int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_EliminarTodo_FK_fk_idDepartamento]
	@ifk_idDepartamento int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Grupo]
WHERE
	[fk_idDepartamento] = @ifk_idDepartamento


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_EliminarTodo_FK_fk_idCurso]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que borra una o más filas de tabla 'Grupo'
-- basado en un campo llave primaria.
-- Recibe: @ifk_idCurso int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_EliminarTodo_FK_fk_idCurso]
	@ifk_idCurso int,
	@iCodError int OUTPUT
AS
-- Borrar una o más filas de tabla.
DELETE
FROM [dbo].[Grupo]
WHERE
	[fk_idCurso] = @ifk_idCurso


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_Eliminar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento para borrar una fila en la tabla 'Grupo'
-- utilizando la llave primaria. 
-- Recibe: @iidGrupo int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_Eliminar]
	@iidGrupo int,
	@iCodError int OUTPUT
AS
-- Borrar una fila de  tabla.
DELETE FROM [dbo].[Grupo]
WHERE
	[idGrupo] = @iidGrupo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_Buscar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que realiza una busqueda de filas en la tabla 'Grupo'
-- Recibe: @iidGrupo int
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @inumeroGrupo int
-- Recibe: @ifk_idDepartamento int
-- Recibe: @iestado int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_Buscar]
	@iidGrupo int,
	@ifk_idCurso int,
	@ifk_idFranjaHoraria int,
	@ifk_idProfesor int,
	@ifk_idSede int,
	@ifk_idPeriodo int,
	@inumeroGrupo int,
	@ifk_idDepartamento int,
	@iestado int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Busca filas en la tabla.
SELECT * FROM [dbo].[Grupo] 
 WHERE 
	(@iidGrupo IS NULL OR [idGrupo] = @iidGrupo) AND 
	(@ifk_idCurso IS NULL OR [fk_idCurso] = @ifk_idCurso) AND 
	(@ifk_idFranjaHoraria IS NULL OR [fk_idFranjaHoraria] = @ifk_idFranjaHoraria) AND 
	(@ifk_idProfesor IS NULL OR [fk_idProfesor] = @ifk_idProfesor) AND 
	(@ifk_idSede IS NULL OR [fk_idSede] = @ifk_idSede) AND 
	(@ifk_idPeriodo IS NULL OR [fk_idPeriodo] = @ifk_idPeriodo) AND 
	(@inumeroGrupo IS NULL OR [numeroGrupo] = @inumeroGrupo) AND 
	(@ifk_idDepartamento IS NULL OR [fk_idDepartamento] = @ifk_idDepartamento) AND 
	(@iestado IS NULL OR [estado] = @iestado) AND 
	(@sieliminado IS NULL OR [eliminado] = @sieliminado)

-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idSede_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Grupo'.
-- Actualiza el campo [fk_idSede] con el valor anterior de@ifk_idSede  al valor @ifk_idSede
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idSedeOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idSede_FK]
	@ifk_idSede int,
	@ifk_idSedeOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Grupo]
SET
	[fk_idSede] = @ifk_idSede
WHERE
	[fk_idSede] = @ifk_idSedeOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idProfesor_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Grupo'.
-- Actualiza el campo [fk_idProfesor] con el valor anterior de@ifk_idProfesor  al valor @ifk_idProfesor
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idProfesorOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idProfesor_FK]
	@ifk_idProfesor int,
	@ifk_idProfesorOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Grupo]
SET
	[fk_idProfesor] = @ifk_idProfesor
WHERE
	[fk_idProfesor] = @ifk_idProfesorOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idPeriodo_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Grupo'.
-- Actualiza el campo [fk_idPeriodo] con el valor anterior de@ifk_idPeriodo  al valor @ifk_idPeriodo
-- Recibe: @ifk_idPeriodo int
-- Recibe: @ifk_idPeriodoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idPeriodo_FK]
	@ifk_idPeriodo int,
	@ifk_idPeriodoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Grupo]
SET
	[fk_idPeriodo] = @ifk_idPeriodo
WHERE
	[fk_idPeriodo] = @ifk_idPeriodoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idFranjaHoraria_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Grupo'.
-- Actualiza el campo [fk_idFranjaHoraria] con el valor anterior de@ifk_idFranjaHoraria  al valor @ifk_idFranjaHoraria
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @ifk_idFranjaHorariaOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idFranjaHoraria_FK]
	@ifk_idFranjaHoraria int,
	@ifk_idFranjaHorariaOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Grupo]
SET
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria
WHERE
	[fk_idFranjaHoraria] = @ifk_idFranjaHorariaOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idDepartamento_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Grupo'.
-- Actualiza el campo [fk_idDepartamento] con el valor anterior de@ifk_idDepartamento  al valor @ifk_idDepartamento
-- Recibe: @ifk_idDepartamento int
-- Recibe: @ifk_idDepartamentoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idDepartamento_FK]
	@ifk_idDepartamento int,
	@ifk_idDepartamentoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Grupo]
SET
	[fk_idDepartamento] = @ifk_idDepartamento
WHERE
	[fk_idDepartamento] = @ifk_idDepartamentoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idCurso_FK]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una o más filas existentes en tabla 'Grupo'.
-- Actualiza el campo [fk_idCurso] con el valor anterior de@ifk_idCurso  al valor @ifk_idCurso
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idCursoOld int
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_ActualizarTodos_Con_fk_idCurso_FK]
	@ifk_idCurso int,
	@ifk_idCursoOld int,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Grupo]
SET
	[fk_idCurso] = @ifk_idCurso
WHERE
	[fk_idCurso] = @ifk_idCursoOld


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  StoredProcedure [dbo].[pr_Grupo_Actualizar]    Script Date: 05/24/2015 13:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------
-- Procedimiento almacenado que actualiza una sola fila en la tabla 'Grupo'
-- Recibe: @iidGrupo int
-- Recibe: @ifk_idCurso int
-- Recibe: @ifk_idFranjaHoraria int
-- Recibe: @ifk_idProfesor int
-- Recibe: @ifk_idSede int
-- Recibe: @ifk_idPeriodo int
-- Recibe: @inumeroGrupo int
-- Recibe: @ifk_idDepartamento int
-- Recibe: @iestado int
-- Recibe: @sieliminado smallint
-- Retorna: @iCodError int
---------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[pr_Grupo_Actualizar]
	@iidGrupo int,
	@ifk_idCurso int,
	@ifk_idFranjaHoraria int,
	@ifk_idProfesor int,
	@ifk_idSede int,
	@ifk_idPeriodo int,
	@inumeroGrupo int,
	@ifk_idDepartamento int,
	@iestado int,
	@sieliminado smallint,
	@iCodError int OUTPUT
AS
-- Actualizar una sola fila de tabla.
UPDATE [dbo].[Grupo]
SET 
	[fk_idCurso] = @ifk_idCurso,
	[fk_idFranjaHoraria] = @ifk_idFranjaHoraria,
	[fk_idProfesor] = @ifk_idProfesor,
	[fk_idSede] = @ifk_idSede,
	[fk_idPeriodo] = @ifk_idPeriodo,
	[numeroGrupo] = @inumeroGrupo,
	[fk_idDepartamento] = @ifk_idDepartamento,
	[estado] = @iestado,
	[eliminado] = @sieliminado
WHERE
	[idGrupo] = @iidGrupo


-- Obtener el código de error para el estatuto anterior.
SELECT @iCodError=@@ERROR
GO
/****** Object:  ForeignKey [FK_Periodo_Modalidad]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Periodo]  WITH CHECK ADD  CONSTRAINT [FK_Periodo_Modalidad] FOREIGN KEY([fk_idModalidad])
REFERENCES [dbo].[Modalidad] ([idModalidad])
GO
ALTER TABLE [dbo].[Periodo] CHECK CONSTRAINT [FK_Periodo_Modalidad]
GO
/****** Object:  ForeignKey [FK_DiasFranja_franjaHoraria]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[DiasFranja]  WITH CHECK ADD  CONSTRAINT [FK_DiasFranja_franjaHoraria] FOREIGN KEY([fk_idFranjaHoraria])
REFERENCES [dbo].[franjaHoraria] ([idFranjaHoraria])
GO
ALTER TABLE [dbo].[DiasFranja] CHECK CONSTRAINT [FK_DiasFranja_franjaHoraria]
GO
/****** Object:  ForeignKey [FK_Curso_gradoAcademico]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_gradoAcademico] FOREIGN KEY([fk_idGradoAcademinico])
REFERENCES [dbo].[gradoAcademico] ([idGradoAcademico])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_gradoAcademico]
GO
/****** Object:  ForeignKey [FK_Usuario_tipoUsuario]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_tipoUsuario] FOREIGN KEY([fk_tipoUsuario])
REFERENCES [dbo].[tipoUsuario] ([idTipoUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_tipoUsuario]
GO
/****** Object:  ForeignKey [FK_Profesor_Departamento]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Departamento] FOREIGN KEY([fk_idDepartamento])
REFERENCES [dbo].[Departamento] ([idDepartamento])
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_Departamento]
GO
/****** Object:  ForeignKey [FK_Profesor_gradoAcademico1]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_gradoAcademico1] FOREIGN KEY([fk_idGradoAcademico])
REFERENCES [dbo].[gradoAcademico] ([idGradoAcademico])
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_gradoAcademico1]
GO
/****** Object:  ForeignKey [FK_Profesor_JornadaLaboral]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_JornadaLaboral] FOREIGN KEY([fk_idJornada])
REFERENCES [dbo].[JornadaLaboral] ([idJornada])
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_JornadaLaboral]
GO
/****** Object:  ForeignKey [FK_Profesor_tipoProfesor]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_tipoProfesor] FOREIGN KEY([fk_idtipoProfesor])
REFERENCES [dbo].[tipoProfesor] ([idTipoProfesor])
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_tipoProfesor]
GO
/****** Object:  ForeignKey [FK_Profesor_Usuario]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_Usuario] FOREIGN KEY([fk_idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_Usuario]
GO
/****** Object:  ForeignKey [FK_Contacto_tipoContacto]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_tipoContacto] FOREIGN KEY([fk_idtipoContacto])
REFERENCES [dbo].[tipoContacto] ([idTipoContacto])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FK_Contacto_tipoContacto]
GO
/****** Object:  ForeignKey [FK_Contacto_Usuario]    Script Date: 05/24/2015 13:40:40 ******/
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FK_Contacto_Usuario] FOREIGN KEY([fk_idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FK_Contacto_Usuario]
GO
/****** Object:  ForeignKey [FK_Grupo_Curso]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Curso] FOREIGN KEY([fk_idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Curso]
GO
/****** Object:  ForeignKey [FK_Grupo_Departamento]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Departamento] FOREIGN KEY([fk_idDepartamento])
REFERENCES [dbo].[Departamento] ([idDepartamento])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Departamento]
GO
/****** Object:  ForeignKey [FK_Grupo_franjaHoraria]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_franjaHoraria] FOREIGN KEY([fk_idFranjaHoraria])
REFERENCES [dbo].[franjaHoraria] ([idFranjaHoraria])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_franjaHoraria]
GO
/****** Object:  ForeignKey [FK_Grupo_Periodo]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Periodo] FOREIGN KEY([fk_idPeriodo])
REFERENCES [dbo].[Periodo] ([idPeriodo])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Periodo]
GO
/****** Object:  ForeignKey [FK_Grupo_Profesor]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Profesor] FOREIGN KEY([fk_idProfesor])
REFERENCES [dbo].[Profesor] ([idProfesor])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Profesor]
GO
/****** Object:  ForeignKey [FK_Grupo_Sede]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Sede] FOREIGN KEY([fk_idSede])
REFERENCES [dbo].[Sede] ([idSede])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Sede]
GO
/****** Object:  ForeignKey [FK_PreferenciaHorarios_franjaHoraria]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[PreferenciaHorarios]  WITH CHECK ADD  CONSTRAINT [FK_PreferenciaHorarios_franjaHoraria] FOREIGN KEY([fk_idFranjaHoraria])
REFERENCES [dbo].[franjaHoraria] ([idFranjaHoraria])
GO
ALTER TABLE [dbo].[PreferenciaHorarios] CHECK CONSTRAINT [FK_PreferenciaHorarios_franjaHoraria]
GO
/****** Object:  ForeignKey [FK_PreferenciaHorarios_Periodo]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[PreferenciaHorarios]  WITH CHECK ADD  CONSTRAINT [FK_PreferenciaHorarios_Periodo] FOREIGN KEY([fk_idPeriodo])
REFERENCES [dbo].[Periodo] ([idPeriodo])
GO
ALTER TABLE [dbo].[PreferenciaHorarios] CHECK CONSTRAINT [FK_PreferenciaHorarios_Periodo]
GO
/****** Object:  ForeignKey [FK_PreferenciaHorarios_Profesor]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[PreferenciaHorarios]  WITH CHECK ADD  CONSTRAINT [FK_PreferenciaHorarios_Profesor] FOREIGN KEY([fk_idProfesor])
REFERENCES [dbo].[Profesor] ([idProfesor])
GO
ALTER TABLE [dbo].[PreferenciaHorarios] CHECK CONSTRAINT [FK_PreferenciaHorarios_Profesor]
GO
/****** Object:  ForeignKey [FK_PreferenciaCurso_Curso]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[PreferenciaCurso]  WITH CHECK ADD  CONSTRAINT [FK_PreferenciaCurso_Curso] FOREIGN KEY([fk_idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[PreferenciaCurso] CHECK CONSTRAINT [FK_PreferenciaCurso_Curso]
GO
/****** Object:  ForeignKey [FK_PreferenciaCurso_Periodo]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[PreferenciaCurso]  WITH CHECK ADD  CONSTRAINT [FK_PreferenciaCurso_Periodo] FOREIGN KEY([fk_idPeriodo])
REFERENCES [dbo].[Periodo] ([idPeriodo])
GO
ALTER TABLE [dbo].[PreferenciaCurso] CHECK CONSTRAINT [FK_PreferenciaCurso_Periodo]
GO
/****** Object:  ForeignKey [FK_PreferenciaCurso_Profesor]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[PreferenciaCurso]  WITH CHECK ADD  CONSTRAINT [FK_PreferenciaCurso_Profesor] FOREIGN KEY([fk_idProfesor])
REFERENCES [dbo].[Profesor] ([idProfesor])
GO
ALTER TABLE [dbo].[PreferenciaCurso] CHECK CONSTRAINT [FK_PreferenciaCurso_Profesor]
GO
/****** Object:  ForeignKey [FK_PreferenciaCurso_Sede]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[PreferenciaCurso]  WITH CHECK ADD  CONSTRAINT [FK_PreferenciaCurso_Sede] FOREIGN KEY([fk_idSede])
REFERENCES [dbo].[Sede] ([idSede])
GO
ALTER TABLE [dbo].[PreferenciaCurso] CHECK CONSTRAINT [FK_PreferenciaCurso_Sede]
GO
/****** Object:  ForeignKey [FK_PreferenciaCurso_TipoPrioridad]    Script Date: 05/24/2015 13:40:41 ******/
ALTER TABLE [dbo].[PreferenciaCurso]  WITH CHECK ADD  CONSTRAINT [FK_PreferenciaCurso_TipoPrioridad] FOREIGN KEY([fk_idTipoPrioridad])
REFERENCES [dbo].[TipoPrioridad] ([idTipoPrioridad])
GO
ALTER TABLE [dbo].[PreferenciaCurso] CHECK CONSTRAINT [FK_PreferenciaCurso_TipoPrioridad]
GO
