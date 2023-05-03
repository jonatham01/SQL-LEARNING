
--Tabla paginas
CREATE TABLE "paginas"(
    id BIGSERIAL NOT NULL ,
    negocio_id BIGINT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    titulo VARCHAR(250) NOT NULL,
    imagen VARCHAR(250),
    estado VARCHAR(10) NOT NULL,
    usuario_id BIGINT NOT NULL,
    principal BOOLEAN NOT NULL,
    PRIMARY KEY("id"),
    CONSTRAINT "paginas_usuarios_fk"
    FOREIGN KEY("usuario_id")
    REFERENCES Usuarios("id"),

    CONSTRAINT "usuarios_negocios_fk"
    FOREIGN KEY("negocio_id")
    REFERENCES Negocios("id")
);


--tabla componentes (id,pagina,titulo,elementos)
CREATE TABLE "componentes" (
    id BIGSERIAL NOT NULL,
    ide INTEGER NOT NULL,
    pagina_id BIGINT NOT NULL,
    posicion smallint NOT NULL,

    titulo VARCHAR(250),
    paddingtop smallint,
    paddingbottom smallint,
    paddingleft smallint,
    paddingright smallint,
    margintop smallint,
    marginbottom smallint,
    marginleft smallint,
    marginright smallint,
    backgroundcolor VARCHAR(100),
    display VARCHAR(8),
    justifycontent VARCHAR(7),
   
    PRIMARY KEY("id"),
    CONSTRAINT "componentes_paginas_fk"
    FOREIGN KEY("pagina_id")
    REFERENCES PAGINAS("id")
);

--tabla contenedores
CREATE TABLE "contenedores"(
    id BIGSERIAL NOT NULL ,
    ide INTEGER NOT NULL,
    componente_id BIGINT NOT NULL,
    pagina_id BIGINT NOT NULL,
    posicion smallint NOT NULL,
    
    paddingtop smallint,
    paddingbottom smallint,
    paddingleft smallint,
    paddingright smallint,
    display VARCHAR(8),
    flexdirection VARCHAR(6),
    width VARCHAR(7),
    PRIMARY KEY("id"),
    CONSTRAINT "contenedores_componentes_fk"
    FOREIGN KEY("componente_id")
    REFERENCES COMPONENTES("id")
);

--tabla subcomponentes
CREATE TABLE "subcomponentes"(
    id BIGSERIAL NOT NULL,
    ide INTEGER NOT NULL,
    componente_id BIGINT NOT NULL,
    pagina_id BIGINT NOT NULL,
    posicion smallint NOT NULL,
    display VARCHAR(8),
    gridtemplatecolumns VARCHAR(40),
    gap VARCHAR(7),
    PRIMARY KEY("id"),
    CONSTRAINT "subcomponentes_contenedores_fk"
    FOREIGN KEY("componente_id")
    REFERENCES CONTENEDORES("id")
);

CREATE TABLE "cajas"(
    id BIGSERIAL NOT NULL,
    ide INTEGER NOT NULL,
    componente_id BIGINT NOT NULL,
    pagina_id BIGINT NOT NULL,
    posicion smallint NOT NULL,
   -- backgroundcolor VARCHAR(100),
    display VARCHAR(8),
    flexdirection VARCHAR(6),
    alignitems VARCHAR(7),
    justifycontent VARCHAR(7),
    alignself VARCHAR(7),
    border VARCHAR(20),
    padding VARCHAR(16),
    PRIMARY KEY("id"),
    CONSTRAINT "cajas_subcomponentes_fk"
    FOREIGN KEY("componente_id")
    REFERENCES SUBCOMPONENTES("id")
);

--tabla componentes 87bytes + content
CREATE TABLE "elementos"(
    id BIGSERIAL NOT NULL,
    ide INTEGER NOT NULL,
    componente_id BIGINT NOT NULL,
    pagina_id BIGINT NOT NULL,
    posicion smallint NOT NULL,
    tag VARCHAR(7) NOT NULL, 
    content TEXT NOT NULL, ---text deprecado
    paddingtop SMALLINT ,
    paddingbottom SMALLINT ,
    paddingleft SMALLINT ,
    paddingright SMALLINT ,
    margintop SMALLINT ,
    marginbottom SMALLINT,
    marginleft SMALLINT,
    marginright SMALLINT,
    width VARCHAR(13),
    borderstyle VARCHAR(30),
    borderwidth SMALLINT ,
    bordercolor  VARCHAR(20),
    borderradius VARCHAR(20),
    fontsize SMALLINT ,
    color VARCHAR(20),
    fontfamily  VARCHAR(20),
    fontweight smallint ,
    lineheight smallint ,
    backgroundcolor VARCHAR(20),
    align VARCHAR(8),
    PRIMARY KEY("id"),
    CONSTRAINT "elementos_cajas_fk"
    FOREIGN KEY("componente_id")
    REFERENCES CAJAS("id")
);