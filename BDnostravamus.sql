create database db_nostravamus;

use db_nostravamus;

create table tb_categoria ( 
cd_categoria tinyint primary key auto_increment,
nm_categoria varchar(45) not null
);

create table tb_produto ( 
cd_produto int primary key auto_increment,
nm_produto varchar(60) not null,
vl_produto decimal(6,2) not null,
ds_produto text not null,
foreign key (id_categoria) references
tb_categoria (cd_categoria)
);

create table tb_reserva ( 
cd_reserva int primary key auto_increment,
nm_cliente varchar(45) not null,
nr_contato_cliente varchar(15) not null,
dt_reserva date not null,
tm_reserva time not null,
qt_reserva tinyint not null,
id_funcionario tinyint not null
);

create table tb_funcionario (
cd_funcionario int primary key auto_increment,
nm_funcionario varchar (45) not null
);

create table tb_comanda (
cd_comanda int primary key auto_increment,
st_comanda char(1) not null,
dt_abertura datetime not null,
dt_fechamento datetime not null,
id_funcionario_fechamento int not null,
foreign key (id_funcionario_fechamento) references 
tb_funcionario (cd_funcionario)
);

create table tb_mesa (
cd_mesa int primary key auto_increment
);

create table tb_pedido (
cd_pedido int primary key auto_increment,
id_funcionario int not null,
foreign key (id_funcionario) references
tb_funcionario (cd_funcionario),
id_comanda int not null,
foreign key (id_comanda) references
tb_comanda (cd_comanda),
id_mesa int not null,
foreign key (id_mesa) references
tb_mesa (cd_mesa)
);

create table tb_item_pedido (
cd_item_pedido int primary key auto_increment,
id_pedido int not null,
foreign key (id_pedido) references
tb_pedido (cd_pedido),
id_produto int not null,
foreign key (id_produto) references
tb_produto (cd_produto),
qt_produto int not null,
vl_pedido decimal(6,2) not null
);

 