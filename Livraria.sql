/* CRIANDO O BANCO DE DADOS LIVRARIA */

CREATE Database Livraria

/* Criando tabela livros */

CREATE TABLE LIVROS (
	NOME_DO_LIVRO  VARCHAR(100),
	NOME_DO_AUTOR VARCHAR(100),
	SEXO_DO_AUTOR CHAR(1),
	NUMEROS_DE_PAGINAS INT(5),
	NOME_DA_EDITORA VARCHAR(30),
	VALOR_DO_LIVRO FLOAT(10,2),
	ESTADO_UF_DA_EDITORA CHAR (2),
	ANO_DA_PUBLICACAO INT(4)
	);

/* INSERINDO DADOS NA TABELA */

INSERT INTO LIVROS VALUES('CAVALEIRO REAL','ANA CLAUDIA','F',465,'ATLAS', 49.90, 'RJ', '2009'),
                         ('SQL PARA LEIGOS','JOÃO NUNES','M',450,'ADDISON', 98.00, 'SP', '2018'),
						 ('RECEITAS CASEIRAS','CELIA TAVARES','F',210,'ATLAS', 45.00, 'RJ', '2008'),
						 ('PESSOAS EFETIVAS','EDUARDO SANTOS','M',390,'BETA', 78.99, 'RJ', '2018'),
						 ('HABITOS SAUDAVEIS','EDUARDO SANTOS','M',630,'BETA', 150.98, 'RJ', '2019'),
						 ('A CASA MARROM','HERMES MACEDO','M',250,'BUBBA', 60.00, 'MG', '2016'),
						 ('ESTACIO QUERIDO','GERALDO FRANCISCO','M',310,'INSIGNIA', 100.00, 'ES', '2015'),
						 ('PRA SEMPRE AMIGAS','LEDA SILVA','F',510,'INSIGNIA', 78.98, 'ES', '2011'),
						 ('COPAS INESQUECIVEIS','MARCO ALCANTARA','M',200,'LARSON', 130.98, 'RS', '2018'),
						 ('O PODER DA MENTE','CLARA MAFRA','F',120,'CONTINENTAL', 56.58, 'SP', '2017');


/*Trazer nome do livro e editora*/	
					 
select nome_do_livro, nome_da_editora from livros;

/*Trazer nome do livro e uf dos autores do sexo masculino */

select nome_do_livro, estado_uf_da_editora from livros where sexo_do_autor = 'M';

/*Trazer nome do livro e numero de paginas do sexo feminino */

select nome_do_livro, numeros_de_paginas from livros where sexo_do_autor = 'F';

/*Trazer nome e valores dos livros da editora de São Paulo*/

select nome_do_livro, valor_do_livro from livros where estado_uf_da_editora= 'SP';

/*Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio)*/

select NOME_DO_LIVRO, NOME_DO_AUTOR, NUMEROS_DE_PAGINAS,NOME_DA_EDITORA , valor_do_livro, ANO_DA_PUBLICACAO from livros where sexo_do_autor = 'M' and (estado_uf_da_editora = 'SP' or estado_uf_da_editora = 'RJ');

/*Trazer todos os dados */

select from livros;

/*Quantidade de individuos por sexo */

SELECT sexo, COUNT(*) 
FROM funcionarios
GROUP BY sexo;

SELECT sexo, COUNT(*) 
FROM funcionarios
GROUP BY departamento

SELECT COUNT(*)
FROM funcionarios;
/*Quantidade de individuos por departamento */

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
group by departamento;


--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
group by departamento
order by 1;

WHERE DEPARTAMENTO = 'Filmes' OR DEPARTAMENTO = 'Roupas'


--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *

select nome,email,sexo
from funcionarios
where ( DEPARTAMENTO = 'Lar' AND SEXO = 'Feminino' )
or
( DEPARTAMENTO = 'FILMES' AND SEXO = 'Feminino' );

--Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem no setor Jardim

select idfuncionario,nome,email,sexo,departamento, admissao,salario,cargo,idregiao
from funcionarios
where ( DEPARTAMENTO = 'Jardim' AND SEXO = 'MASCULINO' );
