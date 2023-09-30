create table
    tv_programation (
        programation_id varchar(40),
        channel_id integer not null,
        channel_name varchar(200) not null,
        channel_content_type varchar(200) not null,
        start_houre time without time zone not null,
        end_houre time without time zone not null,
        weeks integer [] not null,
        days integer [] not null,
        year integer not null,
        creation timestamp with time zone default now(),
        modification timestamp with time zone default now(),
        primary key (programation_id)
    );
