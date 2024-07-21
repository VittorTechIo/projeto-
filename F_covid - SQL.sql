use teste_dados

 SELECT 
    date as Data,
    CASE 
        WHEN city_ibge_code = 12 THEN 'Acre'
        WHEN city_ibge_code = 27 THEN 'Alagoas'
        WHEN city IS NULL THEN 'Sem Nome'
        WHEN city = 'AcrelÃ¢ndia' THEN 'Acrelândia'
        WHEN city = 'BrasilÃ©ia' THEN 'Brasiléia'
        WHEN city = 'EpitaciolÃ¢ndia' THEN 'Epitaciolândia'
        WHEN city = 'FeijÃ³' THEN 'Feijó'
        WHEN city = 'JordÃ£o' THEN 'Jordão'
        WHEN city = 'MaceiÃ³' THEN 'Maceió'
        WHEN city = 'MÃ¢ncio Lima' THEN 'Mâncio Lima'
        WHEN city = 'PlÃ¡cido de Castro' THEN 'Plácido de Castro'
        WHEN city = 'TarauacÃ¡' THEN 'Tarauacá'
 WHEN city = 'Porto Real do ColÃ©gio' THEN 'Porto Real do Colégio'
        ELSE city
    END AS Cidade,
    state as Estado,
    new_confirmed as Confirmados,
    new_deaths as Mortes
FROM 
    DADOS_COVID;

 
 




