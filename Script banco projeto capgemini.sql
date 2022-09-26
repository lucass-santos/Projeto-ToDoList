create database todoApp;
drop database todoapp;
use todoApp;

create table Projects(
	id int primary key auto_increment,
    name varchar(155) not null,
    description varchar(255),
    createdAt datetime,
    updatedAt datetime
);

drop table projects;


insert into projects (name, description, createdAt, updatedAt) values
('descrição', 'descrição', '2022-09-15', '2022-09-17');
select * from projects;

create  table Tasks(
	id int primary key auto_increment,
	name varchar(155) not null,
    description varchar(255),
    completed boolean not null,
    note varchar(255),
    deadline date not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    idProject int,
    foreign key idProject (idProject) references Projects (id)
);

insert into tasks (name, description, completed, note, deadline, createdAt, updatedAt, idProject) values
('descrição', 'descrição', false, 'descrição', '2022-09-16', '2022-09-15', '2022-09-17', 1);

select * from tasks;
drop table Tasks;





