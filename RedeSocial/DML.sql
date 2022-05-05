use RedeSocial 

insert into Usuarios
values
(100, 'Matheus Brazolin', 'Matheus@email.com', 'math1234'),
(200, 'Claudia Brazolin', 'Claudia@email.com', 'Clau12345'),
(300, 'Adriano Brazolin', 'Adriano@email.com', 'Adri123456')


insert into Feed
values
(1, 'Post do Adriano', 'Foto do cachorro', 3, 300),
(2, 'Comentario da claudia sobre o cachorro do Adriano', 'Que cachorro lindooo', 1, 200),
(3, 'Matheus só olhou a foto','-->', 1, 100)

select * from Feed

select * from Anuncios 
where Feed like '%cachorrol%'