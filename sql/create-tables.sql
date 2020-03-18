CREATE EXTENSION postgis;

CREATE USER chuva WITH PASSWORD 'chuva';

--- Municípios cadastrados com dados

CREATE TABLE public.municipios_brasil
(
    fid bigint NOT NULL,
    fid_1 bigint,
    sprarea double precision,
    geocodigo character varying(7) COLLATE pg_catalog."default",
    nome1 character varying(33) COLLATE pg_catalog."default",
    uf character varying(2) COLLATE pg_catalog."default",
    id_uf character varying(2) COLLATE pg_catalog."default",
    regiao character varying(12) COLLATE pg_catalog."default",
    mesoregiao character varying(34) COLLATE pg_catalog."default",
    microregia character varying(36) COLLATE pg_catalog."default",
    latitude double precision,
    longitude double precision,
    sede character varying(7) COLLATE pg_catalog."default",
    ogr_geometry geometry(MultiPolygon,4618),
    CONSTRAINT municipios_brasil_fid_pk PRIMARY KEY (fid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

CREATE INDEX municipios_brasil_ogr_geometry_idx
    ON public.municipios_brasil USING gist
    (ogr_geometry)
    TABLESPACE pg_default;

ALTER TABLE public.municipios_brasil
    OWNER to chuva;

\COPY public.municipios_brasil FROM '/home/abner/data-smh/sqlterrama2postgis/csv/municipios_brasil.csv' DELIMITER ';' CSV HEADER;

--- Análise Climatológica Diária de municípios

CREATE TABLE public.an_municipio_clim_daily
(
    fid bigint,
    execution_date timestamp(3) with time zone,
    maxima double precision,
    media double precision,
    pid_an_municipio_clim_daily integer NOT NULL DEFAULT nextval('an_municipio_clim_daily_pid_an_municipio_clim_daily_seq'::regclass),
    CONSTRAINT an_municipio_clim_daily_pk PRIMARY KEY (pid_an_municipio_clim_daily)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.an_municipio_clim_daily
    OWNER to chuva;

\COPY public.an_municipio_clim_daily FROM '/home/abner/data-smh/sqlterrama2postgis/csv/an_municipio_clim_daily.csv' DELIMITER ';' CSV HEADER;

--- Análise Diária de municípios

CREATE TABLE public.an_municipio_daily
(
    fid bigint,
    execution_date timestamp(3) with time zone,
    anomalia double precision,
    maxima double precision,
    media double precision,
    pid_an_municipio_daily integer NOT NULL DEFAULT nextval('an_municipio_daily_pid_an_municipio_daily_seq'::regclass),
    CONSTRAINT an_municipio_daily_pk PRIMARY KEY (pid_an_municipio_daily)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.an_municipio_daily
    OWNER to chuva;

\COPY public.an_municipio_daily FROM '/home/abner/data-smh/sqlterrama2postgis/csv/an_municipio_daily.csv' DELIMITER ';' CSV HEADER;

--- Análise Climatológica Mensal de Municípios

CREATE TABLE public.an_municipio_clim_monthly
(
    fid bigint,
    execution_date timestamp(3) with time zone,
    maxima double precision,
    media double precision,
    pid_an_municipio_clim_monthly integer NOT NULL DEFAULT nextval('an_municipio_clim_monthly_pid_an_municipio_clim_monthly_seq'::regclass),
    CONSTRAINT an_municipio_clim_monthly_pk PRIMARY KEY (pid_an_municipio_clim_monthly)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.an_municipio_clim_monthly
    OWNER to chuva;

\COPY public.an_municipio_clim_monthly FROM '/home/abner/data-smh/sqlterrama2postgis/csv/an_municipio_clim_monthly.csv' DELIMITER ';' CSV HEADER;

--- Análise Mensal de Municípios

CREATE TABLE public.an_municipio_monthly
(
    fid bigint,
    execution_date timestamp(3) with time zone,
    maxima double precision,
    media double precision,
    pid_an_municipio_monthly integer NOT NULL DEFAULT nextval('an_municipio_monthly_pid_an_municipio_monthly_seq'::regclass),
    anomalia double precision,
    CONSTRAINT an_municipio_monthly_pk PRIMARY KEY (pid_an_municipio_monthly)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.an_municipio_monthly
    OWNER to chuva;

\COPY public.an_municipio_monthly FROM '/home/abner/data-smh/sqlterrama2postgis/csv/an_municipio_monthly.csv' DELIMITER ';' CSV HEADER;