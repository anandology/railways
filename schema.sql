create table station (
    code text primary key,
    name text,
    zone text,
    state text,
    address text,
    latitude real,
    longitude real
);

create table train (
    number text primary key,
    name text,
    type text,
    zone text,
    from_station_code text references station(code),
    from_station_name text,
    to_station_code text references station(code),
    to_station_name text,
    departure text,
    arrival text,
    duration_h real,
    duration_m real,
    distance real,
    return_train text,
    sleeper integer,
    third_ac integer,
    second_ac integer,
    first_ac integer,
    first_class integer,
    chair_car integer
);

