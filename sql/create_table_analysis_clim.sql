CREATE TABLE public.an_municipio_merge_monthly
(
    fid bigint,
    execution_date timestamp(3) with time zone,
    maxima double precision,
    media double precision,
    mes text COLLATE pg_catalog."default",
    pid_an_municipio_merge_monthly integer NOT NULL,
    CONSTRAINT an_municipio_merge_monthly_pk PRIMARY KEY (pid_an_municipio_merge_monthly)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.an_municipio_merge_monthly
    OWNER to chuva;

COPY public.an_municipio_merge_monthly
    FROM '/csv/an_clim_mensal.csv'
    DELIMITER ';'
    CSV HEADER;