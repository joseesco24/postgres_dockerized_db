#!/bin/bash

# Schema 1.

# Postgres (root)
FILE=/home/build/schema_1/postgres/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W postgres -U postgres -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# Objects Owner
FILE=/home/build/schema_1/schema_1_owner/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_1_owner -U schema_1_owner -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# Develop population
FILE=/home/build/schema_1/schema_1_user/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_1_user -U schema_1_user -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# Schema 2.

# Postgres (root)
FILE=/home/build/schema_2/postgres/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W postgres -U postgres -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# Objects Owner
FILE=/home/build/schema_2/schema_2_owner/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_2_owner -U schema_2_owner -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# Develop population
FILE=/home/build/schema_2/schema_2_user/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_2_user -U schema_2_user -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi
