

CREATE TABLE "negocios"(
    id BIGSERIAL NOT NULL,
   -- usuario_id BIGINT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    public_ip VARCHAR(16),
    instance_id VARCHAR(30),
    volume_id VARCHAR(16),
   -- descripcion TEXT NOT NULL,
    PRIMARY KEY("id")
    --CONSTRAINT "negocios_usuarios_fk"
   -- FOREIGN KEY("usuario_id")
    --REFERENCES USUARIOS("id")
);



CREATE TABLE "redes"(
    id BIGSERIAL NOT NULL,
	negocio_id BIGINT NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    red_url TEXT,
    PRIMARY KEY("id"),
    CONSTRAINT "redes_negocios_fk"
    FOREIGN KEY("negocio_id")
    REFERENCES NEGOCIOS("id")
);

/*
--tabla tipos de comercios: (ds)distribuidor, (fa)fabricante, (co)comerciante
CREATE TABLE 'comercios'(
   id BIGINT NOT NULL AUTO_INCREMENT,
    negocio_id BIGINT NOT NULL,
    tag CHAR(2),
    PRIMARY KEY('id'),
    CONSTRAINT 'comercios_negocios_fk'
    FOREIGN KEY('negocio_id')
    REFERENCES NEGOCIOS('id')
);*/