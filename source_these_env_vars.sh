 echo ""
 echo "/etc/hosts must have an entry for db set to localhost"
 echo ""
 echo "Run following command to initialize env vars"
 echo "source ./source_these_env_vars.sh"
 echo ""
 export PGHOST=db
 export PGDATABASE=postgres
 export PGUSER=postgres
 export PGPASSWORD=postgres
