USE demo3;

CREATE TABLE `profesor`(
    `doc_prof` VARCHAR(11) NOT NULL,
    `nom_prof` VARCHAR(30) NOT NULL,
    `ape_prof` VARCHAR(30) NOT NULL,
    `cate_prof` INT NOT NULL,
    `sal_prof` INT NOT NULL,
    PRIMARY KEY(`doc_prof`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `estudiante`(
    `doc_est` VARCHAR(11) NOT NULL,
    `nom_est` VARCHAR(30) NOT NULL,
    `ape_est` VARCHAR(30) NOT NULL,
    `edad_est` INT NOT NULL,
    PRIMARY KEY(`doc_est`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `curso`(
    `cod_curs` INT AUTO_INCREMENT NOT NULL,
    `nom_curs` VARCHAR(100) NOT NULL,
    `horas_curs` INT NOT NULL,
    `valor_curs` INT NOT NULL,
    PRIMARY KEY(`cod_curs`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `estudianteexcurso`(
    `cod_curs_estcur` INT NOT NULL,
    `doc_est_escur` VARCHAR(11) NOT NULL,
    `fec_ini_estcur` DATE,
    PRIMARY KEY(`cod_curs_estcur`,`doc_est_escur`),
    CONSTRAINT `fk_estudianteexcurso_curso`
        FOREIGN KEY(`cod_curs_estcur`)
        REFERENCES curso (`cod_curs`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_estudianteexcurso_estudiante`
        FOREIGN KEY(`doc_est_escur`)
        REFERENCES estudiante (`doc_est`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `cliente`(
    `id_cli` VARCHAR(11) NOT NULL,
    `nom_cli`  VARCHAR(30) NOT NULL,
    `ape_cli` VARCHAR(30) NOT NULL,
    `dir_cli` VARCHAR(100) NOT NULL,
    `dep_cli` VARCHAR(20) NOT NULL,
    `mes_cum_cli` VARCHAR(10) NOT NULL,
    PRIMARY KEY(`id_cli`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `pedido`(
    `id_ped` INT AUTO_INCREMENT ,
    `id_cli_ped` VARCHAR(11) NOT NULL,
    `fec_ped` DATE NOT NULL,
    `val_ped` INT,
    PRIMARY KEY(`id_ped`),
    CONSTRAINT `fk_id_cli_ped_cliente`
        FOREIGN KEY(`id_cli_ped`)
        REFERENCES cliente(`id_cli`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `compañia`(
    `comnit` VARCHAR(11) NOT NULL,
    `comnombre` VARCHAR(30) NOT NULL,
    `comañofun` INT NOT NULL,
    `comreplegal` VARCHAR(100) NOT NULL,
    PRIMARY KEY(`comnit`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tiposAutomotores`(
    `auttipo` INT AUTO_INCREMENT,
    `autnombre` VARCHAR(30) NOT NULL,
    PRIMARY KEY(`auttipo`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `articulo`(
    `id_art` INT AUTO_INCREMENT,
    `tit_art` VARCHAR(100) NOT NULL,
    `aut_art` VARCHAR(100) NOT NULL,
    `edi_art` VARCHAR(300),
    `preci_art` INT NOT NULL,
    PRIMARY KEY(`id_art`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `articuloxpedido`(
    `id_ped_artped` INT,
    `id_art_artped` INT,
    `can_art_artped` INT NOT NULL,
    `val_ven_art_artped` INT NOT NULL,
    PRIMARY KEY(`id_ped_artped`,`id_art_artped`),
    CONSTRAINT `fk_id_ped_artped_pedido`
        FOREIGN KEY(`id_ped_artped`)
        REFERENCES pedido(`id_ped`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_id_art_artped_articulo`
        FOREIGN KEY(`id_art_artped`)
        REFERENCES articulo(`id_art`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `automotores`(
    `autoplaca` VARCHAR(6) NOT NULL,
    `automarca` VARCHAR(30) NOT NULL,
    `autotipo` INT,
    `automodelo` INT NOT NULL,
    `autopasajeros` INT,
    `autocilindraje` INT,
    `autonumchasis` INT,
    PRIMARY KEY(`autoplaca`),
     CONSTRAINT `fk_TIPO_AUTOMOTOR`
        FOREIGN KEY(`autotipo`)
        REFERENCES tiposAutomotores(`auttipo`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `aseguramientos`(
    `asecodigo` INT AUTO_INCREMENT,
    `asefechainicio` DATE NOT NULL,
    `asefechaexpiracion` DATE NOT NULL,
    `asevalorasegurado` INT NOT NULL,
    `aseestado` VARCHAR(30) NOT NULL,
    `asecosto` INT NOT NULL,
    `aseplaca` VARCHAR(6) NOT NULL,
    PRIMARY KEY(`asecodigo`),
    CONSTRAINT `FK_ASEGURAMIENTOS_AUTOMOTORES`
        FOREIGN KEY(`aseplaca`)
        REFERENCES automotores(`autoplaca`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `incidentes`(
    `incicodigo` INT AUTO_INCREMENT,
    `incifecha` DATE NOT NULL,
    `inciplaca` VARCHAR(6) NOT NULL,
    `incilugar` VARCHAR(40) NOT NULL,
    `inciantheridos` INT NOT NULL,
    `incicanfatalidades` INT NOT NULL,
    `incicanautosinvolucrados` INT NOT NULL,
    PRIMARY KEY(`incicodigo`),
    CONSTRAINT `FK_INCIDENTES_AUTOMOTORES`
        FOREIGN KEY(`inciplaca`)
        REFERENCES automotores(`autoplaca`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;