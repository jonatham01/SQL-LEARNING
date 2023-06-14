
CREATE TABLE "publicaciones"(
    id BIGSERIAL NOT NULL,
    negocio BIGINT NOT NULL,
    descrpcion VARCHAR(200) NOT NULL,
    titulo VARCHAR(100),
    estado VARCHAR(10),
    publicacion TEXT,
    fecha_creacion TIMESTAMP NOT NULL,
    actualizacion TIMESTAMP NOT NULL,
    
    PRIMARY KEY("id"),
    CONSTRAINT "publicaciones_negocios_fk"
    FOREIGN KEY("negocio")
    REFERENCES NEGOCIOS("id")
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE "publicaciones_txt"(
    id BIGSERIAL NOT NULL,
    publicacion BIGINT  NOT NULL,
    contenido TEXT,
    tipo VARCHAR(3),

    PRIMARY KEY("id"),
    CONSTRAINT "publicaciones_fk"
    FOREIGN KEY("publicacion")
    REFERENCES PUBLICACIONES("id")
    ON DELETE CASCADE
    ON UPDATE CASCADE

);


CREATE TABLE "pub_page"(
    id_post BIGINT NOT NULL,
    id_page BIGINT NOT NULL,
    
    PRIMARY KEY("id_post","id_page"),
    CONSTRAINT "pubpage_page_fk"
    FOREIGN KEY("id_page")
    REFERENCES PAGINAS("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,

    CONSTRAINT "pubpage_publicaciones_fk"
    FOREIGN KEY("id_post")
    REFERENCES PUBLICACIONES("id")
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

