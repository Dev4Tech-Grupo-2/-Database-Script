create database if not exists little_geniuses;
use little_geniuses;

create table if not exists student(
	id int auto_increment primary key,
	`name` varchar(200) not null,
    phone varchar(11) not null,
    fees decimal(10,2) not null,
    email varchar(100) not null,
    street varchar(100) not null,
    city varchar(100) not null,
    country varchar(100) not null,
    postal_code varchar(8) not null,
    state varchar(20) not null
);

create table if not exists teacher(
	id int primary key auto_increment,
    name varchar(200) not null,
    phone varchar(11) not null,
    email varchar(100) not null,
    salary decimal(10,2) not null,
    street varchar(100) not null,
    city varchar(100) not null,
    country varchar(100) not null,
    postal_code varchar(8) not null,
    state varchar(20) not null
);

create table class(
	id int primary key auto_increment,
    grade varchar(50) not null,
    teacher_id int not null,
    student_id int not null,
    foreign key (teacher_id) references teacher(id),
    foreign key (student_id) references student(id),
    constraint `teacher_student` unique (teacher_id, student_id)
);

insert into student (name, phone, fees, email, street, city, country, postal_code, state) 
values ('teste', '12345678912', 200.00, 'teste@teste.com', 'Av. Paulista', 'São Paulo', 'Brasil', '00000000', 'SP');

insert into teacher (name, phone, email, salary, street, city, country, postal_code, state) 
values ('professor', '98988998987', 'teste@teste.com', 2000.00, 'Av. Paulista', 'São Paulo', 'Brasil', '00000000', 'SP');

insert into class (grade, teacher_id, student_id) values ('teste', 1, 1);
