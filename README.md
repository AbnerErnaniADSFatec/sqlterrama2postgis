# SQL Terrama2 PostGIS

Scripts em SQL para criar as tabelas e migrar os dados para um banco com a extensão para dados geográficos PostGIS e executar em um container docker.

# Ambiente necessário

PostgreSQL e Docker instalados.

# Executar a aplicação e migrar os dados do banco
```
$ sudo chmod 777 install.sh && ./install
```

# Apagar todos os containers e imagens criados acima

```
$ sudo chmod 777 danger.sh && ./danger.sh
```
