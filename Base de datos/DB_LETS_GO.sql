USE [master]
GO
 
----------------------------------------------- CREACION BASE DE DATOS ------------------------------------------------------------
CREATE DATABASE [BD_LETS_GO] 
GO

USE [BD_LETS_GO] 
GO

------------------------------------------------ CREACION SCHEMAS ------------------------------------------------------------------
 
CREATE SCHEMA [SCH_EMPRESA] 
GO
 
CREATE SCHEMA [SCH_SERVICIOS] 
GO
 
CREATE SCHEMA [SCH_CUENTA] 
GO

------------------------------------------------ CREACION TABLAS ------------------------------------------------------------------
 
------------------ TABLA MODELO ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_MODELO]
(
ID_Modelo tinyint NOT NULL,----PK
ID_Marca tinyint NOT NULL,  --FK--
Modelo varchar(20) NOT NULL

 
    CONSTRAINT PK_TBL_MODELO PRIMARY KEY CLUSTERED (ID_Modelo)
)
GO

 
------------------ TABLA VEHICULO ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_VEHICULO]
(
ID_Vehiculo tinyint NOT NULL, ----PK
ID_Modelo tinyint NOT NULL, ----FK
Matricula varchar(20) NOT NULL,
ANNO int NOT NULL

 
    CONSTRAINT PK_TBL_VEHICULO PRIMARY KEY CLUSTERED (ID_Vehiculo)
)
GO

------------------ TABLA CONDUCTOR ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_CONDUCTOR]
(
ID_Conductor int not null,  --PK
ID_Cuenta int not null,  --FK
ID_Estado tinyint not null, --FK
ID_Vehiculo tinyint not null, --FK
ID_Numero_Tarjeta bigint not null, --FK
 
    CONSTRAINT PK_TBL_CONDUCTOR PRIMARY KEY CLUSTERED (ID_Conductor)
)
GO


------------------ TABLA TARJETA ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_TARJETA]
(
ID_Numero_Tarjeta bigint NOT NULL,
ID_Tipo_Tarjeta tinyint NOT NULL,
ID_Banco tinyint NOT NULL,
Numero_Cuenta bigint NOT NULL,
Fecha_Vencimiento date NOT NULL,
CVV smallint NOT NULL

 
    CONSTRAINT PK_TBL_TARJETA PRIMARY KEY CLUSTERED (ID_Numero_Tarjeta)
)
GO

------------------ TABLA TIPO_TARJETA ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_TIPO_TARJETA]
(
ID_Tipo_Tarjeta tinyint NOT NULL,
Descripcion varchar(30) NOT NULL
 
    CONSTRAINT PK_TBL_TIPO_TARJETA PRIMARY KEY CLUSTERED (ID_Tipo_Tarjeta)
)
GO

------------------ TABLA BANCO ---------- [SCH_CUENTA] ------------------ 


CREATE TABLE [SCH_CUENTA].[TBL_BANCO]
(
ID_Banco tinyint NOT NULL,
Nombre_Banco varchar(30) NOT NULL,
 
    CONSTRAINT PK_TBL_BANCO PRIMARY KEY CLUSTERED (ID_Banco)
)
GO

------------------ TABLA TIPO_VEHICULO ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_TIPO_VEHICULO]
(
ID_Tipo_Vehiculo tinyint NOT NULL,
Descripcion varchar(100) NOT NULL

)

GO

ALTER TABLE [SCH_CUENTA].[TBL_TIPO_VEHICULO]
ADD CONSTRAINT [PK_ID_Tipo_Vehiculo] PRIMARY KEY CLUSTERED
(
[ID_Tipo_Vehiculo] 
)


------------------ TABLA SOLICITUD_VIAJE ---------- [SCH_Servicios] ------------------ 


CREATE TABLE [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
(
ID_Solicitud_Viaje smallint not null,
ID_Cliente int NOT NULL,--fk--
ID_Tipo_Vehiculo tinyint not null,---fk---
Ruta_Inicial varchar(20)not null,
Ruta_Final varchar(20) not null,
Cantidad_Km decimal not null,
Costo_Inicial money not null

)
GO

ALTER TABLE [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
ADD CONSTRAINT [PK_ID_Solicitud_Viaje] PRIMARY KEY CLUSTERED
(
[ID_Solicitud_Viaje] ASC
)

------------------ TABLA VIAJE ---------- [SCH_Servicios] ------------------ 


CREATE TABLE [SCH_SERVICIOS].[TBL_VIAJE]
(
ID_Viaje int not null,
ID_Conductor int not null,--fk--
ID_Solicitud_Viaje smallint not null,--fk--
ID_Estado tinyint not null--fk--
)
GO

ALTER TABLE [SCH_Servicios].[TBL_VIAJE]
ADD CONSTRAINT [PK_ID_Viaje] PRIMARY KEY CLUSTERED
(
[ID_Viaje] ASC
)
GO


------------------ TABLA ENCABEZADO ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_ENCABEZADO]
(
ID_Encabezado int not null,
Fecha datetime not null,
ID_Viaje int not null--fk--
)
GO

ALTER TABLE [SCH_CUENTA].[TBL_ENCABEZADO]
ADD CONSTRAINT[PK_ID_Encabezado] PRIMARY KEY CLUSTERED
(
[ID_Encabezado] ASC
)
GO 


------------------ TABLA DETALLE ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_DETALLE]
(
ID_Detalle int not null,
ID_Encabezado int not null,--fk--
ID_Comision int not null,--fk--
Total money not null
)

ALTER TABLE [SCH_CUENTA].[TBL_DETALLE]
ADD CONSTRAINT[PK_ID_Detalle] PRIMARY KEY CLUSTERED
(
[ID_Detalle] ASC
)
GO 

------------------ TABLA COMISION ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_COMISION]
(
ID_Comision int not null,
Comision tinyint not null,
Descripcion varchar (50)
)
ALTER TABLE [SCH_CUENTA].[TBL_COMISION]
ADD CONSTRAINT[PK_ID_Comision] PRIMARY KEY CLUSTERED
(
[ID_Comision] ASC
)
GO 


------------------ TABLA EMPRESA ---------- [SCH_EMPRESA] ------------------ 

CREATE TABLE [SCH_EMPRESA].[TBL_EMPRESA]
(
ID_Cedula_Juridica bigint NOT NULL,
Nombre_Empresa varchar(30) NOT NULL,
Telefono int NOT NULL,
Sitio_Web varchar(30) NOT NULL,
Email varchar(30) NOT NULL,
Direccion varchar(60) NOT NULL,
 
    CONSTRAINT PK_TBL_EMPRESA PRIMARY KEY CLUSTERED (ID_Cedula_Juridica)
)
GO


------------------ TABLA ADMINISTRADOR ---------- [SCH_EMPRESA] ------------------ 

CREATE TABLE [SCH_EMPRESA].[TBL_ADMINISTRADOR]
(
ID_Administrador int NOT NULL,
ID_Cuenta int NOT NULL, --fk
ID_Estado tinyint NOT NULL, --fk
ID_Cedula_Juridica bigint NOT NULL
 
    CONSTRAINT PK_TBL_ADMINISTRADOR PRIMARY KEY CLUSTERED (ID_Administrador)
)
GO

 ------------------ TABLA CUENTA ---------- [SCH_CUENTA] ------------------ 


CREATE TABLE [SCH_CUENTA].[TBL_CUENTA]
(
ID_Cuenta int NOT NULL,
Nombre varchar(30) NOT NULL,
Apellido_1 varchar(30) NOT NULL,
Apellido_2 varchar(30) NOT NULL,
Pass varchar(15) NOT NULL,
Telefono int NOT NULL,
Email varchar(30) NOT NULL,
ID_Pregunta_Seguridad tinyint NOT NULL,
Respuesta_Seguridad varchar(30) NOT NULL
 
    CONSTRAINT PK_TBL_CUENTA PRIMARY KEY CLUSTERED (ID_Cuenta)
)
GO


 ------------------ TABLA ESTADOS ---------- [SCH_SERVICIOS] ------------------ 
 
CREATE TABLE [SCH_SERVICIOS].[TBL_ESTADOS]
(
ID_Estado tinyint NOT NULL,
Estado varchar(15) NOT NULL
 
    CONSTRAINT PK_TBL_ESTADOS   PRIMARY KEY CLUSTERED (ID_Estado)
)
GO


 ------------------ TABLA CLIENTE ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_CLIENTE]
(
ID_Cliente int NOT NULL,
ID_Cuenta int NOT NULL, --fk
ID_Estado tinyint NOT NULL, --fk
ID_Numero_Tarjeta bigint NOT NULL, --fk

 
    CONSTRAINT PK_TBL_TIPO_CLIENTE PRIMARY KEY CLUSTERED (ID_Cliente)
)
GO


 ------------------ TABLA MARCA ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_MARCA]
(
ID_Marca tinyint NOT NULL,
Descripcion varchar(20) NULL
 
    CONSTRAINT PK_TBL_MARCA   PRIMARY KEY CLUSTERED (ID_Marca)
)
GO

 ------------------ TABLA RATING ---------- [SCH_SERVICIOS] ------------------ 

CREATE TABLE [SCH_SERVICIOS].[TBL_RATING]
(
ID_Rating tinyint NOT NULL,
Rating tinyint NULL,
ID_Viaje int NULL --fk				
 
    CONSTRAINT PK_TBL_RATING   PRIMARY KEY CLUSTERED (ID_Rating)
)
GO

 ------------------ TABLA PREGUNTAS ---------- [SCH_CUENTA] ------------------ 

CREATE TABLE [SCH_CUENTA].[TBL_PREGUNTAS]
(
ID_Pregunta_Seguridad tinyint NOT NULL,
Detalle_Preguntas varchar(50) NOT NULL

 CONSTRAINT PK_TBL_PREGUNTA_SEGURIDAD   PRIMARY KEY CLUSTERED (ID_Pregunta_Seguridad )
)

GO

----------------------------------------------- CREACION FK -------------------------------------------

-------------------------TABLA VIAJE-------------------

----------------------FK CONDUCTOR
ALTER TABLE [SCH_SERVICIOS].[TBL_VIAJE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_VIAJE_TBL_CONDUCTOR_ID_Conductor] FOREIGN KEY ([ID_Conductor]) REFERENCES [SCH_CUENTA].[TBL_CONDUCTOR] ([ID_Conductor])

GO

ALTER TABLE [SCH_SERVICIOS].[TBL_VIAJE] CHECK CONSTRAINT [FK_TBL_VIAJE_TBL_CONDUCTOR_ID_Conductor]
GO

----------------------FK SOLICITUD
ALTER TABLE [SCH_SERVICIOS].[TBL_VIAJE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_VIAJE_TBL_SOLICITUD_VIAJE_ID_Solicitud_Viaje] FOREIGN KEY ([ID_Solicitud_Viaje]) REFERENCES [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE] ([ID_Solicitud_Viaje])

GO

ALTER TABLE [SCH_SERVICIOS].[TBL_VIAJE] CHECK CONSTRAINT [FK_TBL_VIAJE_TBL_SOLICITUD_VIAJE_ID_Solicitud_Viaje]
GO

------ALTER TABLE [SCH_SERVICIOS].[TBL_VIAJE] DROP CONSTRAINT [FK_TBL_VIAJE_TBL_SOLICITUD_VIAJE_ID_Solicitud_Viaje]
------GO


---------------------FK ESTADO
ALTER TABLE [SCH_SERVICIOS].[TBL_VIAJE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_VIAJE_TBL_ESTADOS_ID_Estado] FOREIGN KEY ([ID_Estado]) REFERENCES [SCH_SERVICIOS].[TBL_ESTADOS] ([ID_Estado])

GO

ALTER TABLE [SCH_SERVICIOS].[TBL_VIAJE] CHECK CONSTRAINT [FK_TBL_VIAJE_TBL_ESTADOS_ID_Estado]
GO


-------------------------TABLA SOLICITUD_VIAJE

------------------------FK CLIENTE

ALTER TABLE [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_SOLICITUD_VIAJE_TBL_CLIENTE_ID_Cliente] FOREIGN KEY ([ID_Cliente]) REFERENCES [SCH_CUENTA].[TBL_CLIENTE] ([ID_Cliente])

GO

ALTER TABLE [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE] CHECK CONSTRAINT [FK_TBL_SOLICITUD_VIAJE_TBL_CLIENTE_ID_Cliente]
GO

-----------------------FK TIPO_VEHICULO
ALTER TABLE [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_SOLICITUD_VIAJE_TBL_TIP_VEHICULO_ID_Tipo_Vehiculo] FOREIGN KEY ([ID_Tipo_Vehiculo]) REFERENCES [SCH_CUENTA].[TBL_TIPO_VEHICULO] ([ID_Tipo_Vehiculo])

GO

ALTER TABLE [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE] CHECK CONSTRAINT [FK_TBL_SOLICITUD_VIAJE_TBL_TIP_VEHICULO_ID_Tipo_Vehiculo]
GO

-------------------------TABLA RATING-----------------------------

------------------------FK VIAJE
ALTER TABLE [SCH_SERVICIOS].[TBL_RATING] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_RATINGE_TBL_VIAJE_ID_Viaje] FOREIGN KEY ([ID_Viaje]) REFERENCES [SCH_SERVICIOS].[TBL_VIAJE] ([ID_Viaje])

GO

ALTER TABLE [SCH_SERVICIOS].[TBL_RATING] CHECK CONSTRAINT [FK_TBL_RATINGE_TBL_VIAJE_ID_Viaje]
GO



----------------------TABLA ADMINISTRADOR---------------------------------

-----------------------FK CUENTA
ALTER TABLE [SCH_EMPRESA].[TBL_ADMINISTRADOR] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_ADMINISTRADOR_TBL_CUENTA_ID_Cuenta] FOREIGN KEY ([ID_Cuenta]) REFERENCES [SCH_CUENTA].[TBL_CUENTA] ([ID_Cuenta])

GO

ALTER TABLE [SCH_EMPRESA].[TBL_ADMINISTRADOR] CHECK CONSTRAINT [FK_TBL_ADMINISTRADOR_TBL_CUENTA_ID_Cuenta]
GO

-----------------------FK ESTADO
ALTER TABLE [SCH_EMPRESA].[TBL_ADMINISTRADOR] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_ADMINISTRADOR_TBL_ESTADOS_ID_Estado] FOREIGN KEY ([ID_Estado]) REFERENCES [SCH_SERVICIOS].[TBL_ESTADOS] ([ID_Estado])

GO

ALTER TABLE [SCH_EMPRESA].[TBL_ADMINISTRADOR] CHECK CONSTRAINT [FK_TBL_ADMINISTRADOR_TBL_ESTADOS_ID_Estado]
GO

-----------------------FK CEDULA JURIDICA
ALTER TABLE [SCH_EMPRESA].[TBL_ADMINISTRADOR] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_ADMINISTRADOR_TBL_EMPRESA_ID_Cedula_Juridica] FOREIGN KEY ([ID_Cedula_Juridica]) REFERENCES [SCH_EMPRESA].[TBL_EMPRESA] ([ID_Cedula_Juridica])

GO

ALTER TABLE [SCH_EMPRESA].[TBL_ADMINISTRADOR] CHECK CONSTRAINT [FK_TBL_ADMINISTRADOR_TBL_EMPRESA_ID_Cedula_Juridica]
GO

---------------------TABLA VEHICULO----------------------

-------------------FK MODELO
ALTER TABLE [SCH_CUENTA].[TBL_VEHICULO] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_VEHICULO_TBL_MODELO_ID_Modelo] FOREIGN KEY ([ID_Modelo]) REFERENCES [SCH_CUENTA].[TBL_MODELO] ([ID_Modelo])

GO

ALTER TABLE [SCH_CUENTA].[TBL_VEHICULO] CHECK CONSTRAINT [FK_TBL_VEHICULO_TBL_MODELO_ID_Modelo]
GO

-----------------------TABLA TARJETA

---------------------FK TIPO TARJETA
ALTER TABLE [SCH_CUENTA].[TBL_TARJETA] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_TARJETA_TBL_TIPO_TARJETA_ID_Tipo_Tarjeta] FOREIGN KEY ([ID_Tipo_Tarjeta]) REFERENCES [SCH_CUENTA].[TBL_TIPO_TARJETA] ([ID_Tipo_Tarjeta])

GO

ALTER TABLE [SCH_CUENTA].[TBL_TARJETA] CHECK CONSTRAINT [FK_TBL_TARJETA_TBL_TIPO_TARJETA_ID_Tipo_Tarjeta]
GO

------------------------FK BANCO
ALTER TABLE [SCH_CUENTA].[TBL_TARJETA] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_TARJETA_TBL_BANCO_ID_Banco] FOREIGN KEY ([ID_Banco]) REFERENCES [SCH_CUENTA].[TBL_BANCO] ([ID_Banco])

GO

ALTER TABLE [SCH_CUENTA].[TBL_TARJETA] CHECK CONSTRAINT [FK_TBL_TARJETA_TBL_BANCO_ID_Banco]
GO

----------------------------------- TABLA CLIENTE -----------------------------------

----------------- FK ID_Estado -----------------

ALTER TABLE [SCH_CUENTA].[TBL_CLIENTE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_CLIENTE_TBL_ESTADOS_ID_Estado] FOREIGN KEY ([ID_Estado]) REFERENCES [SCH_SERVICIOS].[TBL_ESTADOS] ([ID_Estado])

GO

ALTER TABLE [SCH_CUENTA].[TBL_CLIENTE] CHECK CONSTRAINT [FK_TBL_CLIENTE_TBL_ESTADOS_ID_Estado]
GO

----------------- FK ID_Numero_Tarjeta -----------------

ALTER TABLE [SCH_CUENTA].[TBL_CLIENTE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_CLIENTE_TBL_TARJETA_ID_Numero_Tarjeta] FOREIGN KEY ([ID_Numero_Tarjeta]) REFERENCES [SCH_CUENTA].[TBL_TARJETA] ([ID_Numero_Tarjeta])

GO

ALTER TABLE [SCH_CUENTA].[TBL_CLIENTE] CHECK CONSTRAINT [FK_TBL_CLIENTE_TBL_TARJETA_ID_Numero_Tarjeta]
GO

----------------- FK ID_Cuenta -----------------

ALTER TABLE [SCH_CUENTA].[TBL_CLIENTE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_CLIENTE_TBL_CUENTA_ID_Cuenta] FOREIGN KEY ([ID_Cuenta]) REFERENCES [SCH_CUENTA].[TBL_CUENTA] ([ID_Cuenta])

GO

ALTER TABLE [SCH_CUENTA].[TBL_CLIENTE] CHECK CONSTRAINT [FK_TBL_CLIENTE_TBL_CUENTA_ID_Cuenta]
GO


----------------------------------- TABLA CONDUCTOR -----------------------------------

----------------- FK ID_Estado -----------------

ALTER TABLE [SCH_CUENTA].[TBL_CONDUCTOR] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_CONDUCTOR_TBL_ESTADOS_ID_Estado] FOREIGN KEY ([ID_Estado]) REFERENCES [SCH_SERVICIOS].[TBL_ESTADOS] ([ID_Estado])

GO

ALTER TABLE [SCH_CUENTA].[TBL_CONDUCTOR] CHECK CONSTRAINT [FK_TBL_CONDUCTOR_TBL_ESTADOS_ID_Estado]
GO

----------------- FK ID_Numero_Tarjeta -----------------

ALTER TABLE [SCH_CUENTA].[TBL_CONDUCTOR] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_CONDUCTOR_TBL_TARJETA_ID_Numero_Tarjeta] FOREIGN KEY ([ID_Numero_Tarjeta]) REFERENCES [SCH_CUENTA].[TBL_TARJETA] ([ID_Numero_Tarjeta])

GO

ALTER TABLE [SCH_CUENTA].[TBL_CONDUCTOR] CHECK CONSTRAINT [FK_TBL_CONDUCTOR_TBL_TARJETA_ID_Numero_Tarjeta]
GO


----------------- FK ID_Cuenta -----------------

ALTER TABLE [SCH_CUENTA].[TBL_CONDUCTOR] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_CONDUCTOR_TBL_CUENTA_ID_Cuenta] FOREIGN KEY ([ID_Cuenta]) REFERENCES [SCH_CUENTA].[TBL_CUENTA] ([ID_Cuenta])

GO

ALTER TABLE [SCH_CUENTA].[TBL_CONDUCTOR] CHECK CONSTRAINT [FK_TBL_CONDUCTOR_TBL_CUENTA_ID_Cuenta]
GO

----------------- FK ID_Vehiculo -----------------

ALTER TABLE [SCH_CUENTA].[TBL_CONDUCTOR] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_CONDUCTOR_TBL_VEHICULO_ID_Vehiculo] FOREIGN KEY ([ID_Vehiculo]) REFERENCES [SCH_CUENTA].[TBL_VEHICULO] ([ID_Vehiculo])

GO

ALTER TABLE [SCH_CUENTA].[TBL_CONDUCTOR] CHECK CONSTRAINT [FK_TBL_CONDUCTOR_TBL_VEHICULO_ID_Vehiculo]
GO

----------------------------------- TABLA CUENTA -----------------------------------

----------------- FK ID_Pregunta_Seguridad -----------------

ALTER TABLE [SCH_CUENTA].[TBL_CUENTA] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_CUENTA_TBL_PREGUNTAS_ID_Pregunta_Seguridad] FOREIGN KEY ([ID_Pregunta_Seguridad]) REFERENCES [SCH_CUENTA].[TBL_PREGUNTAS] ([ID_Pregunta_Seguridad])

GO

ALTER TABLE [SCH_CUENTA].[TBL_CUENTA] CHECK CONSTRAINT [FK_TBL_CUENTA_TBL_PREGUNTAS_ID_Pregunta_Seguridad]
GO

----------------------------------- TABLA DETALLE -----------------------------------

----------------- FK ID_Encabezado -----------------

ALTER TABLE [SCH_CUENTA].[TBL_DETALLE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_DETALLE_TBL_ENCABEZADO_ID_Encabezado] FOREIGN KEY ([ID_Encabezado]) REFERENCES [SCH_CUENTA].[TBL_ENCABEZADO] ([ID_Encabezado])

GO

ALTER TABLE [SCH_CUENTA].[TBL_DETALLE] CHECK CONSTRAINT [FK_TBL_DETALLE_TBL_ENCABEZADO_ID_Encabezado]
GO

----------------- FK ID_Comision -----------------
 
ALTER TABLE [SCH_CUENTA].[TBL_DETALLE] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_DETALLE_TBL_COMISION_ID_Comision] FOREIGN KEY ([ID_Comision]) REFERENCES [SCH_CUENTA].[TBL_COMISION] ([ID_Comision])

GO

ALTER TABLE [SCH_CUENTA].[TBL_DETALLE] CHECK CONSTRAINT [FK_TBL_DETALLE_TBL_COMISION_ID_Comision]
GO

----------------------------------- TABLA ENCABEZADO -----------------------------------

----------------- FK ID_Viaje -----------------

ALTER TABLE [SCH_CUENTA].[TBL_ENCABEZADO] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_ENCABEZADO_TBL_VIAJE_ID_Viaje] FOREIGN KEY ([ID_Viaje]) REFERENCES [SCH_SERVICIOS].[TBL_VIAJE] ([ID_Viaje])

GO

ALTER TABLE [SCH_CUENTA].[TBL_ENCABEZADO] CHECK CONSTRAINT [FK_TBL_ENCABEZADO_TBL_VIAJE_ID_Viaje]
GO


----------------------------------- TABLA MODELO -----------------------------------

----------------- FK ID_Marca -----------------

ALTER TABLE [SCH_CUENTA].[TBL_MODELO] WITH NOCHECK 
ADD CONSTRAINT [FK_TBL_MODELO_TBL_MARCA_ID_Marca] FOREIGN KEY ([ID_Marca]) REFERENCES [SCH_CUENTA].[TBL_MARCA] ([ID_Marca])

GO

ALTER TABLE [SCH_CUENTA].[TBL_MODELO] CHECK CONSTRAINT [FK_TBL_MODELO_TBL_MARCA_ID_Marca]
GO

