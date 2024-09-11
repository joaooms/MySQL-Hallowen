create schema hallowen; 
use hallowen;

create table usuarios(
nome varchar (30),
idade int,
email varchar (60));

Delimiter $$
create procedure InsereUsuariosAleatorios()
Begin
Declare i int default 0;
while i < 10000 DO
set @nome := CONCAT('Usuario', i);
set @idade := FLOOR(RAND() * 80) + 18;
set @email := CONCAT('usuario',i,'@gmail.com');
insert into usuarios (nome,email,idade) values (@nome,@email,@idade);
set i = i+1;
end while;
end $$
Delimiter $$ 

call InsereUsuariosAleatorios ();

select * from usuarios;


