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
    'account',
    '1.0a100',
    null,
    'Account',
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
    'backup',
    '1.0a100',
    null,
    'Backup',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'billing',
    '1.0a100',
    null,
    'Billing',
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
    'ftp',
    '1.0a100',
    null,
    'FTP',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'httpd',
    '1.0a100',
    null,
    'Httpd',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'infrastructure',
    '1.0a100',
    null,
    'Infrastructure',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'interbase',
    '1.0a100',
    '1.30',
    'InterBase',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'linux',
    '1.0a100',
    null,
    'Linux',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'management',
    '1.0a100',
    null,
    'Management',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'monitoring',
    '1.0a100',
    null,
    'Monitoring',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'mysql',
    '1.0a100',
    null,
    'MySQL',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'net',
    '1.0a100',
    null,
    'Net',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'payment',
    '1.0a100',
    null,
    'Payment',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'postgresql',
    '1.0a100',
    null,
    'PostgreSQL',
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
    'scm',
    '1.0a100',
    null,
    'SCM',
    true,
    null -- Uses pg_catalog.pg_description
);
insert into "schema"."Schema" values(
    (select count(*) from "schema"."Schema"),
    'tls',
    '1.81.10',
    null,
    'TLS',
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
