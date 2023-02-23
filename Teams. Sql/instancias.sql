CREATE TABLE public.instancias
(
    "id-instancia" bigserial NOT NULL,
    instancia "char",
    CONSTRAINT "id-instanciapk" PRIMARY KEY ("id-instancia")
);

ALTER TABLE IF EXISTS public.instancias
    OWNER to postgres;

----insertar
INSERT INTO public.instancias(
	 instancia)
	VALUES ('Cuartos de final');

INSERT INTO public.instancias(
	 instancia)
	VALUES ('Octavos de final');

INSERT INTO public.instancias(
	 instancia)
	VALUES ('Final');

INSERT INTO public.instancias(
	 instancia)
	VALUES ('Cuadrangulares');