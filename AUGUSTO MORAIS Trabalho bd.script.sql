create table user(
user_id int auto_increment primary key,
nome varchar(50),
cpf varchar(11),
telefone varchar(11)
);

select * from user;

drop table user;
drop table roles;
drop table roles_user;
drop table post;

insert into user 
(nome, cpf, telefone)
values
('Augusto','37144270079','85976547890'),
('Gutin','12428668099','85954323450'),
('Gugu','77528623040','85936473647'),
('Gutinho','55524682016','85986421123'),
('Guto','86394453030','85984939210');

delete from user where user_id = '2';

create table roles(
roles_id int auto_increment primary key,
nivel_acesso varchar(20)
);

create table roles_user(
roles_id int, 
foreign key(roles_id) references roles(roles_id),
id_user int,
foreign key(id_user) references user(user_id)
);

select user.user_id, user.nome, roles.nivel_acesso from roles_user join user on roles_user.user_id = user.user_id
join roles on id_roles_roles = roles_user.roles_id where roles.nivel_acesso = 'Admin';

insert into roles (nivel_acesso)
values
('Admin'),
('Client'),
('Employer');

insert into roles_user
(id_user, roles_id)
values
('1','1'),
('2','3'),
('3','2'),
('4','3'),
('5','2');

select * from roles_user;

create table post(
userpost_id int auto_increment primary key,
descript text,
title varchar(30),
user_id int,
foreign key(user_id) references user (user_id)
);

select * from post;
select title, descript from post where userpost_id = 3;
select title, descript from post where userpost_id = 5;

delete from post where userpost_id = 4;
delete from post where userpost_id = 6;

insert into post (descript, title, user_id)
values
('melhor filme de terror', 'a bruxa', 1),
('melhor filme de suspense', 'clube da luta', 1),
('melhor filme de drama', 'psicopata americano', 2),
('melhor equipe de futebol', 'flamengo', 2),
('minha musica preferida', 'judas', 3),
('melhor banda', 'twenty one pilots', 3),
('melhor estilo de luta', 'jiujitsu', 4),
('pior estilo marcial', 'aikido', 4),
('pior estilo musical', 'pagode', 5),
('pior sentimento', 'odio', 5);

update post 
set descript = 'pior filme',
title = 'a bruxa'
where userpost_id = '1';
