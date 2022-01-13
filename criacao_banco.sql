CREATE TABLE tbHistorias(
	Id int identity primary key not null,
	Nome nvarchar(50),
	Historia nvarchar(2500),
	UpdatedAt datetime,
	DeletedAt datetime
)


--sp_help tbHistorias

INSERT INTO tbHistorias(Nome, Historia)
values ('Harriet tubman', 'A norte-americana nasceu no leste do EUA em condição de escravidão. Toda a sua família foi escravizada, e a jovem, consciente da sua condição, sonhava com a liberdade desde a adolescência, planejando formas de escapar de seus senhores. 
Decidiu realizar o seu plano quando tinha 27 anos de idade e, contrariando os pais, fugiu da fazenda onde era mantida. Além de ter conseguido escapar, aos poucos foi planejando e realizando viagens de resgate para ajudar também a sua família, amigos e conhecidos. Mais de 70 famílias foram ajudadas por Harriet, que conhecia todos os macetes para escapar dos senhores. 
Durante a Guerra Civil Americana (1861 - 1865), ofereceu-se para servir, foi espiã e comandou 150 soldados liderando as tropas do norte contra os soldados do sul. A operação conhecida como Ataque no Rio Combahee conseguiu a libertação de mais de 700 escravos dos Confederados. Tornou-se um símbolo americano de liberdade e coragem e seu rosto passará a estampar a nota de vinte dólares no ano de 2020.  '),

('Maria Firmina dos Reis', 'Considerada a primeira romancista brasileira, Maria Firmina dos Reis nasceu em São Luís, no Maranhão, filha de pai negro e mãe branca. Devido à condição do pai, em plena época da escravatura, a menina foi registrada com nome de um pai ilegítimo e cresceu na casa de uma tia, da família da mãe, o que lhe permitiu ter alguma educação. 
Com 22 anos de idade, foi aprovada em um concurso para ser professora na cidade. E então, já assumia uma posição antiescravagista. Seu primeiro livro, Úrsula, foi lançado doze anos depois, quando Maria já gozava de algum prestígio como professora. Foi o primeiro romance publicado por uma mulher no país, e também o primeiro antiescravagista. 
Chegou a publicar mais contos e um livro de poemas e fundar uma escola mista e gratuita para atender aos pobres da região (escândalo na época), mas com o tempo foi esquecida, e depois recuperada pela pesquisa de um historiador paraibano na década de 1960.');

select * from tbHistorias
