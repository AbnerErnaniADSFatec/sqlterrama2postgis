docker pull mdillon/postgis
docker container run --name postgis -p 2303:5432 -d mdillon/postgis
chmod 777 -R /home/abner/sqlterrama2postgis/csv
createdb -h 0.0.0.0 -p 2303 -U postgres chuva "Dados de preciptação"
psql -h 0.0.0.0 -p 2303 -U postgres -d chuva -f sql/create_tables.sql
