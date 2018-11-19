insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'public',
    '1.0a100',
    null,
    'Public',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'accounting',
    '1.81.18',
    null,
    'Accounting',
    false,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'aosh',
    '1.81.18',
    null,
    'AOSH',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'management',
    '1.81.18',
    null,
    'Management',
    false,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'monitoring',
    '1.81.18',
    null,
    'Monitoring',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'schema',
    '1.81.18',
    null,
    'Schema',
    true,
    null -- Uses pg_catalog.pg_description
);
