/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

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
    'distribution.management',
    '1.0a100',
    null,
    'Management',
    false,
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
    '1.30',
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
    'net.monitoring',
    '1.81.18',
    null,
    'Monitoring',
    false,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'net.reputation',
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
    '1.44',
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
    '1.23',
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
    'web.jboss',
    '1.0a100',
    null,
    'JBoss',
    true,
    null -- Uses pg_catalog.pg_description
);
select "schema".add_schema(
    'web.tomcat',
    '1.0a100',
    null,
    'Tomcat',
    true,
    null -- Uses pg_catalog.pg_description
);
