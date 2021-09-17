create database InfoToolsSV
use InfoToolsSV

create table usuario
(
Id int identity(1000,1),
Usuario varchar(50),
Contrasenia varbinary(500)
)

create procedure SP_AgregaUsuario
@Usuario varchar(50),
@Contrasenia varchar(50),
@Patron varchar(50)
as
begin
	insert into usuario (Usuario,Contrasenia) values(@Usuario,ENCRYPTBYPASSPHRASE(@Patron,@Contrasenia))
end

create procedure SP_ValidarUsuario
@Usuario varchar(50),
@Contrasenia varchar(50),
@Patron varchar(50)
as
begin
	select * from usuario 
	where Usuario=@Usuario
	and CONVERT(varchar(50),DECRYPTBYPASSPHRASE(@Patron,Contrasenia))=@Contrasenia
end


select * from usuario

SP_AgregaUsuario 'Jesus','1234jesus','listanegra'

SP_ValidarUsuario 'Jesus','1234jesus','listanegra'
