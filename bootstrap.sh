cd terraform
terraform init
terraform apply --auto-approve 
cd ..

METABASE_SETUP_TOKEN=$(curl -s -m 5 -X GET \
    -H "Content-Type: application/json" \
    $METABASE_HOST:$METABASE_PORT/api/session/properties \
    | jq -r '.["setup-token"]'
)

curl -s -X POST \
    -H "Content-type: application/json" \
    http://$METABASE_HOST:$METABASE_PORT/api/setup \
    -d '{
    "token": "'$METABASE_SETUP_TOKEN'",
    "user": {
        "email": "'$METABASE_ADMIN_EMAIL'",
        "first_name": "Admin",
        "last_name": "Admin",
        "password": "'$METABASE_ADMIN_PASSWORD'"
    },
    "prefs": {
        "allow_tracking": false,
        "site_name": "Social Media"
    },
    "database": {
        "name": "Social Media",
        "engine": "postgres",
        "details": {
            "host": "'$POSTGRES_HOST'",
            "port": '$POSTGRES_PORT',
            "dbname": "social_media",
            "user": "'$POSTGRES_VIS_ROLE_NAME'",
            "password": "'$POSTGRES_VIS_ROLE_PASSWORD'",
            "schema-filters-type": "all",
            "ssl": false,
            "tunnel-enabled": false,
            "advanced-options": false
        }
    }
}'