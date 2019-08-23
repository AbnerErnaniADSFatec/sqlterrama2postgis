CREATE TABLE public.an_municipio_monthly
(
    fid bigint,
    execution_date timestamp(3) with time zone,
    ano double precision,
    maxima double precision,
    media double precision,
    mes text COLLATE pg_catalog."default",
    pid_an_municipio_monthly integer NOT NULL,
    CONSTRAINT an_municipio_monthly_pk PRIMARY KEY (pid_an_municipio_monthly)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.an_municipio_monthly
    OWNER to chuva;

COPY public.an_municipio_monthly
    FROM '/csv/an_mensal.csv'
    DELIMITER ';'
    CSV HEADER;