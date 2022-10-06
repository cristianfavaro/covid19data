# Covid19 e os impactos em regiões mais e menos desenvolvidas
Este projeto foi desenvolvido durante a disciplina Fundamentos e Ética do Jornalismo de Dados, parte da grade do Master em Dados do Insper. 

## As bases
A pandemia teve um efeito enorme no Brasil, causando diversas mortes, crise econômicas e políticas. Esse cruzamento tem em vista entender quais municípios tiveram as piores perdas e relaciona-las ao IDH deles. 
O projeto usou basicamente duas bases:
- Dados do IBGE de 2010 compilados pelo Programa das Nações Unidas para o Desenvolvimento (PNUD) com dados do IDH e dados sobre renda e educação: https://www.undp.org/pt/brazil/idhm-munic%C3%ADpios-2010
- Boletins epidemiológicos das 27 Secretariais Estaduais de Saúde do Brasil compilados por uma força tarefa colaborativa e consolidados pela equipe do Brasil.IO. A base traz dados sobre o número de mortes por município, assim como a taxa de mortabilidade a cada 100 mil habitantes. Dados atualizados no mês de setembro de 2022 : https://brasil.io/covid19/

## Limitações com as bases
- **Subnotificação**: Um dos problemas de se avaliar a mortalidade por COVID-19 com municípios pequenos e com pouca estrutura é a subnotificação. Uma forma que tentamos usar para limitar é buscar municípios com mais de 100 mil habitantes. Em outras palavras, as análises foram feitas como municípios mais estruturados, por falta de dados no banco. 
- **Falta de dados recentes**: As bases que foram utilizadas nesse projeto tiveram que ser de 2010, bem antes da pandemia. A falta de atualização das bases do IBGE comprometem uma melhor interpretação da realidade econômica e social sobre esses municípios. 

## Questionamentos 
1. De que forma a pandemia afetou os municipios do Brasil, quando consideramos o desenvolvimento econômico e social desses municípios?
2. Quais foram os municípios mais afetados pela pandemia, em termos de mortalidade? Esses municípios tinham IDH alto ou baixo?
3. Qual é a relação entre IDH e mortalidade por 100 mil habitantes?
4. A correlação entre IDH e mortalidade se mantem quando é analisado o indíce de mortalidade?

## Arquivos 
Os aquivos neste repositórios são os seguintes: 

### get_table_pnud.ipynb
Código usado para raspar a tabela do PNUD do site. Após o download, um pequeno ajuste é feito para separar a sigla do Estado do nome dos municípios. 

### notebook.ipynb
Código para fazer o merge das duas tabelas. Como temos todos os municípios, optamos por fazer um merge com duas variáveis e assim evitar eventuais erros por nomes repetidos - no total, são 234 municípios que tem nomes repetidos. 

## Sugestão de pauta
Os municipios mais desenvolvidos do pais, embora privilegiados por terem mais acesso saúde e infraestrutura, se viram em uma encruzilhada na pandemia. Dados cruzados nesse projeto mostram que enquanto municípios com IDH entre 0,400 e 0,499 registravam uma mortalidade de 90,65 a cada 100 mil habitantes, os municípios com IDH acima de 0,8 registraram um índice de mortes mais de 3 vezes superior. A taxa de mortalidade, que nas regiões mais pobres era de 1,55%, supera os 2,5% nas regiões mais ricas. São José do Rio Preto, no interior de São Paulo que no rank do IDH ocupa a posição de número 50, liderou o número de mortes por 100 mil habitantes, com 607,33 mortes.

Uma possível pauta poderia buscar apresentar a realidade de municípios mais afetados. Uma avaliação importante seria busca de que forma a subnotificação pode influenciar nessa realidade com especialista. Também vale realizar uma análise sobre o indice de mortalidade, cruzando uma base de dados sobre mortalidade geral com a base de dados utilizada nesse projeto para comparar se houve um crescimento significativo de mortes no município e se essa alta está atrelada com doenças típicas da COVID-19. 




















