-- ===
-- agropamento da base por 100 mil habitantes 
SELECT *
FROM "merged_data"
ORDER BY "death_per_100k_inhabitants" DESC
-- Cidade com maior mortalidade por 100 mil habitantes fica em Goiás - reduto Bolsonarista
-- Campos Verdes

-- ===
--  Fazendo a mesma busca, mas considerando cidades apenas com mais de 100.000 
SELECT *
FROM "merged_data"
WHERE "estimated_population"  >= 100000
ORDER BY "death_per_100k_inhabitants" DESC
LIMIT 5
-- Cidade que mais morreu por 100 mil x cidade que menos morreu
-- Mortalidade: São José do Rio Preto teve média de morte 1.858% maior do que São Félix do Xingu

-- ===
-- agrupamento de mortes por IDH
SELECT 
	substr("IDHM 2010", 1, 1) as IDH,
	avg(death_per_100k_inhabitants)as mortes
FROM merged_data
GROUP by IDH
ORDER by IDH DESC

-- ==
-- agrupamento de mortes por estado a cada 100 mil habitantes, com taxa de mortalidade
SELECT 
	state as estado, 
	avg(confirmed_per_100k_inhabitants) as confirmados,
	avg(death_per_100k_inhabitants)as mortes,
	avg(death_rate) as indice_mortes
FROM merged_data
GROUP by estado 
ORDER by indice_mortes DESC
-- DF tem maior quantidade de mortos por 100k de habitantes, mas tem uma das menores taxas de mortalidade
-- RJ está entre a pior taxa de mortalidade 

--==
-- média de mortes e taxa de mortalidade por IDH
SELECT 
	substr("IDHM 2010", 1, 1) as IDH,
	avg(death_per_100k_inhabitants) as mortes, 
	avg(death_rate) * 100 as taxa_mortalidade
FROM merged_data
GROUP by IDH
