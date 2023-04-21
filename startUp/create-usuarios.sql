--USE leadMagnetPro;

CREATE TABLE "usuarios" (
    "id" BIGSERIAL NOT NULL ,
    "nombre" VARCHAR(30) NOT NULL,
    "apellidos" VARCHAR(40) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "contraseña"  VARCHAR(61) NOT NULL,
    "role" VARCHAR(5) NOT NULL,
    "negocio_id" BIGINT NOT NULL,
    "fecha" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("id"),
    CONSTRAINT "usuarios_negocios_fk"
    FOREIGN KEY("negocio_id")
    REFERENCES Negocios("id")
);

CREATE TABLE "ventas"(
    id BIGSERIAL NOT NULL,
    usuario_id BIGINT NOT NULL,
    activo BOOLEAN NOT NULL,
    fecha_final TIMESTAMP NOT NULL,
    fecha_venta TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    valor DECIMAL(5,2)   NOT NULL,
    pais VARCHAR(20),
    instance_id VARCHAR(30),
    servicio VARCHAR(20),
   -- descripcion TEXT NOT NULL,
    PRIMARY KEY("id"),
    CONSTRAINT "ventas_usuarios_fk"
    FOREIGN KEY("usuario_id")
    REFERENCES USUARIOS("id")
);

/*
CREATE TABLE 'info_usuarios'(
    id_info BIGINT NOT NULL AUTO_INCREMENT,
    id_usuario BIGINT NOT NULL,
    tipo_doc CHAR(2) NOT NULL,
    num_doc VARCHAR(12) NOT NULL,
    img VARCHAR NOT NULL,
    auth BOOLEAN NOT NULL DEFAULT 0,
    PRIMARY KEY(id_info''),
    CONSTRAINT 'info_usuarios_usuarios_fk'
        FOREIGN KEY ('id_usuario')
        REFERENCES USUARIOS ('id')
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;
*/