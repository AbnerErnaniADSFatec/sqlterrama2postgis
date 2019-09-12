docker pull mdillon/postgis
docker container run --name postgis -p 2303:5432 -d mdillon/postgis
chmod 777 -R /home/abner/sqlterrama2postgis/csv
createdb -h 0.0.0.0 -p 2303 -U postgres chuva "Dados de preciptação"
psql -h 0.0.0.0 -p 2303 -U postgres -c "CREATE USER chuva WITH PASSWORD 'chuva'"
psql -h 0.0.0.0 -p 2303 -U postgres -d chuva -c "CREATE EXTENSION postgis"
psql -h 0.0.0.0 -p 2303 -U postgres -d chuva -f sql/create_table_cities.sql
psql -h 0.0.0.0 -p 2303 -U postgres -d chuva -f sql/create_table_analysis_clim.sql
psql -h 0.0.0.0 -p 2303 -U postgres -d chuva -f sql/create_table_analysis_month.sql
