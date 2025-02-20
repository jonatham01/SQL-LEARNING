SELECT *  
FROM `profesor`
ORDER BY cate_prof;

SELECT * FROM `curso`
WHERE valor_curs >500000;

SELECT COUNT(*)
FROM `estudiante`
WHERE edad_est > 22;

SELECT `nom_est`,`edad_est`
FROM `estudiante`
WHERE edad_est = (SELECT MIN(`edad_est`) FROM estudiante);

SELECT AVG(`valor_curs`) AS `prom_est` 
FROM `curso` 
WHERE horas_curs > 40;

SELECT AVG(`sal_prof`)
FROM `profesor`
WHERE cate_prof = 1;

SELECT * 
FROM `curso`
ORDER BY valor_curs ASC;

SELECT `nom_prof` 
FROM `profesor`
WHERE sal_prof = (SELECT MIN(`sal_prof`) FROM `profesor`);

SELECT * FROM `profesor`
WHERE sal_prof  BETWEEN 500000  AND 700000;

SELECT  pedido.id_ped, pedido.fec_ped, pedido.val_ped, cliente.nom_cli
FROM pedido
INNER JOIN cliente
ON pedido.id_cli_ped = cliente.id_cli;

SELECT *
FROM cliente
WHERE mes_cum_cli = "Marzo";

SELECT   cliente.nom_cli, dir_cli, articulo.tit_art, articulo.preci_art
FROM articuloxpedido
INNER JOIN pedido ON articuloxpedido.id_ped_artped = pedido.id_ped
INNER JOIN cliente ON pedido.id_cli_ped = cliente.id_cli
INNER JOIN articulo ON articuloxpedido.id_art_artped = articulo.id_art
WHERE id_ped_artped = 1;

SELECT cliente.nom_cli, pedido.fec_ped, pedido.val_ped
FROM pedido
INNER JOIN cliente
ON pedido.id_cli_ped = cliente.id_cli
WHERE val_ped = (SELECT MAX(val_ped) FROM pedido);

SELECT COUNT(*),edi_art
FROM articulo
GROUP BY edi_art;

SELECT *, articulo.id_art, articulo.tit_art, articulo.preci_art, articuloxpedido.can_art_artped
FROM pedido
INNER JOIN articuloxpedido ON pedido.id_ped = articuloxpedido.id_ped_artped
INNER JOIN articulo ON articuloxpedido.id_art_artped = articulo.id_art
ORDER BY pedido.id_ped;

SELECT * FROM cliente
ORDER BY ape_cli;

SELECT * FROM articulo
ORDER BY aut_art;

SELECT cliente.nom_cli, cliente.dir_cli, pedido.id_ped, pedido.val_ped
FROM pedido
INNER JOIN articuloxpedido ON pedido.id_ped = articuloxpedido.id_ped_artped
INNER JOIN cliente ON pedido.id_cli_ped = cliente.id_cli
WHERE articuloxpedido.id_art_artped = 2;

SELECT * FROM compañia 
WHERE comañofun BETWEEN 1991 AND 1998;

SELECT automotores.autoplaca, automotores.automodelo, automotores.automarca, automotores.autopasajeros, automotores.autocilindraje, 
aseguramientos.asecosto, aseguramientos.asevalorasegurado
FROM automotores
INNER JOIN aseguramientos ON automotores.autoplaca = aseguramientos.aseplaca
WHERE aseguramientos.asefechaexpiracion   < '2013-01-01';

SELECT incidentes.incifecha,incidentes.inciplaca,incidentes.incilugar, incidentes.inciantheridos, 
incidentes.incicanfatalidades, incidentes.incicanautosinvolucrados,
aseguramientos.asecodigo, aseguramientos.asefechainicio, a
seguramientos.asevalorasegurado, aseguramientos.asecosto
FROM incidentes
INNER JOIN aseguramientos ON incidentes.inciplaca = aseguramientos.aseplaca
WHERE incidentes.incifecha = '2012-09-30';

SELECT incidentes.inciplaca, aseguramientos.*
FROM incidentes
INNER JOIN aseguramientos ON incidentes.inciplaca = aseguramientos.aseplaca
WHERE incicanautosinvolucrados = 1;

SELECT * FROM aseguramientos
WHERE  asecosto = (SELECT MAX(asecosto) FROM aseguramientos);

SELECT * FROM incidentes
WHERE incicanautosinvolucrados = ( SELECT MIN(incicanautosinvolucrados) FROM incidentes);

SELECT aseguramientos.aseestado, aseguramientos.asevalorasegurado 
FROM incidentes
INNER JOIN aseguramientos ON incidentes.inciplaca = aseguramientos.aseplaca
WHERE incicanautosinvolucrados = ( SELECT MIN(incicanautosinvolucrados) FROM incidentes);

SELECT incidentes.incifecha, incidentes.incilugar, incidentes.inciantheridos,
aseguramientos.asefechainicio, aseguramientos.asefechaexpiracion, aseguramientos.asevalorasegurado
FROM incidentes
INNER JOIN aseguramientos ON incidentes.inciplaca = aseguramientos.aseplaca
WHERE incidentes.inciplaca = 'FLL420';

select * FROM compañia
WHERE comnit = '899999999-5';

SELECT *
FROM aseguramientos
INNER JOIN automotores ON aseguramientos.aseplaca = automotores.autoplaca;

SELECT automotores.autoplaca, automotores,automarca, automotores.autocilindraje,
aseguramientos.asefechainicio, aseguramientos.asefechaexpiracion, aseguramientos.aseestado
FROM aseguramientos
INNER JOIN automotores ON aseguramientos.aseplaca = automotores.autoplaca
WHERE automotores.autotipo = 1;