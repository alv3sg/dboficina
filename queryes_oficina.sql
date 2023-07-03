use oficina;

select * from cliente;
select * from veiculo;
select * from servico;
select * from equipeDeMecanicos;
select * from mecanico;
select * from ordemDeServico;
select * from autorizacao;

-- qual o carros de cada cliente?
select c.nome, v.modelo from cliente c, veiculo v where c.idCliente=v.idCliente;

-- Quantos serviços cada cliente tem a fazer em seu carro?
select c.nome, v.modelo, count(*) as serviços 
from cliente c 
inner join veiculo v on c.idCliente=v.idCliente
inner join servico s on s.idVeiculo= v.idVeiculo
group by c.nome, v.modelo
order by c.nome; 

-- Qual mecanico vai fazer qual servico em qual carro de qual cliente
select m.nome, m.especialidade, s.atividade, s.valorPecas, s.valorMaoDeObra, sum(s.valorPecas + s.valorMaoDeObra) as ValorDoServico, v.modelo, c.nome, c.telefone
from mecanico m
inner join equipeDeMecanicos edm on edm.idEquipe = m.idEquipe
inner join servico s on s.Idservico = edm.idServico 
inner join veiculo v on v.idVeiculo = s.idVeiculo
inner join cliente c on c.idCliente = v.idCliente
group by m.nome,  m.especialidade, s.atividade,  s.valorPecas, s.valorMaoDeObra, v.modelo, c.nome, c.telefone
having ValorDoServico > 50;