# Voltron

docker run --name postgresql -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres

docker cp aphpdata.sql postgresql:/docker-entrypoint-initdb.d/dumb.sql

docker exec -u postgres postgresql psql postgres -f docker-entrypoint-initdb.d/dumb.sql

python manage.py inspectdb > modelsaphp.py [nom du fichier de la migration] // Attention install pip install psycopg2 