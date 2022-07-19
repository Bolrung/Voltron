# Voltron

## Create bd postgres 

docker run --name postgresql -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres

## copier fichier aphpdata.sql dans le container

docker cp aphpdata.sql postgresql:/docker-entrypoint-initdb.d/dumb.sql

## Cree table dans le postgres
docker exec -u postgres postgresql psql postgres -f docker-entrypoint-initdb.d/dumb.sql

## lier django au container 
// Attention au autres base de donnes qui tournent \\
modifier setting.py au niveau de la DATABASES

## Recuperer les models  
python manage.py inspectdb > modelsaphp.py [nom du fichier de la migration] // Attention install pip install psycopg2 