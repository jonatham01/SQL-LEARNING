use demo3;

INSERT INTO `profesor` (doc_prof,nom_prof,ape_prof,cate_prof,sal_prof) VALUES
("63502720","Martha","Rojas",2,690000),
("91216904","Carlos","Pérez",3,950000),
("13826789","Maritza","Angarita",1,550000),
("1098765789","Alejandra","Torres",4,1100000);

INSERT INTO `curso` (cod_curs,nom_curs,horas_curs,valor_curs) VALUES
(149842,"Fundamentos de bases de datos",40,500000),
(250067,"Fundamentos de SQL",20,700000),
(289011,"Manejo de SQL",45,550000),
(345671,"Fundamentos de Oracle",60,3000000);


INSERT INTO `estudiante` (doc_est,nom_est,ape_est,edad_est) VALUES
("63502720","María","Pérez",2),
("91245678","Carlos Jóse","López",3,),
("1098098097","Jonatan","Ardila",1),
("108765679","Carlos","Martínez",4);

INSERT INTO `estudianteexcurso` (cod_curs_estcur,doc_est_escur,fec_ini_estcur) VALUES
(289011,"108765679","2011-02-01"),
(250067,"63502720","2011-03.01"),
(289011,"1098098097","2011-02-01"),
(345671,"63502720","2011-04-01");

INSERT INTO `cliente`(id_cli,nom_cli,ape_cli,dir_cli,dep_cli,mes_cum_cli) VALUES
("63502718","Maritza","Rojas","Calle 34 No.14-45","Santander","Abril"),
("13890234","Roger","Ariza","Cra 30 No.13-45","Antioquia","Junio"),
("77191956","Juan Carlos","Arenas","Diagonal 23 No. 12-34 apto 101","Valle","Marzo"),
("1098765789","Catalina","Zapata","Av. El Liberador No. 30-14","Cauca","Marzo");

INSERT INTO `articulo`(tit_art,aut_art,edi_art,preci_art) VALUES
("Redes cisco","Ernesto Arigasello","Alfaomega-Rama",60000),
("Facebook y twitter para adultos", "Veloso Claudio","Alfaomega",52000),
("Creación de un portal con php y mysql","Jacob Pavón Puertas","Alfaomega-Rama",40000),
("Admiministración de sistemas operativos","Julio Gómez López","Alfaomega-Rama",55000);

--modificar preciart

INSERT INTO `pedido` (id_cli_ped,fec_ped,val_ped) VALUES
("63502718","2012-02-25",120000),
("77191956","2012-04-30",55000),
("63502718","2011-12-10",260000),
("1098765789","2012-02-25",1800000);

INSERT INTO `articuloxpedido` (id_ped_artped,id_art_artped,can_art_artped,val_ven_art_artped) VALUES
(1,3,5,40000),
(1,4,12,55000),
(2,1,5,65000),
(3,2,10,55000),
(3,3,12,45000),
(4,1,20,65000);

INSERT INTO `tiposAutomotores` (autnombre) VALUES
("Automoviles"),("Campero"),("Camiones");

INSERT INTO `compañia` (comnit,comnombre,comañofun,comreplegal) VALUES
("800890890-2","Seguros Atlantida",1998,"Carlos López"),
("899999999-1","Aseguradora Rojas",1991,"Luis Fernando Rojas"),
("899999999-5","Seguros Del Estado",2001,"María Margarita Pérez");

INSERT INTO `automotores` (autoplaca,automarca,autotipo,automodelo,autopasajeros,autocilindraje,autonumchasis) VALUES
("FLL420","chevrolet corsa",1,2003,5,1400,"wywzzz167kk009d25"),
("DKZ820","renault stepway",1,2008,5,1600,"wywzzz157kk009d45"),
("KJQ920","kia sportage",2,2009,7,2000,"wywzzz157kk009d25");

INSERT INTO `aseguramientos`(asefechainicio,asefechaexpiracion,asevalorasegurado,aseestado,asecosto,aseplaca) VALUES
("2012-09-30","2013-09-30",30000000,"Vigente",500000,"FLL420"),
("2012-09-27","2013-09-27",35000000,"Vigente",600000,"DKZ820"),
("2011-09-28","2012-09-28",50000000,"Vigente",800000,"KJQ920");


INSERT INTO `incidentes` (incifecha,inciplaca,incilugar,inciantheridos,incicanfatalidades,incicanautosinvolucrados)VALUES 
("2012-09-30","DKZ820","Bucaramanga",0,0,2),
("2012-09-27","FLL420","Girón",1,0,1),
("2011-09-28","FLL420","Bucaramanga",1,0,2);





