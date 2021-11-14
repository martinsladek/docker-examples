@echo Pass is asdf
@rem PGPASSWORD=asdf 
@rem docker run -it --rm --network mars_bridge_postgres postgres psql -h some-postgres -U postgres
docker run -it --rm --network mars_bridge_postgres postgres bash -c "PGPASSWORD=asdf psql -h some-postgres -U postgres"
