create database db_consultorio1_dsn;
use db_consultorio1_dsn;
create table tb_medico (
cd_medico smallint primary key auto_increment,
nm_medico varchar(80) not null,
nm_email_medico varchar(60) not null unique,
dt_nascimento_medico varchar(15) not null
);

create table tb_especialidade_med (
id_especialidade smallint primary key auto_increment,
nm_especialidade varchar(60) not null
);

alter table tb_medico add column
id_especialidade smallint not null;

alter table tb_medico add
foreign key (id_especialidade) references
tb_especialidade_med (cd_especialidade);

create table tb_paciente (
cd_paciente smallint primary key auto_increment,
nm_paciente varchar(50) not null,
dt_nascimento_paciente varchar(15) not null,
sg_genero varchar(1) not null,
nm_email varchar(60) not null unique,
nr_telefone varchar(18) not null unique
);




