USE [BD_LETS_GO] 
GO

------------------------------SP TBL_ADMINISTRADOR
USE [BD_LETS_GO] 
GO

--Select
    create procedure [SCH_EMPRESA].[sp_select_TBL_ADMINISTRADOR]
    as
    select [ID_Administrador] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Cedula_Juridica] from [SCH_EMPRESA].[TBL_ADMINISTRADOR]
    go
--Insert
    create procedure [SCH_EMPRESA].[sp_insert_TBL_ADMINISTRADOR]
    (
        @ID_Administrador int ,@ID_Cuenta int ,@ID_Estado tinyint ,@ID_Cedula_Juridica bigint
    )
    as
    IF NOT EXISTS (SELECT [ID_Administrador] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Cedula_Juridica]
                    FROM [SCH_EMPRESA].[TBL_ADMINISTRADOR]
                    WHERE [ID_Administrador] = @ID_Administrador
AND [ID_Cuenta] = @ID_Cuenta
AND [ID_Estado] = @ID_Estado
AND [ID_Cedula_Juridica] = @ID_Cedula_Juridica)
    BEGIN
        INSERT INTO [SCH_EMPRESA].[TBL_ADMINISTRADOR]
                ([ID_Administrador] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Cedula_Juridica])
        VALUES (@ID_Administrador ,@ID_Cuenta ,@ID_Estado ,@ID_Cedula_Juridica)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Administrador])
    FROM [SCH_EMPRESA].[TBL_ADMINISTRADOR]
    go
--Update
    create procedure [SCH_EMPRESA].[sp_update_TBL_ADMINISTRADOR]
    (
        @ID_Administrador int ,@ID_Cuenta int ,@ID_Estado tinyint ,@ID_Cedula_Juridica bigint
    )
    as
    update [SCH_EMPRESA].[TBL_ADMINISTRADOR]
    set [ID_Cuenta] = @ID_Cuenta,[ID_Estado] = @ID_Estado,[ID_Cedula_Juridica] = @ID_Cedula_Juridica
    where [ID_Administrador] = @ID_Administrador
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Administrador])
    FROM [SCH_EMPRESA].[TBL_ADMINISTRADOR]
    go
--Delete
    create procedure [SCH_EMPRESA].[sp_delete_TBL_ADMINISTRADOR]
    (
        @ID_Administrador int
    )
    as
    delete from [SCH_EMPRESA].[TBL_ADMINISTRADOR]
    where [ID_Administrador] = @ID_Administrador
    go
-- Filtrar
    create procedure [SCH_EMPRESA].[sp_search_TBL_ADMINISTRADOR]
    (
        @ID_Administrador int ,@ID_Cuenta int ,@ID_Estado tinyint ,@ID_Cedula_Juridica bigint
    )
    as
    SELECT [ID_Administrador] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Cedula_Juridica]
    FROM [SCH_EMPRESA].[TBL_ADMINISTRADOR]
    WHERE [ID_Administrador] LIKE '%' + ISNULL(@ID_Administrador, [ID_Administrador]) + '%'
AND [ID_Cuenta] LIKE '%' + ISNULL(@ID_Cuenta, [ID_Cuenta]) + '%'
AND [ID_Estado] LIKE '%' + ISNULL(@ID_Estado, [ID_Estado]) + '%'
AND [ID_Cedula_Juridica] LIKE '%' + ISNULL(@ID_Cedula_Juridica, [ID_Cedula_Juridica]) + '%'
    go



-------------------------------SP TBL_BANCO
--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_BANCO]
    as
    select [ID_Banco] ,[Nombre_Banco] from [SCH_CUENTA].[TBL_BANCO]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_BANCO]
    (
        @ID_Banco tinyint ,@Nombre_Banco varchar (30)
    )
    as
    IF NOT EXISTS (SELECT [ID_Banco] ,[Nombre_Banco]
                    FROM [SCH_CUENTA].[TBL_BANCO]
                    WHERE [ID_Banco] = @ID_Banco
AND [Nombre_Banco] = @Nombre_Banco)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_BANCO]
                ([ID_Banco] ,[Nombre_Banco])
        VALUES (@ID_Banco ,@Nombre_Banco)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Banco])
    FROM [SCH_CUENTA].[TBL_BANCO]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_BANCO]
    (
        @ID_Banco tinyint ,@Nombre_Banco varchar (30)
    )
    as
    update [SCH_CUENTA].[TBL_BANCO]
    set [Nombre_Banco] = @Nombre_Banco
    where [ID_Banco] = @ID_Banco
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Banco])
    FROM [SCH_CUENTA].[TBL_BANCO]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_BANCO]
    (
        @ID_Banco tinyint
    )
    as
    delete from [SCH_CUENTA].[TBL_BANCO]
    where [ID_Banco] = @ID_Banco
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_BANCO]
    (
        @ID_Banco tinyint ,@Nombre_Banco varchar (30)
    )
    as
    SELECT [ID_Banco] ,[Nombre_Banco]
    FROM [SCH_CUENTA].[TBL_BANCO]
    WHERE [ID_Banco] LIKE '%' + ISNULL(@ID_Banco, [ID_Banco]) + '%'
AND [Nombre_Banco] LIKE '%' + ISNULL(@Nombre_Banco, [Nombre_Banco]) + '%'
    go


	-------------------------------------TBL_CLIENTE

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_CLIENTE]
    as
    select [ID_Cliente] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Numero_Tarjeta] from [SCH_CUENTA].[TBL_CLIENTE]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_CLIENTE]
    (
        @ID_Cliente int ,@ID_Cuenta int ,@ID_Estado tinyint ,@ID_Numero_Tarjeta bigint
    )
    as
    IF NOT EXISTS (SELECT [ID_Cliente] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Numero_Tarjeta]
                    FROM [SCH_CUENTA].[TBL_CLIENTE]
                    WHERE [ID_Cliente] = @ID_Cliente
AND [ID_Cuenta] = @ID_Cuenta
AND [ID_Estado] = @ID_Estado
AND [ID_Numero_Tarjeta] = @ID_Numero_Tarjeta)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_CLIENTE]
                ([ID_Cliente] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Numero_Tarjeta])
        VALUES (@ID_Cliente ,@ID_Cuenta ,@ID_Estado ,@ID_Numero_Tarjeta)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Cliente])
    FROM [SCH_CUENTA].[TBL_CLIENTE]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_CLIENTE]
    (
        @ID_Cliente int ,@ID_Cuenta int ,@ID_Estado tinyint ,@ID_Numero_Tarjeta bigint
    )
    as
    update [SCH_CUENTA].[TBL_CLIENTE]
    set [ID_Cuenta] = @ID_Cuenta,[ID_Estado] = @ID_Estado,[ID_Numero_Tarjeta] = @ID_Numero_Tarjeta
    where [ID_Cliente] = @ID_Cliente
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Cliente])
    FROM [SCH_CUENTA].[TBL_CLIENTE]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_CLIENTE]
    (
        @ID_Cliente int
    )
    as
    delete from [SCH_CUENTA].[TBL_CLIENTE]
    where [ID_Cliente] = @ID_Cliente
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_CLIENTE]
    (
        @ID_Cliente int ,@ID_Cuenta int ,@ID_Estado tinyint ,@ID_Numero_Tarjeta bigint
    )
    as
    SELECT [ID_Cliente] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Numero_Tarjeta]
    FROM [SCH_CUENTA].[TBL_CLIENTE]
    WHERE [ID_Cliente] LIKE '%' + ISNULL(@ID_Cliente, [ID_Cliente]) + '%'
AND [ID_Cuenta] LIKE '%' + ISNULL(@ID_Cuenta, [ID_Cuenta]) + '%'
AND [ID_Estado] LIKE '%' + ISNULL(@ID_Estado, [ID_Estado]) + '%'
AND [ID_Numero_Tarjeta] LIKE '%' + ISNULL(@ID_Numero_Tarjeta, [ID_Numero_Tarjeta]) + '%'
    go


	-------------------------SP TBL_COMISION

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_COMISION]
    as
    select [ID_Comision] ,[Comision] ,[Descripcion] from [SCH_CUENTA].[TBL_COMISION]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_COMISION]
    (
        @ID_Comision int ,@Comision tinyint ,@Descripcion varchar
    )
    as
    IF NOT EXISTS (SELECT [ID_Comision] ,[Comision] ,[Descripcion]
                    FROM [SCH_CUENTA].[TBL_COMISION]
                    WHERE [ID_Comision] = @ID_Comision
AND [Comision] = @Comision
AND [Descripcion] = @Descripcion)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_COMISION]
                ([ID_Comision] ,[Comision] ,[Descripcion])
        VALUES (@ID_Comision ,@Comision ,@Descripcion)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Comision])
    FROM [SCH_CUENTA].[TBL_COMISION]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_COMISION]
    (
        @ID_Comision int ,@Comision tinyint ,@Descripcion varchar
    )
    as
    update [SCH_CUENTA].[TBL_COMISION]
    set [Comision] = @Comision,[Descripcion] = @Descripcion
    where [ID_Comision] = @ID_Comision
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Comision])
    FROM [SCH_CUENTA].[TBL_COMISION]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_COMISION]
    (
        @ID_Comision int
    )
    as
    delete from [SCH_CUENTA].[TBL_COMISION]
    where [ID_Comision] = @ID_Comision
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_COMISION]
    (
        @ID_Comision int ,@Comision tinyint ,@Descripcion varchar
    )
    as
    SELECT [ID_Comision] ,[Comision] ,[Descripcion]
    FROM [SCH_CUENTA].[TBL_COMISION]
    WHERE [ID_Comision] LIKE '%' + ISNULL(@ID_Comision, [ID_Comision]) + '%'
AND [Comision] LIKE '%' + ISNULL(@Comision, [Comision]) + '%'
AND [Descripcion] LIKE '%' + ISNULL(@Descripcion, [Descripcion]) + '%'
    go

	---------------------------SP TBL_CONDUCTOR

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_CONDUCTOR]
    as
    select [ID_Conductor] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Vehiculo] from [SCH_CUENTA].[TBL_CONDUCTOR]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_CONDUCTOR]
    (
        @ID_Conductor int ,@ID_Cuenta int ,@ID_Estado tinyint ,@ID_Vehiculo tinyint
    )
    as
    IF NOT EXISTS (SELECT [ID_Conductor] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Vehiculo]
                    FROM [SCH_CUENTA].[TBL_CONDUCTOR]
                    WHERE [ID_Conductor] = @ID_Conductor
AND [ID_Cuenta] = @ID_Cuenta
AND [ID_Estado] = @ID_Estado
AND [ID_Vehiculo] = @ID_Vehiculo)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_CONDUCTOR]
                ([ID_Conductor] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Vehiculo])
        VALUES (@ID_Conductor ,@ID_Cuenta ,@ID_Estado ,@ID_Vehiculo)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Conductor])
    FROM [SCH_CUENTA].[TBL_CONDUCTOR]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_CONDUCTOR]
    (
        @ID_Conductor int ,@ID_Cuenta int ,@ID_Estado tinyint ,@ID_Vehiculo tinyint
    )
    as
    update [SCH_CUENTA].[TBL_CONDUCTOR]
    set [ID_Cuenta] = @ID_Cuenta,[ID_Estado] = @ID_Estado,[ID_Vehiculo] = @ID_Vehiculo
    where [ID_Conductor] = @ID_Conductor
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Conductor])
    FROM [SCH_CUENTA].[TBL_CONDUCTOR]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_CONDUCTOR]
    (
        @ID_Conductor int
    )
    as
    delete from [SCH_CUENTA].[TBL_CONDUCTOR]
    where [ID_Conductor] = @ID_Conductor
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_CONDUCTOR]
    (
        @ID_Conductor int ,@ID_Cuenta int ,@ID_Estado tinyint ,@ID_Vehiculo tinyint
    )
    as
    SELECT [ID_Conductor] ,[ID_Cuenta] ,[ID_Estado] ,[ID_Vehiculo]
    FROM [SCH_CUENTA].[TBL_CONDUCTOR]
    WHERE [ID_Conductor] LIKE '%' + ISNULL(@ID_Conductor, [ID_Conductor]) + '%'
AND [ID_Cuenta] LIKE '%' + ISNULL(@ID_Cuenta, [ID_Cuenta]) + '%'
AND [ID_Estado] LIKE '%' + ISNULL(@ID_Estado, [ID_Estado]) + '%'
AND [ID_Vehiculo] LIKE '%' + ISNULL(@ID_Vehiculo, [ID_Vehiculo]) + '%'
    go


	-------------------------------SP TBL_CUENTA

--Select
    create procedure SCH_CUENTA.[sp_select_TBL_CUENTA]
    as
    select [ID_Cuenta] ,[Nombre] ,[Apellido_1] ,[Apellido_2] ,[Pass] ,[Telefono] ,[Email] ,[ID_Pregunta_Seguridad] ,[Respuesta_Seguridad] from SCH_CUENTA.[TBL_CUENTA]
    go
--Insert
    create procedure SCH_CUENTA.[sp_insert_TBL_CUENTA]
    (
        @ID_Cuenta int ,@Nombre varchar (30) ,@Apellido_1 varchar (30) ,@Apellido_2 varchar (30) ,@Pass varchar (15) ,@Telefono int ,@Email varchar (30) ,@ID_Pregunta_Seguridad tinyint ,@Respuesta_Seguridad varchar (30)
    )
    as
    IF NOT EXISTS (SELECT [ID_Cuenta] ,[Nombre] ,[Apellido_1] ,[Apellido_2] ,[Pass] ,[Telefono] ,[Email] ,[ID_Pregunta_Seguridad] ,[Respuesta_Seguridad]
                    FROM SCH_CUENTA.[TBL_CUENTA]
                    WHERE [ID_Cuenta] = @ID_Cuenta
AND [Nombre] = @Nombre
AND [Apellido_1] = @Apellido_1
AND [Apellido_2] = @Apellido_2
AND [Pass] = @Pass
AND [Telefono] = @Telefono
AND [Email] = @Email
AND [ID_Pregunta_Seguridad] = @ID_Pregunta_Seguridad
AND [Respuesta_Seguridad] = @Respuesta_Seguridad)
    BEGIN
        INSERT INTO SCH_CUENTA.[TBL_CUENTA]
                ([ID_Cuenta] ,[Nombre] ,[Apellido_1] ,[Apellido_2] ,[Pass] ,[Telefono] ,[Email] ,[ID_Pregunta_Seguridad] ,[Respuesta_Seguridad])
        VALUES (@ID_Cuenta ,@Nombre ,@Apellido_1 ,@Apellido_2 ,@Pass ,@Telefono ,@Email ,@ID_Pregunta_Seguridad ,@Respuesta_Seguridad)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Cuenta])
    FROM SCH_CUENTA.[TBL_CUENTA]
    go
--Update
    create procedure SCH_CUENTA.[sp_update_TBL_CUENTA]
    (
        @ID_Cuenta int ,@Nombre varchar (30) ,@Apellido_1 varchar (30) ,@Apellido_2 varchar (30) ,@Pass varchar (15) ,@Telefono int ,@Email varchar (30) ,@ID_Pregunta_Seguridad tinyint ,@Respuesta_Seguridad varchar (30)
    )
    as
    update SCH_CUENTA.[TBL_CUENTA]
    set [Nombre] = @Nombre,[Apellido_1] = @Apellido_1,[Apellido_2] = @Apellido_2,[Pass] = @Pass,[Telefono] = @Telefono,[Email] = @Email,[ID_Pregunta_Seguridad] = @ID_Pregunta_Seguridad,[Respuesta_Seguridad] = @Respuesta_Seguridad
    where [ID_Cuenta] = @ID_Cuenta
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Cuenta])
    FROM SCH_CUENTA.[TBL_CUENTA]
    go
--Delete
    create procedure SCH_CUENTA.[sp_delete_TBL_CUENTA]
    (
        @ID_Cuenta int
    )
    as
    delete from SCH_CUENTA.[TBL_CUENTA]
    where [ID_Cuenta] = @ID_Cuenta
    go
-- Filtrar
    create procedure SCH_CUENTA.[sp_search_TBL_CUENTA]
    (
        @ID_Cuenta int ,@Nombre varchar (30) ,@Apellido_1 varchar (30) ,@Apellido_2 varchar (30) ,@Pass varchar (15) ,@Telefono int ,@Email varchar (30) ,@ID_Pregunta_Seguridad tinyint ,@Respuesta_Seguridad varchar (30)
    )
    as
    SELECT [ID_Cuenta] ,[Nombre] ,[Apellido_1] ,[Apellido_2] ,[Pass] ,[Telefono] ,[Email] ,[ID_Pregunta_Seguridad] ,[Respuesta_Seguridad]
    FROM SCH_CUENTA.[TBL_CUENTA]
    WHERE [ID_Cuenta] LIKE '%' + ISNULL(@ID_Cuenta, [ID_Cuenta]) + '%'
AND [Nombre] LIKE '%' + ISNULL(@Nombre, [Nombre]) + '%'
AND [Apellido_1] LIKE '%' + ISNULL(@Apellido_1, [Apellido_1]) + '%'
AND [Apellido_2] LIKE '%' + ISNULL(@Apellido_2, [Apellido_2]) + '%'
AND [Pass] LIKE '%' + ISNULL(@Pass, [Pass]) + '%'
AND [Telefono] LIKE '%' + ISNULL(@Telefono, [Telefono]) + '%'
AND [Email] LIKE '%' + ISNULL(@Email, [Email]) + '%'
AND [ID_Pregunta_Seguridad] LIKE '%' + ISNULL(@ID_Pregunta_Seguridad, [ID_Pregunta_Seguridad]) + '%'
AND [Respuesta_Seguridad] LIKE '%' + ISNULL(@Respuesta_Seguridad, [Respuesta_Seguridad]) + '%'
    go


	----------------------------SP TBL_DETALLE

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_DETALLE]
    as
    select [ID_Detalle] ,[ID_Encabezado] ,[ID_Comision] ,[Total] from [SCH_CUENTA].[TBL_DETALLE]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_DETALLE]
    (
        @ID_Detalle int ,@ID_Encabezado int ,@ID_Comision int ,@Total money
    )
    as
    IF NOT EXISTS (SELECT [ID_Detalle] ,[ID_Encabezado] ,[ID_Comision] ,[Total]
                    FROM [SCH_CUENTA].[TBL_DETALLE]
                    WHERE [ID_Detalle] = @ID_Detalle
AND [ID_Encabezado] = @ID_Encabezado
AND [ID_Comision] = @ID_Comision
AND [Total] = @Total)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_DETALLE]
                ([ID_Detalle] ,[ID_Encabezado] ,[ID_Comision] ,[Total])
        VALUES (@ID_Detalle ,@ID_Encabezado ,@ID_Comision ,@Total)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Detalle])
    FROM [SCH_CUENTA].[TBL_DETALLE]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_DETALLE]
    (
        @ID_Detalle int ,@ID_Encabezado int ,@ID_Comision int ,@Total money
    )
    as
    update [SCH_CUENTA].[TBL_DETALLE]
    set [ID_Encabezado] = @ID_Encabezado,[ID_Comision] = @ID_Comision,[Total] = @Total
    where [ID_Detalle] = @ID_Detalle
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Detalle])
    FROM [SCH_CUENTA].[TBL_DETALLE]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_DETALLE]
    (
        @ID_Detalle int
    )
    as
    delete from [SCH_CUENTA].[TBL_DETALLE]
    where [ID_Detalle] = @ID_Detalle
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_DETALLE]
    (
        @ID_Detalle int ,@ID_Encabezado int ,@ID_Comision int ,@Total money
    )
    as
    SELECT [ID_Detalle] ,[ID_Encabezado] ,[ID_Comision] ,[Total]
    FROM [SCH_CUENTA].[TBL_DETALLE]
    WHERE [ID_Detalle] LIKE '%' + ISNULL(@ID_Detalle, [ID_Detalle]) + '%'
AND [ID_Encabezado] LIKE '%' + ISNULL(@ID_Encabezado, [ID_Encabezado]) + '%'
AND [ID_Comision] LIKE '%' + ISNULL(@ID_Comision, [ID_Comision]) + '%'
AND [Total] LIKE '%' + ISNULL(@Total, [Total]) + '%'
    go

	-----------------------SP TBL_EMPRESA

	--Select
    create procedure [SCH_EMPRESA].[sp_select_TBL_EMPRESA]
    as
    select [ID_Cedula_Juridica] ,[Nombre_Empresa] ,[Telefono] ,[Sitio_Web] ,[Email] ,[Direccion] from [SCH_EMPRESA].[TBL_EMPRESA]
    go
--Insert
    create procedure [SCH_EMPRESA].[sp_insert_TBL_EMPRESA]
    (
        @ID_Cedula_Juridica bigint ,@Nombre_Empresa varchar (30) ,@Telefono int ,@Sitio_Web varchar (30) ,@Email varchar (30) ,@Direccion varchar (60)
    )
    as
    IF NOT EXISTS (SELECT [ID_Cedula_Juridica] ,[Nombre_Empresa] ,[Telefono] ,[Sitio_Web] ,[Email] ,[Direccion]
                    FROM [SCH_EMPRESA].[TBL_EMPRESA]
                    WHERE [ID_Cedula_Juridica] = @ID_Cedula_Juridica
AND [Nombre_Empresa] = @Nombre_Empresa
AND [Telefono] = @Telefono
AND [Sitio_Web] = @Sitio_Web
AND [Email] = @Email
AND [Direccion] = @Direccion)
    BEGIN
        INSERT INTO [SCH_EMPRESA].[TBL_EMPRESA]
                ([ID_Cedula_Juridica] ,[Nombre_Empresa] ,[Telefono] ,[Sitio_Web] ,[Email] ,[Direccion])
        VALUES (@ID_Cedula_Juridica ,@Nombre_Empresa ,@Telefono ,@Sitio_Web ,@Email ,@Direccion)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Cedula_Juridica])
    FROM [SCH_EMPRESA].[TBL_EMPRESA]
    go
--Update
    create procedure [SCH_EMPRESA].[sp_update_TBL_EMPRESA]
    (
        @ID_Cedula_Juridica bigint ,@Nombre_Empresa varchar (30) ,@Telefono int ,@Sitio_Web varchar (30) ,@Email varchar (30) ,@Direccion varchar (60)
    )
    as
    update [SCH_EMPRESA].[TBL_EMPRESA]
    set [Nombre_Empresa] = @Nombre_Empresa,[Telefono] = @Telefono,[Sitio_Web] = @Sitio_Web,[Email] = @Email,[Direccion] = @Direccion
    where [ID_Cedula_Juridica] = @ID_Cedula_Juridica
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Cedula_Juridica])
    FROM [SCH_EMPRESA].[TBL_EMPRESA]
    go
--Delete
    create procedure [SCH_EMPRESA].[sp_delete_TBL_EMPRESA]
    (
        @ID_Cedula_Juridica int
    )
    as
    delete from [SCH_EMPRESA].[TBL_EMPRESA]
    where [ID_Cedula_Juridica] = @ID_Cedula_Juridica
    go
-- Filtrar
    create procedure [SCH_EMPRESA].[sp_search_TBL_EMPRESA]
    (
        @ID_Cedula_Juridica bigint ,@Nombre_Empresa varchar (30) ,@Telefono int ,@Sitio_Web varchar (30) ,@Email varchar (30) ,@Direccion varchar (60)
    )
    as
    SELECT [ID_Cedula_Juridica] ,[Nombre_Empresa] ,[Telefono] ,[Sitio_Web] ,[Email] ,[Direccion]
    FROM [SCH_EMPRESA].[TBL_EMPRESA]
    WHERE [ID_Cedula_Juridica] LIKE '%' + ISNULL(@ID_Cedula_Juridica, [ID_Cedula_Juridica]) + '%'
AND [Nombre_Empresa] LIKE '%' + ISNULL(@Nombre_Empresa, [Nombre_Empresa]) + '%'
AND [Telefono] LIKE '%' + ISNULL(@Telefono, [Telefono]) + '%'
AND [Sitio_Web] LIKE '%' + ISNULL(@Sitio_Web, [Sitio_Web]) + '%'
AND [Email] LIKE '%' + ISNULL(@Email, [Email]) + '%'
AND [Direccion] LIKE '%' + ISNULL(@Direccion, [Direccion]) + '%'
    go


	--------------------SP TBL_EMCABEZADO

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_ENCABEZADO]
    as
    select [ID_Encabezado] ,[Fecha] ,[ID_Viaje] from [SCH_CUENTA].[TBL_ENCABEZADO]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_ENCABEZADO]
    (
        @ID_Encabezado int ,@Fecha datetime ,@ID_Viaje int
    )
    as
    IF NOT EXISTS (SELECT [ID_Encabezado] ,[Fecha] ,[ID_Viaje]
                    FROM [SCH_CUENTA].[TBL_ENCABEZADO]
                    WHERE [ID_Encabezado] = @ID_Encabezado
AND [Fecha] = @Fecha
AND [ID_Viaje] = @ID_Viaje)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_ENCABEZADO]
                ([ID_Encabezado] ,[Fecha] ,[ID_Viaje])
        VALUES (@ID_Encabezado ,@Fecha ,@ID_Viaje)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Encabezado])
    FROM [SCH_CUENTA].[TBL_ENCABEZADO]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_ENCABEZADO]
    (
        @ID_Encabezado int ,@Fecha datetime ,@ID_Viaje int
    )
    as
    update [SCH_CUENTA].[TBL_ENCABEZADO]
    set [Fecha] = @Fecha,[ID_Viaje] = @ID_Viaje
    where [ID_Encabezado] = @ID_Encabezado
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Encabezado])
    FROM [SCH_CUENTA].[TBL_ENCABEZADO]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_ENCABEZADO]
    (
        @ID_Encabezado int
    )
    as
    delete from [SCH_CUENTA].[TBL_ENCABEZADO]
    where [ID_Encabezado] = @ID_Encabezado
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_ENCABEZADO]
    (
        @ID_Encabezado int ,@Fecha datetime ,@ID_Viaje int
    )
    as
    SELECT [ID_Encabezado] ,[Fecha] ,[ID_Viaje]
    FROM [SCH_CUENTA].[TBL_ENCABEZADO]
    WHERE [ID_Encabezado] LIKE '%' + ISNULL(@ID_Encabezado, [ID_Encabezado]) + '%'
AND [Fecha] LIKE '%' + ISNULL(@Fecha, [Fecha]) + '%'
AND [ID_Viaje] LIKE '%' + ISNULL(@ID_Viaje, [ID_Viaje]) + '%'
    go


	------------------------SP TBL_ESTADOS

	--Select
    create procedure [SCH_SERVICIOS].[sp_select_TBL_ESTADOS]
    as
    select [ID_Estado] ,[Estado] from [SCH_SERVICIOS].[TBL_ESTADOS]
    go
--Insert
    create procedure [SCH_SERVICIOS].[sp_insert_TBL_ESTADOS]
    (
        @ID_Estado tinyint ,@Estado varchar (15)
    )
    as
    IF NOT EXISTS (SELECT [ID_Estado] ,[Estado]
                    FROM [SCH_SERVICIOS].[TBL_ESTADOS]
                    WHERE [ID_Estado] = @ID_Estado
AND [Estado] = @Estado)
    BEGIN
        INSERT INTO [SCH_SERVICIOS].[TBL_ESTADOS]
                ([ID_Estado] ,[Estado])
        VALUES (@ID_Estado ,@Estado)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Estado])
    FROM [SCH_SERVICIOS].[TBL_ESTADOS]
    go
--Update
    create procedure [SCH_SERVICIOS].[sp_update_TBL_ESTADOS]
    (
        @ID_Estado tinyint ,@Estado varchar (15)
    )
    as
    update [SCH_SERVICIOS].[TBL_ESTADOS]
    set [Estado] = @Estado
    where [ID_Estado] = @ID_Estado
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Estado])
    FROM [SCH_SERVICIOS].[TBL_ESTADOS]
    go
--Delete
    create procedure [SCH_SERVICIOS].[sp_delete_TBL_ESTADOS]
    (
        @ID_Estado tinyint
    )
    as
    delete from [SCH_SERVICIOS].[TBL_ESTADOS]
    where [ID_Estado] = @ID_Estado
    go
-- Filtrar
    create procedure [SCH_SERVICIOS].[sp_search_TBL_ESTADOS]
    (
        @ID_Estado tinyint ,@Estado varchar (15)
    )
    as
    SELECT [ID_Estado] ,[Estado]
    FROM [SCH_SERVICIOS].[TBL_ESTADOS]
    WHERE [ID_Estado] LIKE '%' + ISNULL(@ID_Estado, [ID_Estado]) + '%'
AND [Estado] LIKE '%' + ISNULL(@Estado, [Estado]) + '%'
    go


----------------------------------SP TBL_MARCA

--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_MARCA]
    as
    select [ID_Marca] ,[Descripcion] from [SCH_CUENTA].[TBL_MARCA]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_MARCA]
    (
        @ID_Marca tinyint ,@Descripcion varchar (20)
    )
    as
    IF NOT EXISTS (SELECT [ID_Marca] ,[Descripcion]
                    FROM [SCH_CUENTA].[TBL_MARCA]
                    WHERE [ID_Marca] = @ID_Marca
AND [Descripcion] = @Descripcion)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_MARCA]
                ([ID_Marca] ,[Descripcion])
        VALUES (@ID_Marca ,@Descripcion)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Marca])
    FROM [SCH_CUENTA].[TBL_MARCA]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_MARCA]
    (
        @ID_Marca tinyint ,@Descripcion varchar (20)
    )
    as
    update [SCH_CUENTA].[TBL_MARCA]
    set [Descripcion] = @Descripcion
    where [ID_Marca] = @ID_Marca
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Marca])
    FROM [SCH_CUENTA].[TBL_MARCA]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_MARCA]
    (
        @ID_Marca tinyint
    )
    as
    delete from [SCH_CUENTA].[TBL_MARCA]
    where [ID_Marca] = @ID_Marca
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_MARCA]
    (
        @ID_Marca tinyint ,@Descripcion varchar (20)
    )
    as
    SELECT [ID_Marca] ,[Descripcion]
    FROM [SCH_CUENTA].[TBL_MARCA]
    WHERE [ID_Marca] LIKE '%' + ISNULL(@ID_Marca, [ID_Marca]) + '%'
AND [Descripcion] LIKE '%' + ISNULL(@Descripcion, [Descripcion]) + '%'
    go


	-----------------------SP TBL_MODELO

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_MODELO]
    as
    select [ID_Modelo] ,[ID_Marca] ,[Modelo] from [SCH_CUENTA].[TBL_MODELO]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_MODELO]
    (
        @ID_Modelo tinyint ,@ID_Marca tinyint ,@Modelo varchar (20)
    )
    as
    IF NOT EXISTS (SELECT [ID_Modelo] ,[ID_Marca] ,[Modelo]
                    FROM [SCH_CUENTA].[TBL_MODELO]
                    WHERE [ID_Modelo] = @ID_Modelo
AND [ID_Marca] = @ID_Marca
AND [Modelo] = @Modelo)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_MODELO]
                ([ID_Modelo] ,[ID_Marca] ,[Modelo])
        VALUES (@ID_Modelo ,@ID_Marca ,@Modelo)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Modelo])
    FROM [SCH_CUENTA].[TBL_MODELO]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_MODELO]
    (
        @ID_Modelo tinyint ,@ID_Marca tinyint ,@Modelo varchar (20)
    )
    as
    update [SCH_CUENTA].[TBL_MODELO]
    set [ID_Marca] = @ID_Marca,[Modelo] = @Modelo
    where [ID_Modelo] = @ID_Modelo
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Modelo])
    FROM [SCH_CUENTA].[TBL_MODELO]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_MODELO]
    (
        @ID_Modelo tinyint
    )
    as
    delete from [SCH_CUENTA].[TBL_MODELO]
    where [ID_Modelo] = @ID_Modelo
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_MODELO]
    (
        @ID_Modelo tinyint ,@ID_Marca tinyint ,@Modelo varchar (20)
    )
    as
    SELECT [ID_Modelo] ,[ID_Marca] ,[Modelo]
    FROM [SCH_CUENTA].[TBL_MODELO]
    WHERE [ID_Modelo] LIKE '%' + ISNULL(@ID_Modelo, [ID_Modelo]) + '%'
AND [ID_Marca] LIKE '%' + ISNULL(@ID_Marca, [ID_Marca]) + '%'
AND [Modelo] LIKE '%' + ISNULL(@Modelo, [Modelo]) + '%'
    go

	----------------------SP TBL_PREGUNTAS
	---Select
    create procedure [SCH_CUENTA].[sp_select_TBL_PREGUNTAS]
    as
    select [ID_Pregunta_Seguridad] ,[Detalle_Preguntas] from [SCH_CUENTA].[TBL_PREGUNTAS]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_PREGUNTAS]
    (
        @ID_Pregunta_Seguridad tinyint ,@Detalle_Preguntas varchar (50)
    )
    as
    IF NOT EXISTS (SELECT [ID_Pregunta_Seguridad] ,[Detalle_Preguntas]
                    FROM [SCH_CUENTA].[TBL_PREGUNTAS]
                    WHERE [ID_Pregunta_Seguridad] = @ID_Pregunta_Seguridad
AND [Detalle_Preguntas] = @Detalle_Preguntas)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_PREGUNTAS]
                ([ID_Pregunta_Seguridad] ,[Detalle_Preguntas])
        VALUES (@ID_Pregunta_Seguridad ,@Detalle_Preguntas)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Pregunta_Seguridad])
    FROM [SCH_CUENTA].[TBL_PREGUNTAS]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_PREGUNTAS]
    (
        @ID_Pregunta_Seguridad tinyint ,@Detalle_Preguntas varchar (50)
    )
    as
    update [SCH_CUENTA].[TBL_PREGUNTAS]
    set [Detalle_Preguntas] = @Detalle_Preguntas
    where [ID_Pregunta_Seguridad] = @ID_Pregunta_Seguridad
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Pregunta_Seguridad])
    FROM [SCH_CUENTA].[TBL_PREGUNTAS]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_PREGUNTAS]
    (
        @ID_Pregunta_Seguridad tinyint
    )
    as
    delete from [SCH_CUENTA].[TBL_PREGUNTAS]
    where [ID_Pregunta_Seguridad] = @ID_Pregunta_Seguridad
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_PREGUNTAS]
    (
        @ID_Pregunta_Seguridad tinyint ,@Detalle_Preguntas varchar (50)
    )
    as
    SELECT [ID_Pregunta_Seguridad] ,[Detalle_Preguntas]
    FROM [SCH_CUENTA].[TBL_PREGUNTAS]
    WHERE [ID_Pregunta_Seguridad] LIKE '%' + ISNULL(@ID_Pregunta_Seguridad, [ID_Pregunta_Seguridad]) + '%'
AND [Detalle_Preguntas] LIKE '%' + ISNULL(@Detalle_Preguntas, [Detalle_Preguntas]) + '%'
    go

	--------------------------SP TBL_RATIND

	--Select
    create procedure [SCH_SERVICIOS].[sp_select_TBL_RATING]
    as
    select [ID_Rating] ,[Rating] ,[ID_Viaje] from [SCH_SERVICIOS].[TBL_RATING]
    go
--Insert
    create procedure [SCH_SERVICIOS].[sp_insert_TBL_RATING]
    (
        @ID_Rating tinyint ,@Rating tinyint ,@ID_Viaje int
    )
    as
    IF NOT EXISTS (SELECT [ID_Rating] ,[Rating] ,[ID_Viaje]
                    FROM [SCH_SERVICIOS].[TBL_RATING]
                    WHERE [ID_Rating] = @ID_Rating
AND [Rating] = @Rating
AND [ID_Viaje] = @ID_Viaje)
    BEGIN
        INSERT INTO [SCH_SERVICIOS].[TBL_RATING]
                ([ID_Rating] ,[Rating] ,[ID_Viaje])
        VALUES (@ID_Rating ,@Rating ,@ID_Viaje)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Rating])
    FROM [SCH_SERVICIOS].[TBL_RATING]
    go
--Update
    create procedure [SCH_SERVICIOS].[sp_update_TBL_RATING]
    (
        @ID_Rating tinyint ,@Rating tinyint ,@ID_Viaje int
    )
    as
    update [SCH_SERVICIOS].[TBL_RATING]
    set [Rating] = @Rating,[ID_Viaje] = @ID_Viaje
    where [ID_Rating] = @ID_Rating
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Rating])
    FROM [SCH_SERVICIOS].[TBL_RATING]
    go
--Delete
    create procedure [SCH_SERVICIOS].[sp_delete_TBL_RATING]
    (
        @ID_Rating tinyint
    )
    as
    delete from [SCH_SERVICIOS].[TBL_RATING]
    where [ID_Rating] = @ID_Rating
    go
-- Filtrar
    create procedure [SCH_SERVICIOS].[sp_search_TBL_RATING]
    (
        @ID_Rating tinyint ,@Rating tinyint ,@ID_Viaje int
    )
    as
    SELECT [ID_Rating] ,[Rating] ,[ID_Viaje]
    FROM [SCH_SERVICIOS].[TBL_RATING]
    WHERE [ID_Rating] LIKE '%' + ISNULL(@ID_Rating, [ID_Rating]) + '%'
AND [Rating] LIKE '%' + ISNULL(@Rating, [Rating]) + '%'
AND [ID_Viaje] LIKE '%' + ISNULL(@ID_Viaje, [ID_Viaje]) + '%'
    go


	------------------------------SP TBL_SOLICITUD_VIAJE


	--Select
    create procedure [SCH_SERVICIOS].[sp_select_TBL_SOLICITUD_VIAJE]
    as
    select [ID_Solicitud_Viaje] ,[ID_Cliente] ,[ID_Tipo_Vehiculo] ,[Ruta_Inicial] ,[Ruta_Final] ,[Cantidad_Km] ,[Costo_Inicial] from [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
    go
--Insert
    create procedure [SCH_SERVICIOS].[sp_insert_TBL_SOLICITUD_VIAJE]
    (
        @ID_Solicitud_Viaje smallint ,@ID_Cliente int ,@ID_Tipo_Vehiculo tinyint ,@Ruta_Inicial varchar (20),@Ruta_Final varchar (20) ,@Cantidad_Km decimal ,@Costo_Inicial money
    )
    as
    IF NOT EXISTS (SELECT [ID_Solicitud_Viaje] ,[ID_Cliente] ,[ID_Tipo_Vehiculo] ,[Ruta_Inicial] ,[Ruta_Final] ,[Cantidad_Km] ,[Costo_Inicial]
                    FROM [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
                    WHERE [ID_Solicitud_Viaje] = @ID_Solicitud_Viaje
AND [ID_Cliente] = @ID_Cliente
AND [ID_Tipo_Vehiculo] = @ID_Tipo_Vehiculo
AND [Ruta_Inicial] = @Ruta_Inicial
AND [Ruta_Final] = @Ruta_Final
AND [Cantidad_Km] = @Cantidad_Km
AND [Costo_Inicial] = @Costo_Inicial)
    BEGIN
        INSERT INTO [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
                ([ID_Solicitud_Viaje] ,[ID_Cliente] ,[ID_Tipo_Vehiculo] ,[Ruta_Inicial] ,[Ruta_Final] ,[Cantidad_Km] ,[Costo_Inicial])
        VALUES (@ID_Solicitud_Viaje ,@ID_Cliente ,@ID_Tipo_Vehiculo ,@Ruta_Inicial ,@Ruta_Final ,@Cantidad_Km ,@Costo_Inicial)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Solicitud_Viaje])
    FROM [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
    go
--Update
    create procedure [SCH_SERVICIOS].[sp_update_TBL_SOLICITUD_VIAJE]
    (
        @ID_Solicitud_Viaje smallint ,@ID_Cliente int ,@ID_Tipo_Vehiculo tinyint ,@Ruta_Inicial varchar (20) ,@Ruta_Final varchar (20) ,@Cantidad_Km decimal ,@Costo_Inicial money
    )
    as
    update [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
    set [ID_Cliente] = @ID_Cliente,[ID_Tipo_Vehiculo] = @ID_Tipo_Vehiculo,[Ruta_Inicial] = @Ruta_Inicial,[Ruta_Final] = @Ruta_Final,[Cantidad_Km] = @Cantidad_Km,[Costo_Inicial] = @Costo_Inicial
    where [ID_Solicitud_Viaje] = @ID_Solicitud_Viaje
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Solicitud_Viaje])
    FROM [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
    go
--Delete
    create procedure [SCH_SERVICIOS].[sp_delete_TBL_SOLICITUD_VIAJE]
    (
        @ID_Solicitud_Viaje smallint
    )
    as
    delete from [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
    where [ID_Solicitud_Viaje] = @ID_Solicitud_Viaje
    go
-- Filtrar
    create procedure [SCH_SERVICIOS].[sp_search_TBL_SOLICITUD_VIAJE]
    (
        @ID_Solicitud_Viaje smallint ,@ID_Cliente int ,@ID_Tipo_Vehiculo tinyint ,@Ruta_Inicial varchar (20) ,@Ruta_Final varchar (20) ,@Cantidad_Km decimal ,@Costo_Inicial money
    )
    as
    SELECT [ID_Solicitud_Viaje] ,[ID_Cliente] ,[ID_Tipo_Vehiculo] ,[Ruta_Inicial] ,[Ruta_Final] ,[Cantidad_Km] ,[Costo_Inicial]
    FROM [SCH_SERVICIOS].[TBL_SOLICITUD_VIAJE]
    WHERE [ID_Solicitud_Viaje] LIKE '%' + ISNULL(@ID_Solicitud_Viaje, [ID_Solicitud_Viaje]) + '%'
AND [ID_Cliente] LIKE '%' + ISNULL(@ID_Cliente, [ID_Cliente]) + '%'
AND [ID_Tipo_Vehiculo] LIKE '%' + ISNULL(@ID_Tipo_Vehiculo, [ID_Tipo_Vehiculo]) + '%'
AND [Ruta_Inicial] LIKE '%' + ISNULL(@Ruta_Inicial, [Ruta_Inicial]) + '%'
AND [Ruta_Final] LIKE '%' + ISNULL(@Ruta_Final, [Ruta_Final]) + '%'
AND [Cantidad_Km] LIKE '%' + ISNULL(@Cantidad_Km, [Cantidad_Km]) + '%'
AND [Costo_Inicial] LIKE '%' + ISNULL(@Costo_Inicial, [Costo_Inicial]) + '%'
    go


	------------------SP TBL_TARJETA

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_TARJETA]
    as
    select [ID_Numero_Tarjeta] ,[ID_Tipo_Tarjeta] ,[ID_Banco] ,[Numero_Cuenta] ,[Fecha_Vencimiento] ,[CVV] from [SCH_CUENTA].[TBL_TARJETA]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_TARJETA]
    (
        @ID_Numero_Tarjeta bigint ,@ID_Tipo_Tarjeta tinyint ,@ID_Banco tinyint ,@Numero_Cuenta bigint ,@Fecha_Vencimiento dateTIME ,@CVV smallint
    )
    as
    IF NOT EXISTS (SELECT [ID_Numero_Tarjeta] ,[ID_Tipo_Tarjeta] ,[ID_Banco] ,[Numero_Cuenta] ,[Fecha_Vencimiento] ,[CVV]
                    FROM [SCH_CUENTA].[TBL_TARJETA]
                    WHERE [ID_Numero_Tarjeta] = @ID_Numero_Tarjeta
AND [ID_Tipo_Tarjeta] = @ID_Tipo_Tarjeta
AND [ID_Banco] = @ID_Banco
AND [Numero_Cuenta] = @Numero_Cuenta
AND [Fecha_Vencimiento] = @Fecha_Vencimiento
AND [CVV] = @CVV)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_TARJETA]
                ([ID_Numero_Tarjeta] ,[ID_Tipo_Tarjeta] ,[ID_Banco] ,[Numero_Cuenta] ,[Fecha_Vencimiento] ,[CVV])
        VALUES (@ID_Numero_Tarjeta ,@ID_Tipo_Tarjeta ,@ID_Banco ,@Numero_Cuenta ,@Fecha_Vencimiento ,@CVV)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Numero_Tarjeta])
    FROM [SCH_CUENTA].[TBL_TARJETA]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_TARJETA]
    (
        @ID_Numero_Tarjeta bigint ,@ID_Tipo_Tarjeta tinyint ,@ID_Banco tinyint ,@Numero_Cuenta bigint ,@Fecha_Vencimiento dateTIME ,@CVV smallint
    )
    as
    update [SCH_CUENTA].[TBL_TARJETA]
    set [ID_Tipo_Tarjeta] = @ID_Tipo_Tarjeta,[ID_Banco] = @ID_Banco,[Numero_Cuenta] = @Numero_Cuenta,[Fecha_Vencimiento] = @Fecha_Vencimiento,[CVV] = @CVV
    where [ID_Numero_Tarjeta] = @ID_Numero_Tarjeta
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Numero_Tarjeta])
    FROM [SCH_CUENTA].[TBL_TARJETA]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_TARJETA]
    (
        @ID_Numero_Tarjeta bigint
    )
    as
    delete from [SCH_CUENTA].[TBL_TARJETA]
    where [ID_Numero_Tarjeta] = @ID_Numero_Tarjeta
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_TARJETA]
    (
        @ID_Numero_Tarjeta bigint ,@ID_Tipo_Tarjeta tinyint ,@ID_Banco tinyint ,@Numero_Cuenta bigint ,@Fecha_Vencimiento dateTIME ,@CVV smallint
    )
    as
    SELECT [ID_Numero_Tarjeta] ,[ID_Tipo_Tarjeta] ,[ID_Banco] ,[Numero_Cuenta] ,[Fecha_Vencimiento] ,[CVV]
    FROM [SCH_CUENTA].[TBL_TARJETA]
    WHERE [ID_Numero_Tarjeta] LIKE '%' + ISNULL(@ID_Numero_Tarjeta, [ID_Numero_Tarjeta]) + '%'
AND [ID_Tipo_Tarjeta] LIKE '%' + ISNULL(@ID_Tipo_Tarjeta, [ID_Tipo_Tarjeta]) + '%'
AND [ID_Banco] LIKE '%' + ISNULL(@ID_Banco, [ID_Banco]) + '%'
AND [Numero_Cuenta] LIKE '%' + ISNULL(@Numero_Cuenta, [Numero_Cuenta]) + '%'
AND [Fecha_Vencimiento] LIKE '%' + ISNULL(@Fecha_Vencimiento, [Fecha_Vencimiento]) + '%'
AND [CVV] LIKE '%' + ISNULL(@CVV, [CVV]) + '%'
    go

	----------------------------SP TBL_TIPO_TARJETA

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_TIPO_TARJETA]
    as
    select [ID_Tipo_Tarjeta] ,[Descripcion] from [SCH_CUENTA].[TBL_TIPO_TARJETA]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_TIPO_TARJETA]
    (
        @ID_Tipo_Tarjeta tinyint ,@Descripcion varchar (30)
    )
    as
    IF NOT EXISTS (SELECT [ID_Tipo_Tarjeta] ,[Descripcion]
                    FROM [SCH_CUENTA].[TBL_TIPO_TARJETA]
                    WHERE [ID_Tipo_Tarjeta] = @ID_Tipo_Tarjeta
AND [Descripcion] = @Descripcion)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_TIPO_TARJETA]
                ([ID_Tipo_Tarjeta] ,[Descripcion])
        VALUES (@ID_Tipo_Tarjeta ,@Descripcion)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Tipo_Tarjeta])
    FROM [SCH_CUENTA].[TBL_TIPO_TARJETA]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_TIPO_TARJETA]
    (
        @ID_Tipo_Tarjeta tinyint ,@Descripcion varchar (30)
    )
    as
    update [SCH_CUENTA].[TBL_TIPO_TARJETA]
    set [Descripcion] = @Descripcion
    where [ID_Tipo_Tarjeta] = @ID_Tipo_Tarjeta
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Tipo_Tarjeta])
    FROM [SCH_CUENTA].[TBL_TIPO_TARJETA]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_TIPO_TARJETA]
    (
        @ID_Tipo_Tarjeta tinyint
    )
    as
    delete from [SCH_CUENTA].[TBL_TIPO_TARJETA]
    where [ID_Tipo_Tarjeta] = @ID_Tipo_Tarjeta
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_TIPO_TARJETA]
    (
        @ID_Tipo_Tarjeta tinyint ,@Descripcion varchar (30)
    )
    as
    SELECT [ID_Tipo_Tarjeta] ,[Descripcion]
    FROM [SCH_CUENTA].[TBL_TIPO_TARJETA]
    WHERE [ID_Tipo_Tarjeta] LIKE '%' + ISNULL(@ID_Tipo_Tarjeta, [ID_Tipo_Tarjeta]) + '%'
AND [Descripcion] LIKE '%' + ISNULL(@Descripcion, [Descripcion]) + '%'
    go

	----------------------------SP TBL_TIPO_VEHICULO

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_TIPO_VEHICULO]
    as
    select [ID_Tipo_Vehiculo] ,[Descripcion] from [SCH_CUENTA].[TBL_TIPO_VEHICULO]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_TIPO_VEHICULO]
    (
        @ID_Tipo_Vehiculo tinyint ,@Descripcion varchar (100)
    )
    as
    IF NOT EXISTS (SELECT [ID_Tipo_Vehiculo] ,[Descripcion]
                    FROM [SCH_CUENTA].[TBL_TIPO_VEHICULO]
                    WHERE [ID_Tipo_Vehiculo] = @ID_Tipo_Vehiculo
AND [Descripcion] = @Descripcion)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_TIPO_VEHICULO]
                ([ID_Tipo_Vehiculo] ,[Descripcion])
        VALUES (@ID_Tipo_Vehiculo ,@Descripcion)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Tipo_Vehiculo])
    FROM [SCH_CUENTA].[TBL_TIPO_VEHICULO]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_TIPO_VEHICULO]
    (
        @ID_Tipo_Vehiculo tinyint ,@Descripcion varchar (100)
    )
    as
    update [SCH_CUENTA].[TBL_TIPO_VEHICULO]
    set [Descripcion] = @Descripcion
    where [ID_Tipo_Vehiculo] = @ID_Tipo_Vehiculo
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Tipo_Vehiculo])
    FROM [SCH_CUENTA].[TBL_TIPO_VEHICULO]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_TIPO_VEHICULO]
    (
        @ID_Tipo_Vehiculo tinyint
    )
    as
    delete from [SCH_CUENTA].[TBL_TIPO_VEHICULO]
    where [ID_Tipo_Vehiculo] = @ID_Tipo_Vehiculo
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_TIPO_VEHICULO]
    (
        @ID_Tipo_Vehiculo tinyint ,@Descripcion varchar (100)
    )
    as
    SELECT [ID_Tipo_Vehiculo] ,[Descripcion]
    FROM [SCH_CUENTA].[TBL_TIPO_VEHICULO]
    WHERE [ID_Tipo_Vehiculo] LIKE '%' + ISNULL(@ID_Tipo_Vehiculo, [ID_Tipo_Vehiculo]) + '%'
AND [Descripcion] LIKE '%' + ISNULL(@Descripcion, [Descripcion]) + '%'
    go


	-------------------------SP_TBL_VEHICULO

	--Select
    create procedure [SCH_CUENTA].[sp_select_TBL_VEHICULO]
    as
    select [ID_Vehiculo] ,[ID_Modelo] ,[Matricula] ,[ANNO] from [SCH_CUENTA].[TBL_VEHICULO]
    go
--Insert
    create procedure [SCH_CUENTA].[sp_insert_TBL_VEHICULO]
    (
        @ID_Vehiculo tinyint ,@ID_Modelo tinyint ,@Matricula varchar (20) ,@ANNO int
    )
    as
    IF NOT EXISTS (SELECT [ID_Vehiculo] ,[ID_Modelo] ,[Matricula] ,[ANNO]
                    FROM [SCH_CUENTA].[TBL_VEHICULO]
                    WHERE [ID_Vehiculo] = @ID_Vehiculo
AND [ID_Modelo] = @ID_Modelo
AND [Matricula] = @Matricula
AND [ANNO] = @ANNO)
    BEGIN
        INSERT INTO [SCH_CUENTA].[TBL_VEHICULO]
                ([ID_Vehiculo] ,[ID_Modelo] ,[Matricula] ,[ANNO])
        VALUES (@ID_Vehiculo ,@ID_Modelo ,@Matricula ,@ANNO)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Vehiculo])
    FROM [SCH_CUENTA].[TBL_VEHICULO]
    go
--Update
    create procedure [SCH_CUENTA].[sp_update_TBL_VEHICULO]
    (
        @ID_Vehiculo tinyint ,@ID_Modelo tinyint ,@Matricula varchar (20) ,@ANNO int
    )
    as
    update [SCH_CUENTA].[TBL_VEHICULO]
    set [ID_Modelo] = @ID_Modelo,[Matricula] = @Matricula,[ANNO] = @ANNO
    where [ID_Vehiculo] = @ID_Vehiculo
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Vehiculo])
    FROM [SCH_CUENTA].[TBL_VEHICULO]
    go
--Delete
    create procedure [SCH_CUENTA].[sp_delete_TBL_VEHICULO]
    (
        @ID_Vehiculo tinyint
    )
    as
    delete from [SCH_CUENTA].[TBL_VEHICULO]
    where [ID_Vehiculo] = @ID_Vehiculo
    go
-- Filtrar
    create procedure [SCH_CUENTA].[sp_search_TBL_VEHICULO]
    (
        @ID_Vehiculo tinyint ,@ID_Modelo tinyint ,@Matricula varchar (20) ,@ANNO int
    )
    as
    SELECT [ID_Vehiculo] ,[ID_Modelo] ,[Matricula] ,[ANNO]
    FROM [SCH_CUENTA].[TBL_VEHICULO]
    WHERE [ID_Vehiculo] LIKE '%' + ISNULL(@ID_Vehiculo, [ID_Vehiculo]) + '%'
AND [ID_Modelo] LIKE '%' + ISNULL(@ID_Modelo, [ID_Modelo]) + '%'
AND [Matricula] LIKE '%' + ISNULL(@Matricula, [Matricula]) + '%'
AND [ANNO] LIKE '%' + ISNULL(@ANNO, [ANNO]) + '%'
    go


	------------------SP_TBL_VIAJE

	--Select
    create procedure [SCH_SERVICIOS].[sp_select_TBL_VIAJE]
    as
    select [ID_Viaje] ,[ID_Conductor] ,[ID_Solicitud_Viaje] ,[ID_Estado] from [SCH_SERVICIOS].[TBL_VIAJE]
    go
--Insert
    create procedure [SCH_SERVICIOS].[sp_insert_TBL_VIAJE]
    (
        @ID_Viaje int ,@ID_Conductor int ,@ID_Solicitud_Viaje smallint ,@ID_Estado tinyint
    )
    as
    IF NOT EXISTS (SELECT [ID_Viaje] ,[ID_Conductor] ,[ID_Solicitud_Viaje] ,[ID_Estado]
                    FROM [SCH_SERVICIOS].[TBL_VIAJE]
                    WHERE [ID_Viaje] = @ID_Viaje
AND [ID_Conductor] = @ID_Conductor
AND [ID_Solicitud_Viaje] = @ID_Solicitud_Viaje
AND [ID_Estado] = @ID_Estado)
    BEGIN
        INSERT INTO [SCH_SERVICIOS].[TBL_VIAJE]
                ([ID_Viaje] ,[ID_Conductor] ,[ID_Solicitud_Viaje] ,[ID_Estado])
        VALUES (@ID_Viaje ,@ID_Conductor ,@ID_Solicitud_Viaje ,@ID_Estado)
    END
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Viaje])
    FROM [SCH_SERVICIOS].[TBL_VIAJE]
    go
--Update
    create procedure [SCH_SERVICIOS].[sp_update_TBL_VIAJE]
    (
        @ID_Viaje int ,@ID_Conductor int ,@ID_Solicitud_Viaje smallint ,@ID_Estado tinyint
    )
    as
    update [SCH_SERVICIOS].[TBL_VIAJE]
    set [ID_Conductor] = @ID_Conductor,[ID_Solicitud_Viaje] = @ID_Solicitud_Viaje,[ID_Estado] = @ID_Estado
    where [ID_Viaje] = @ID_Viaje
    -- Devuelve la ultima llave generada
    SELECT MAX ([ID_Viaje])
    FROM [SCH_SERVICIOS].[TBL_VIAJE]
    go
--Delete
    create procedure [SCH_SERVICIOS].[sp_delete_TBL_VIAJE]
    (
        @ID_Viaje int
    )
    as
    delete from [SCH_SERVICIOS].[TBL_VIAJE]
    where [ID_Viaje] = @ID_Viaje
    go
-- Filtrar
    create procedure [SCH_SERVICIOS].[sp_search_TBL_VIAJE]
    (
        @ID_Viaje int ,@ID_Conductor int ,@ID_Solicitud_Viaje smallint ,@ID_Estado tinyint
    )
    as
    SELECT [ID_Viaje] ,[ID_Conductor] ,[ID_Solicitud_Viaje] ,[ID_Estado]
    FROM [SCH_SERVICIOS].[TBL_VIAJE]
    WHERE [ID_Viaje] LIKE '%' + ISNULL(@ID_Viaje, [ID_Viaje]) + '%'
AND [ID_Conductor] LIKE '%' + ISNULL(@ID_Conductor, [ID_Conductor]) + '%'
AND [ID_Solicitud_Viaje] LIKE '%' + ISNULL(@ID_Solicitud_Viaje, [ID_Solicitud_Viaje]) + '%'
AND [ID_Estado] LIKE '%' + ISNULL(@ID_Estado, [ID_Estado]) + '%'
    go













