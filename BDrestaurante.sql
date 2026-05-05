create database DB_restaurante;

use DB_restaurante;

create table tb_funcionario (
cd_funcionario int primary key auto_increment,
nm_funcionario varchar(45) not null 
);

create table tb_servico (
cd_servico int primary key auto_increment,
nm_servico varchar(45) not null,
ds_servico text not null
);

create table tb_categoria (
cd_categoria tinyint primary key auto_increment,
nm_categoria varchar(45)
);

create table tb_produto (
cd_produto int primary key auto_increment,
nm_produto varchar(45) not null,
vl_produto decimal(6,2) not null,
ds_produto text not null,
id_categoria tinyint not null,
foreign key (id_categoria) references
tb_categoria (cd_categoria)
);

create table tb_imagem_produto (
cd_imagem_produto int primary key auto_increment,
url_imagem varchar(200) not null,
id_categoria int not null,
foreign key (id_categoria) references
tb_categoria (cd_categoria)
);

create table tb_ordem_servico (
cd_ordem_servico int primary key auto_increment,
dt_ordem_servico datetime not null,
ds_ordem_servico text not null,
id_servico int,
foreign key (id_servico) references
tb_servico (cd_servico),
id_produto int,
foreign key (id_produto) references
tb_produto (cd_produto),
vl_servico decimal(8,2) not null,
id_funcionario int not null,
foreign key (id_funcionario) references
tb_funcionario (cd_funcionario)
);