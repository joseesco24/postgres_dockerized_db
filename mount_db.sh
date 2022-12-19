#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------
# ** info: schema 1 installation
# ---------------------------------------------------------------------------------------------------------------------

# ** info: installations using postgres/root user
FILE=/home/build/schema_1/postgres/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W postgres -U postgres -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 1 owner user
FILE=/home/build/schema_1/schema_1_owner/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_1_owner -U schema_1_owner -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 1 user
FILE=/home/build/schema_1/schema_1_user/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_1_user -U schema_1_user -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ---------------------------------------------------------------------------------------------------------------------
# ** info: schema 2 installation
# ---------------------------------------------------------------------------------------------------------------------

# ** info: installations using postgres/root user
FILE=/home/build/schema_2/postgres/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W postgres -U postgres -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 2 owner user
FILE=/home/build/schema_2/schema_2_owner/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_2_owner -U schema_2_owner -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 2 user
FILE=/home/build/schema_2/schema_2_user/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_2_user -U schema_2_user -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi
