CREATE TABLE public.competencias
(
    "id-competencia" bigserial NOT NULL,
    "id-tipo" integer NOT NULL,
    "id-nombre" bigint NOT NULL,
    nombre character varying NOT NULL,
    sexo bit(1) NOT NULL,
    paralimpico bit(1) NOT NULL,
    "año" integer NOT NULL,
    CONSTRAINT "id-competenciapk" PRIMARY KEY ("id-competencia"),
    CONSTRAINT "id-tipofk" FOREIGN KEY ("id-tipo")
        REFERENCES public."tipo-competencias" (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT "id-nombrefk" FOREIGN KEY ("id-nombre")
        REFERENCES public."nombre-competencias" (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);

ALTER TABLE IF EXISTS public.competencias
    OWNER to postgres;


---INSERTAMOS MUNDIAL DE FUTBOL
INSERT INTO public.competencias(
	 "id-tipo", "id-nombre", nombre, sexo, paralimpico, "año")
		VALUES (1, 3, 'Mundial de futbol 2022', B'0' ,B'1', 2022);