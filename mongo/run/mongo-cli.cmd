echo db.getName();
docker run -it --rm --network mars_bridge_mongo mongo ^
    mongo --host some-mongo ^
        -u mongoadmin ^
        -p secret ^
        --authenticationDatabase admin ^
        some-db
:: > db.getName();
:: some-db
