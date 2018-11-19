-- TODO: Review all "sinceVersion" to best match tables in the schemas
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
    '1.0a100',
    null,
    'Accounting',
    false,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'aosh',
    '1.0a100',
    null,
    'AOSH',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'email',
    '1.0a100',
    null,
    'Email',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'dns',
    '1.0a100',
    null,
    'DNS',
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
    '1.0a100',
    null,
    'Schema',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'ticket',
    '1.0a100',
    null,
    'Ticket',
    true,
    null -- Uses pg_catalog.pg_description
);
