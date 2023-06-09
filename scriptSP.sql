use DBApi

------ VALIDO SI EXISTE EL PROCEDIMIENTO ALMACENADO -------
go
IF exists (select * from sys.objects where type='p' and name='usp_registrar')
drop procedure usp_registrar
go
IF exists (select * from sys.objects where type='p' and name='usp_modificar')
drop procedure usp_modificar
go
IF exists (select * from sys.objects where type='p' and name='usp_obtener')
drop procedure usp_obtener
go
IF exists (select * from sys.objects where type='p' and name='usp_listar')
drop procedure usp_listar
go
IF exists (select * from sys.objects where type='p' and name='usp_eliminar')
drop procedure usp_eliminar
go

-- *********** PROCEDIMIENTO PARA CREAR ************************
CREATE Procedure usp_registrar(
	@documentoSP	varchar(60),
	@nombresSP		varchar(60),
	@apellidoSP		varchar(60),
	@telefonoSP		varchar(60),
	@correoSP		varchar(60),
	@ciudadSP		varchar(60)
)
AS
begin
	INSERT INTO Usuario(documento, nombres, apellidos, telefono, correo, ciudad) 
	values (@documentoSP, @nombresSP, @apellidoSP, @telefonoSP, @correoSP, @ciudadSP)
end
go

-- ********** PROCEDIMIENTO PARA MODIFICAR **********************
Create Procedure usp_modificar(
	@idUsuarioSP int,
	@documentoSP varchar(60),
	@nombreSP varchar(60),
	@apellidoSP varchar(60),
	@telefonoSP varchar(60),
	@correoSP varchar(60),
	@ciudadSP varchar(60)
)
AS
BEGIN
	Update Usuario SET documento=@documentoSP, nombres=@nombreSP, apellidos=@apellidoSP,
				telefono=@telefonoSP, correo=@correoSP, ciudad=@ciudadSP 
				where idUsuario = @idUsuarioSP
END
GO

-- ****** PROCEDIMIENTO ALMACENADO PARA OBTENER ***********
CREATE PROCEDURE usp_obtener(@idUsuarioSP int)
AS
BEGIN
	SELECT * FROM Usuario where idUsuario=@idUsuarioSP
END
GO

-- ****** PROCEDIMIENTO ALMACENADO PARA ELIMINAR *********
CREATE PROCEDURE usp_eliminar(@idUsuarioSP int)
AS
BEGIN
	DELETE FROM Usuario where idUsuario=@idUsuarioSP
END
GO
