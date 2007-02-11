-- 7.2
insert into
    postgres_databases
values(
    1,
    'template0',
    2,
    3,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='7.2')),
    true,
    false,
    0,
    31
);
insert into
    postgres_databases
values(
    2,
    'template1',
    2,
    3,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='7.2')),
    true,
    true,
    2,
    31
);
insert into
    postgres_databases
values(
    3,
    'aoindustries',
    2,
    4,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='7.2')),
    false,
    true,
    2,
    31
);
insert into
    postgres_databases
values(
    4,
    'aoserv_backup',
    2,
    4,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='7.2')),
    false,
    true,
    2,
    31
);
insert into
    postgres_databases
values(
    5,
    'aoweb',
    2,
    4,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='7.2')),
    false,
    true,
    2,
    31
);
insert into
    postgres_databases
values(
    6,
    'aoserv',
    2,
    3,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='7.2')),
    false,
    true,
    1,
    7
);
insert into
    postgres_databases
values(
    7,
    'edrugstore',
    2,
    7,
    (select pkey from postgres_encodings where encoding='LATIN1' and postgres_version=(select version from postgres_versions where minor_version='7.2')),
    false,
    true,
    2,
    7
);
insert into
    postgres_databases
values(
    8,
    'danshome',
    2,
    12,
    (select pkey from postgres_encodings where encoding='SQL_ASCII' and postgres_version=(select version from postgres_versions where minor_version='7.2')),
    false,
    true,
    2,
    31
);
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
    31
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
    31
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
    31
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
    31
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
    31
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
    7
);
insert into
    postgres_databases
values(
    15,
    'edrugstore',
    1,
    20,
    (select pkey from postgres_encodings where encoding='LATIN1' and postgres_version=(select version from postgres_versions where minor_version='8.1')),
    false,
    true,
    2,
    7
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
    31
);
SELECT setval ('"postgres_databases_pkey_seq"', 16, true);
