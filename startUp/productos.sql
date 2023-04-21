--PRODUCTOS y categorias
CREATE TABLE "categorias"(
    id BIGSERIAL NOT NULL,
    negocio BIGINT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    imagen TEXT,
    
    PRIMARY KEY("id"),
    CONSTRAINT "categorias_negocios_fk"
    FOREIGN KEY("negocio")
    REFERENCES NEGOCIOS("id")
);


CREATE TABLE "productos"(
    id BIGSERIAL NOT NULL,
    negocio BIGINT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    imagen TEXT,
    
    PRIMARY KEY("id"),
    CONSTRAINT "productos_negocios_fk"
    FOREIGN KEY("negocio")
    REFERENCES NEGOCIOS("id")
);

--PRODUCTOS y categorias
CREATE TABLE "img_producto"(
    id BIGSERIAL NOT NULL,
    producto BIGINT NOT NULL,
    imagen TEXT,
    
    PRIMARY KEY("id"),
    CONSTRAINT "imagenes_producto_fk"
    FOREIGN KEY("producto")
    REFERENCES PRODUCTOS("id")
);

--PRODUCTOS y categorias
CREATE TABLE "cat_producto"(
    id BIGSERIAL NOT NULL,
    producto BIGINT NOT NULL,
    categoria BIGINT NOT NULL,
    
    PRIMARY KEY("id"),
    CONSTRAINT "cat_productos_productos_fk"
    FOREIGN KEY("producto")
    REFERENCES PRODUCTOS("id"),

    CONSTRAINT "cat_productos_categorias_fk"
    FOREIGN KEY("categoria")
    REFERENCES CATEGORIAS("id")
);