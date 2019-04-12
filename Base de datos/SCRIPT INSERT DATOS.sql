USE BD_LETS_GO
GO


/* insertar datos estado*/
INSERT INTO [SCH_SERVICIOS].[TBL_ESTADOS]
           (ID_Estado
           ,Estado)
     VALUES
           (1,'Activo')
GO

INSERT INTO [SCH_SERVICIOS].[TBL_ESTADOS]
           (ID_Estado
           ,Estado)
     VALUES
           (2,'Inactivo')
GO

/* insertar datos BANCO*/

INSERT INTO [SCH_CUENTA].[TBL_BANCO]
           (ID_Banco
           ,Nombre_Banco)
     VALUES
           (1,'BCR')
GO

INSERT INTO [SCH_CUENTA].[TBL_BANCO]
           (ID_Banco
           ,Nombre_Banco)
     VALUES
           (2,'BAC')
GO

/* insertar datos TIPO TARJETA*/

INSERT INTO [SCH_CUENTA].[TBL_TIPO_TARJETA]
           ([ID_Tipo_Tarjeta]
           ,[Descripcion])
     VALUES
           (1,'Credito')
GO

INSERT INTO [SCH_CUENTA].[TBL_TIPO_TARJETA]
           ([ID_Tipo_Tarjeta]
           ,[Descripcion])
     VALUES
           (2,'Debito')
GO

/* insertar datos TIPO vehiculo*/

INSERT INTO [SCH_CUENTA].[TBL_TIPO_VEHICULO]
           ([ID_Tipo_Vehiculo]
           ,[Descripcion])
     VALUES
           (1,'Pequeño')
GO

INSERT INTO [SCH_CUENTA].[TBL_TIPO_VEHICULO]
           ([ID_Tipo_Vehiculo]
           ,[Descripcion])
     VALUES
           (2,'XL')
GO

/* insertar datos MARCA*/

INSERT INTO [SCH_CUENTA].[TBL_MARCA]
           ([ID_Marca]
           ,[Descripcion])
     VALUES
           (1,'Nissan')
GO

INSERT INTO [SCH_CUENTA].[TBL_MARCA]
           ([ID_Marca]
           ,[Descripcion])
     VALUES
           (2,'Ford')
GO

/* insertar datos modelo*/

INSERT INTO [SCH_CUENTA].[TBL_MODELO]
           ([ID_Modelo]
           ,[ID_Marca]
		   ,[Modelo])
     VALUES
           (1,1,'GT-R')
GO

INSERT INTO [SCH_CUENTA].[TBL_MODELO]
           ([ID_Modelo]
           ,[ID_Marca]
		   ,[Modelo])
     VALUES
           (2,2,'Fusion')
GO

/* insertar datos vehiculo*/

INSERT INTO [SCH_CUENTA].[TBL_VEHICULO]
           ([ID_Vehiculo]
           ,[ID_Modelo]
		   ,[Matricula]
		   ,[ANNO])
     VALUES
           (1,1,'GTR2012',2017)
GO

INSERT INTO [SCH_CUENTA].[TBL_VEHICULO]
           ([ID_Vehiculo]
           ,[ID_Modelo]
		   ,[Matricula]
		   ,[ANNO])
     VALUES
           (2,2,'FF2013',2018)
GO

/* insertar datos EMPRESA*/

INSERT INTO [SCH_EMPRESA].[TBL_EMPRESA]
           ([ID_Cedula_Juridica]
           ,[Nombre_Empresa]
		   ,[Telefono]
		   ,[Sitio_Web]
		   ,[Email]
		   ,[Direccion])
     VALUES
           (3101121230,'LetsGo',22225050,'www.letsgo.go.cr','letsgo@hotmail.com','Hatillo')
GO

/* insertar datos preguntas*/

INSERT INTO [SCH_CUENTA].[TBL_PREGUNTAS]
           ([ID_Pregunta_Seguridad]
           ,[Detalle_Preguntas])
     VALUES
           (1,'Cual es su numero de cuenta')
GO

/* insertar datos tarjeta*/

INSERT INTO [SCH_CUENTA].[TBL_TARJETA]
           ([ID_Numero_Tarjeta]
           ,[ID_Tipo_Tarjeta]
		   ,[ID_Banco]
		   ,[Numero_Cuenta]
		   ,[Fecha_Vencimiento]
		   ,[CVV])
     VALUES
           (5314450206270000,1,2,1234567810,'2019-12-25',123)
GO

INSERT INTO [SCH_CUENTA].[TBL_TARJETA]
           ([ID_Numero_Tarjeta]
           ,[ID_Tipo_Tarjeta]
		   ,[ID_Banco]
		   ,[Numero_Cuenta]
		   ,[Fecha_Vencimiento]
		   ,[CVV])
     VALUES
           (2314450206270000,2,1,1087654321,'2019-12-25',258)
GO

/* insertar datos cuenta*/

INSERT INTO [SCH_CUENTA].[TBL_CUENTA]
           ([ID_Cuenta]
           ,[Nombre]
		   ,[Apellido_1]
		   ,[Apellido_2]
		   ,[Pass]
		   ,[Telefono]
		   ,[Email]
		   ,[ID_Pregunta_Seguridad]
		   ,[Respuesta_Seguridad])
     VALUES
           (1,'Son','Goku','Kakarotto','minombreesGoku1',22080405,'tengohambre@hotmail.com',1,'Milk la tiene')
GO

INSERT INTO [SCH_CUENTA].[TBL_CUENTA]
           ([ID_Cuenta]
           ,[Nombre]
		   ,[Apellido_1]
		   ,[Apellido_2]
		   ,[Pass]
		   ,[Telefono]
		   ,[Email]
		   ,[ID_Pregunta_Seguridad]
		   ,[Respuesta_Seguridad])
     VALUES
           (2,'Piccolo','Daimaku','Kamisama','mihijoGohan1',22080102,'gokumalpadre@hotmail.com',1,'Milk la tiene')
GO

INSERT INTO [SCH_CUENTA].[TBL_CUENTA]
           ([ID_Cuenta]
           ,[Nombre]
		   ,[Apellido_1]
		   ,[Apellido_2]
		   ,[Pass]
		   ,[Telefono]
		   ,[Email]
		   ,[ID_Pregunta_Seguridad]
		   ,[Respuesta_Seguridad])
     VALUES
           (3,'Saber','Arturia','Pendragon','santogrial1',20256594,'excalibur94@hotmail.com',1,'loquebusco')
GO

/* insertar datos cliente*/

INSERT INTO [SCH_CUENTA].[TBL_CLIENTE]
           ([ID_Cliente]
           ,[ID_Cuenta]
		   ,[ID_Estado]
		   ,[ID_Numero_Tarjeta])
     VALUES
           (1,1,1,5314450206270000)
GO

/* insertar datos conductor*/

INSERT INTO [SCH_CUENTA].[TBL_CONDUCTOR]
           ([ID_Conductor]
           ,[ID_Cuenta]
		   ,[ID_Estado]
		   ,[ID_Vehiculo]
		   ,[ID_Numero_Tarjeta])
     VALUES
           (1,2,1,1,2314450206270000)
GO

/* insertar datos comision*/

INSERT INTO [SCH_CUENTA].[TBL_COMISION]
           ([ID_Comision]
           ,[Comision]
		   ,[Descripcion])
     VALUES
           (1,10,'Viaje')
GO

/* insertar datos solicitud viaje*/

INSERT INTO [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
           ([ID_Solicitud_Viaje]
           ,[ID_Cliente]
		   ,[ID_Tipo_Vehiculo]
		   ,[Ruta_Inicial]
		   ,[Ruta_Final]
		   ,[Cantidad_Km]
		   ,[Costo_Inicial])
     VALUES
           (1,1,1,'Mall San Pedro','Universidad Ameri',1,500)
GO

/* insertar datos viaje*/

INSERT INTO [SCH_SERVICIOS].[TBL_VIAJE]
           ([ID_Viaje]
           ,[ID_Conductor]
		   ,[ID_Solicitud_Viaje]
		   ,[ID_Estado])
     VALUES
           (1,1,1,1)
GO

/* insertar datos encabezado*/

INSERT INTO [SCH_CUENTA].[TBL_ENCABEZADO]
           ([ID_Encabezado]
           ,[Fecha]
		   ,[ID_Viaje])
     VALUES
           (1,'2019-04-11',1)
GO

/* insertar datos detalle*/

INSERT INTO [SCH_CUENTA].[TBL_DETALLE]
           ([ID_Detalle]
           ,[ID_Encabezado]
		   ,[ID_Comision]
		   ,[Total])
     VALUES
           (1,1,1,500)
GO

/* insertar datos rating*/

INSERT INTO [SCH_SERVICIOS].[TBL_RATING]
           ([ID_Rating]
           ,[Rating]
		   ,[ID_Viaje])
     VALUES
           (1,5,1)
GO

/* insertar datos detalle*/

INSERT INTO [SCH_EMPRESA].[TBL_ADMINISTRADOR]
           ([ID_Administrador]
           ,[ID_Cuenta]
		   ,[ID_Estado]
		   ,[ID_Cedula_Juridica])
     VALUES
           (1,1,1,3101121230)
GO