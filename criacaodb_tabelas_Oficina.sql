create database oficina;
use oficina;

-- tabela clientes
create table cliente(
	idCliente int auto_increment primary key,
    nome varchar(30),
    endereco varchar(100),
    telefone varchar(20)    
);
-- tabela veiculos fk id cliente
create table veiculo(
	idVeiculo int auto_increment primary key,
    idCliente int,
    modelo varchar(50),
    constraint fk_idCliente foreign key (idCliente) references cliente(idCliente)
);

create table servico(
	idServico int auto_increment primary key,
    idVeiculo int,
    atividade varchar(255),
    valorPecas float,
    valorMaoDeObra float,
    constraint fk_idVeiculo foreign key (idVeiculo) references veiculo(idVeiculo)
);

create table equipeDeMecanicos(
	idEquipe int auto_increment primary key,
    idServico int,
    constraint fk_idServico foreign key (idServico) references servico(idServico)
);

create table mecanico(
	idMecanico int auto_increment primary key,
    idEquipe int,
    nome varchar(30),
    especialidade varchar(30),
    constraint fk_idEquipe foreign key (idEquipe) references equipeDeMecanicos(idEquipe)
);

create table ordemDeServico(
	idOrdemDeServico int auto_increment primary key,
    idServico int,
    dataEmissao date,
    dataConclusao date,
    constraint fk_idServico_Os foreign key (idServico) references servico(idServico)
);

create table autorizacao(
	idCliente int,
    idOrdemDeServico int,
    constraint fk_idCliente_aut foreign key (idCliente) references cliente(idCliente),
    constraint fk_idordemDeServico_aut foreign key (idOrdemDeServico) references ordemDeServico(idOrdemDeServico)    
);
show tables;