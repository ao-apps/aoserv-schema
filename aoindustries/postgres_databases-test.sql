-- 8.1
insert into
    postgres_databases
values(
    9,
    'template0',
    1,
    16,
    (select pkey from postgres_encodings where encoding='LATIN1' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    true,
    false,
    0,
    31,
    false
);
insert into
    postgres_databases
values(
    10,
    'template1',
    1,
    16,
    (select pkey from postgres_encodings where encoding='LATIN1' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    true,
    true,
    2,
    31,
    false
);
insert into
    postgres_databases
values(
    11,
    'aoindustries',
    1,
    17,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    false,
    true,
    2,
    31,
    false
);
insert into
    postgres_databases
values(
    12,
    'aoserv_backup',
    1,
    17,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    false,
    true,
    2,
    31,
    false
);
insert into
    postgres_databases
values(
    13,
    'aoweb',
    1,
    17,
    (select pkey from postgres_encodings where encoding='UTF8' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    false,
    true,
    2,
    31,
    false
);
insert into
    postgres_databases
values(
    14,
    'aoserv',
    1,
    16,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    false,
    true,
    1,
    7,
    false
);
insert into
    postgres_databases
values(
    17,
    'edrugstore',
    1,
    27,
    (select pkey from postgres_encodings where encoding='UTF8' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    false,
    true,
    2,
    7,
    false
);
insert into
    postgres_databases
values(
    18,
    'edrugstore_sessions',
    1,
    27,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    false,
    true,
    2,
    7,
    false
);
insert into
    postgres_databases
values(
    16,
    'danshome',
    1,
    24,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    false,
    true,
    2,
    31,
    false
);
SELECT setval ('"postgres_databases_pkey_seq"', 17, true);
