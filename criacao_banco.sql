CREATE TABLE tbHistorias(
	Id int identity primary key not null,
	Nome nvarchar(50),
	Historia nvarchar(2500),
	UpdatedAt datetime,
	DeletedAt datetime
)


--sp_help tbHistorias

INSERT INTO tbHistorias(Nome, Historia)
values ('Harriet tubman', 'A norte-americana nasceu no leste do EUA em condi��o de escravid�o. Toda a sua fam�lia foi escravizada, e a jovem, consciente da sua condi��o, sonhava com a liberdade desde a adolesc�ncia, planejando formas de escapar de seus senhores. 
Decidiu realizar o seu plano quando tinha 27 anos de idade e, contrariando os pais, fugiu da fazenda onde era mantida. Al�m de ter conseguido escapar, aos poucos foi planejando e realizando viagens de resgate para ajudar tamb�m a sua fam�lia, amigos e conhecidos. Mais de 70 fam�lias foram ajudadas por Harriet, que conhecia todos os macetes para escapar dos senhores. 
Durante a Guerra Civil Americana (1861 - 1865), ofereceu-se para servir, foi espi� e comandou 150 soldados liderando as tropas do norte contra os soldados do sul. A opera��o conhecida como Ataque no Rio Combahee conseguiu a liberta��o de mais de 700 escravos dos Confederados. Tornou-se um s�mbolo americano de liberdade e coragem e seu rosto passar� a estampar a nota de vinte d�lares no ano de 2020.  '),

('Maria Firmina dos Reis', 'Considerada a primeira romancista brasileira, Maria Firmina dos Reis nasceu em S�o Lu�s, no Maranh�o, filha de pai negro e m�e branca. Devido � condi��o do pai, em plena �poca da escravatura, a menina foi registrada com nome de um pai ileg�timo e cresceu na casa de uma tia, da fam�lia da m�e, o que lhe permitiu ter alguma educa��o. 
Com 22 anos de idade, foi aprovada em um concurso para ser professora na cidade. E ent�o, j� assumia uma posi��o antiescravagista. Seu primeiro livro, �rsula, foi lan�ado doze anos depois, quando Maria j� gozava de algum prest�gio como professora. Foi o primeiro romance publicado por uma mulher no pa�s, e tamb�m o primeiro antiescravagista. 
Chegou a publicar mais contos e um livro de poemas e fundar uma escola mista e gratuita para atender aos pobres da regi�o (esc�ndalo na �poca), mas com o tempo foi esquecida, e depois recuperada pela pesquisa de um historiador paraibano na d�cada de 1960.');

select * from tbHistorias
