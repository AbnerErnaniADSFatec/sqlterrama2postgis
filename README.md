# SQL Terrama2 PostGIS

Scripts em SQL para criar as tabelas e migrar os dados para um banco com a extensão para dados geográficos PostGIS e executar em um container docker.
- [Download CSV's](https://fatecspgov-my.sharepoint.com/:u:/g/personal/abner_anjos_fatec_sp_gov_br/Ec4T9053xslMugFEhx9suA4BjeTKcMCuRLrgot0rr41SfQ?e=59FdVw) para a criação do ambiente descrito no repositório
- [API Python Flask](https://github.com/AbnerErnaniADSFatec/pythonflaskdocker) para a leitura dos dados de backup

# Ambiente necessário

PostgreSQL e Docker instalados, descompactar e salvar a pasta `csv.zip` do drive na pasta root do projeto e alterar o usuário no script de criação em SQL.

# Executar a aplicação e migrar os dados do banco
```
$ sudo chmod 777 install.sh && ./install
```

# Apagar todos os containers e imagens criados acima

```
$ sudo chmod 777 danger.sh && ./danger.sh
```
