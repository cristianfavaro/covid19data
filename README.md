# Covid19 e os impactos em regiões mais e menos desenvolvidas
Este projeto foi desenvolvido durante a disciplina Fundamentos e Ética do Jornalismo de Dados, parte da grade do Master em Dados do Insper. 

## As bases
O projeto usou basicamente duas bases:
- Dados do IBGE de 2010 compilados pelo Programa das Nações Unidas para o Desenvolvimento (PNUD) com dados do IDH e dados sobre renda e educação: https://www.undp.org/pt/brazil/idhm-munic%C3%ADpios-2010
- Boletins epidemiológicos das 27 Secretariais Estaduais de Saúde do Brasil compilados por uma força tarefa colaborativa e consolidados pela equipe do Brasil.IO. A base traz dados sobre o número de mortes por município, assim como a taxa de mortabilidade a casa 100 mil habitantes: https://brasil.io/covid19/

## Arquivos 
Os aquivos neste repositórios são os seguintes: 

### get_table_pnud.ipynb
Código usado para raspar a tabela do PNUD do site. Após o download, um pequeno ajuste é feito para separar a sigla do Estado do nome dos municípios. 

### notebook.ipynb
Código para fazer o merge das duas tabelas. Como temos todos os municípios, optamos por fazer um merge com duas variáveis e assim evitar eventuais erros por nomes repetidos - no total, são 234 municípios que tem nomes repetidos. 



# Mensagens

Oi, gente, 
Terminamos aqui por hoje.
Seguinte. A base tá bastante interessante de analisar e tem muita info legal.



# Fórmulas

=== 
SELECT *
FROM "merged_data"
ORDER BY "death_per_100k_inhabitants" DESC

Cidade com maior mortalidade por 100 mil habitantes fica em Goiás - reduto Bolsonarista
Campos Verdes

====
SELECT *
FROM "merged_data"
ORDER BY "death_per_100k_inhabitants" DESC
LIMIT 5

Campos Verdes - 983.606557377049
Itaúba - 836.933045356372
Pirapó - 798.580301685892
Meridiano - 784.518828451883
Parisi - 783.77132319041


===  Fazendo a mesma busca, mas considerando cidades apenas com mais de 100.000 
SELECT *
FROM "merged_data"
WHERE "estimated_population"  >= 100000
ORDER BY "death_per_100k_inhabitants" DESC
LIMIT 5

cidade, mortes 100 mil, idhm
São José do Rio Preto - 607.334031566745 - 797
São Caetano do Sul - 595.219718814253 - 862
Cuiabá - 592.923102807851 - 785
Santos - 524.609367793827 - 840
Várzea Grande - 521.34415670235 - 734


==== 
SELECT *
FROM "merged_data"
WHERE "estimated_population"  >= 100000
ORDER BY "death_per_100k_inhabitants" 
LIMIT 5

cidade, mortes 100 mil, idhm
São Félix do Xingu - 31.0281675218332 - 594
Marituba - 109.211953472716 - 676
Tailândia - 119.299984399233 - 588
Breves - 120.776447626501 - 503
Japeri - 134.535945730852 - 659


Cidade que mais morreu por 100 mil x cidade que menos morreu
Mortalidade: São José do Rio Preto teve média de morte 1.858% maior do que São Félix do Xingu
IDH: São José do Rio Preto tem IDH 34% maior (precisa confirmar a escala - posso fazer isso?)





















