Set up a postgresql db

createdb ze_chat
createuser --no-super --no-createrole --createdb ze_chat
psql
ALTER ROLE ze_chat password 'blarg';
