# SQL Terrama2 PostGIS

Scripts em SQL para criar as tabelas e migrar os dados para um banco com a extensão para dados geográficos PostGIS e executar em um container docker.

# Ambiente necessário

PostgreSQL e Docker instalados.

# Criar um volume para guardar os dados
```
$ docker create volume database_vol
```

# Criar a imagem docker
```
$ docker build -t database:latest .
```

# Executar em um container
```
$ docker container run --name database -d -v database_vol:'//your_data' -p 5434:5432 database:latest
```