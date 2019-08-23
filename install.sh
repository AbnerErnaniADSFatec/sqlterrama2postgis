docker pull mdillon/postgis
docker container run --name postgis -p 2303:5432 -d mdillon/postgis
chmod 777 /home/abner/sqlterrama2postgis/csv
chmod 777 /home/abner/sqlterrama2postgis/csv/an_clim_mensal.csv
chmod 777 /home/abner/sqlterrama2postgis/csv/an_mensal.csv
chmod 777 /home/abner/sqlterrama2postgis/csv/municipios_brasil.csv
createdb -h 0.0.0.0 -p 2303 -U postgres data "Dados de preciptação"
psql -h 0.0.0.0 -p 2303 -U postgres -c "CREATE USER chuva WITH PASSWORD 'chuva'"
psql -h 0.0.0.0 -p 2303 -U postgres -d data -c "CREATE EXTENSION postgis"
psql -h 0.0.0.0 -p 2303 -U postgres -d data -f sql/create_table_cities.sql
psql -h 0.0.0.0 -p 2303 -U postgres -d data -f sql/create_table_analysis_clim.sql
psql -h 0.0.0.0 -p 2303 -U postgres -d data -f sql/create_table_analysis_month.sql