use oficina;

insert into  cliente (nome, endereco, telefone)
			values ('Gabriel', 'Bragança, Portugal', '932292000'), 
            ('Mariana', 'Lisboa, Portugal', '912345678'), 
            ('Pedro', 'Porto, Portugal', '934567890'), 
            ('Ana', 'Coimbra, Portugal', '966789012'), 
            ('Rui', 'Faro, Portugal', '927890123'), 
            ('Carla', 'Aveiro, Portugal', '961234567');
select * from cliente;
insert into veiculo (idCliente, modelo)
			values ('1','volkwagen'),
			('2', 'Renault'),
            ('3', 'Peugeot'),
            ('4', 'Ford'),
            ('5', 'Fiat'),
            ('6', 'Toyota');
select * from veiculo;
insert into servico(idVeiculo, atividade, valorPecas, valorMaoDeObra)
			values ('1','Revisao', '30', '40'), 
            ('2','Lavagem', '60', '80'),
            ('3','Troca de oleo', '15', '10'),
            ('4','Troca de pneus', '120', '200'),
            ('5','Troca de oleo', '45', '60'), 
            ('6','Pintura', '45', '50');
select * from servico;
insert into equipeDeMecanicos(idServico) 
			values ('17'),
            ('14'),
            ('15'),
            ('18'),
            ('13'),
            ('16');
            update equipeDeMecanicos set idServico =
select * from equipeDeMecanicos;
insert into mecanico(idEquipe, nome, especialidade)
			values ('1', 'João', 'Freios'),
            ('2', 'Maria', 'Motor'),
            ('3', 'Carlos', 'Suspensão'),
            ('4', 'Luís', 'Elétrica'),
            ('5', 'Paula', 'Ar-condicionado'),
            ('6', 'Pedro', 'Ar-condicionado');
select * from mecanico;
insert into OrdemDeServico (idServico, dataEmissao, dataConclusao)
			values ('15', '2022-05-12', '2022-05-31'), 
            ('17', '2022-07-01', '2022-07-15'),
            ('18', '2022-08-20', '2022-09-20'),
            ('13', '2022-10-10', '2022-10-25'),
            ('16', '2022-11-01', '2022-11-30'),
            ('14', '2022-12-01', '2022-12-31');
select * from OrdemDeServico;
insert into autorizacao (idCliente, idOrdemDeServico) values ('1','1'),('2','2'),('3','3'),('4','4'),('5','5'),('6','6');
select * from autorizacao;