-- TODO: Review all "sinceVersion" to best match tables in the schemas
select "schema".add_schema(
    'account',
    '1.0a100',
    null,
    'Account',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'accounting',
    '1.0a100',
    null,
    'Accounting',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'aosh',
    '1.0a100',
    null,
    'AOSH',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'backup',
    '1.0a100',
    null,
    'Backup',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'billing',
    '1.0a100',
    null,
    'Billing',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'distribution',
    '1.0a100',
    null,
    'Distribution',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'dns',
    '1.0a100',
    null,
    'DNS',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'email',
    '1.0a100',
    null,
    'Email',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'ftp',
    '1.0a100',
    null,
    'FTP',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'infrastructure',
    '1.0a100',
    null,
    'Infrastructure',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'interbase',
    '1.0a100',
    '1.30',
    'InterBase',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'linux',
    '1.0a100',
    null,
    'Linux',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'management',
    '1.0a100',
    null,
    'Management',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'master',
    '1.0a100',
    null,
    'Master',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'monitoring',
    '1.0a100',
    null,
    'Monitoring',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'mysql',
    '1.0a100',
    null,
    'MySQL',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'net',
    '1.0a100',
    null,
    'Net',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'net/reputation',
    '1.65',
    null,
    'Reputation',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'payment',
    '1.0a100',
    null,
    'Payment',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'pki',
    '1.23',
    null,
    'PKI',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'postgresql',
    '1.0a100',
    null,
    'PostgreSQL',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'profile',
    '1.0a100',
    '1.76',
    'Profile',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'reseller',
    '1.0a100',
    null,
    'Reseller',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'schema',
    '1.0a100',
    null,
    'Schema',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'scm',
    '1.0a100',
    null,
    'SCM',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'signup',
    '1.0a100',
    null,
    'Signup',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'ticket',
    '1.0a100',
    null,
    'Ticket',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'web',
    '1.0a100',
    null,
    'Web',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'web/jboss',
    '1.0a100',
    null,
    'JBoss',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'web/tomcat',
    '1.0a100',
    null,
    'Tomcat',
    true,
    null -- Uses pg_catalog.pg_description
);
