SELECT 
    CASE 
        WHEN state = 'AC' AND city_ibge_code = 12 THEN 'Acre'
        WHEN state = 'AL' AND city_ibge_code = 27 THEN 'Alagoas'
        WHEN city IS NULL THEN 'Sem Nome'
        WHEN city = 'AcrelÃ¢ndia' THEN 'Acrelândia'
        WHEN city = 'BrasilÃ©ia' THEN 'Brasiléia'
        WHEN city = 'EpitaciolÃ¢ndia' THEN 'Epitaciolândia'
        WHEN city = 'FeijÃ³' THEN 'Feijó'
        WHEN city = 'JordÃ£o' THEN 'Jordão'
        WHEN city = 'Porto Real do ColÃ©gio' THEN 'Porto Real do Colégio'
        WHEN city = 'MaceiÃ³' THEN 'Maceió'
        WHEN city = 'MÃ¢ncio Lima' THEN 'Mâncio Lima'
        WHEN city = 'PlÃ¡cido de Castro' THEN 'Plácido de Castro'
        WHEN city = 'TarauacÃ¡' THEN 'Tarauacá'
        ELSE city
    END AS Cidade,
    state as Estado,
    city_ibge_code as códigoCidade,
    estimated_population as População,
    estimated_population_2019,
    COUNT(*) AS count
FROM 
    DADOS_COVID
GROUP BY 
    CASE 
        WHEN state = 'AC' AND city_ibge_code = 12 THEN 'Acre'
        WHEN state = 'AL' AND city_ibge_code = 27 THEN 'Alagoas'
        WHEN city IS NULL THEN 'Sem Nome'
        WHEN city = 'AcrelÃ¢ndia' THEN 'Acrelândia'
        WHEN city = 'BrasilÃ©ia' THEN 'Brasiléia'
        WHEN city = 'EpitaciolÃ¢ndia' THEN 'Epitaciolândia'
        WHEN city = 'FeijÃ³' THEN 'Feijó'
        WHEN city = 'JordÃ£o' THEN 'Jordão'
        WHEN city = 'Porto Real do ColÃ©gio' THEN 'Porto Real do Colégio'
        WHEN city = 'MaceiÃ³' THEN 'Maceió'
        WHEN city = 'MÃ¢ncio Lima' THEN 'Mâncio Lima'
        WHEN city = 'PlÃ¡cido de Castro' THEN 'Plácido de Castro'
        WHEN city = 'TarauacÃ¡' THEN 'Tarauacá'
        ELSE city
    END,
    state, 
    city_ibge_code, 
    estimated_population, 
    estimated_population_2019

