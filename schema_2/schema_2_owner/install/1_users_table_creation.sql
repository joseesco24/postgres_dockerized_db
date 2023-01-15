create table
    schema_1.users (
        internal_id varchar(40),
        estatal_id bigint,
        first_name varchar(50),
        last_name varchar(50),
        phone_number bigint,
        email varchar(50),
        gender varchar(50),
        birthday date,
        creation timestamp
        with
            time zone,
            modification timestamp
        with
            time zone,
            password varchar(64),
            primary key(internal_id),
            unique (estatal_id)
    )