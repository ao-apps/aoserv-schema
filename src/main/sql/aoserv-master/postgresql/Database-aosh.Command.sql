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

select aosh.add_command(
  'add_postgres_database',
  'postgresql',
  'postgres_databases',
  'adds a new PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>datdba</i> <i>encoding</i>',
  '1.0a100',
  '1.26'
);
select aosh.add_command(
  'add_postgres_database',
  'postgresql',
  'postgres_databases',
  'adds a new PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>datdba</i> <i>encoding</i> <i>enable_postgis</i>',
  '1.27',
  null
);
select aosh.add_command(
  'backup_postgres_database',
  'postgresql',
  'postgres_databases',
  'stores a compressed dump of a PostgreSQL database in the backup system',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_postgres_database_name',
  'postgresql',
  'postgres_databases',
  'checks the format of a PostgreSQL database name',
  '<i>database_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'dump_postgres_database',
  'postgresql',
  'postgres_databases',
  'dumps the contents of a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'dump_postgres_database',
  'postgresql',
  'postgres_databases',
  'dumps the contents of a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>gzip</i>',
  '1.80.0',
  null
);
select aosh.add_command(
  'generate_postgres_database_name',
  'postgresql',
  'postgres_databases',
  'generates a unique PostgreSQL database name',
  '<i>template_base</i> <i>template_added</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_postgres_database_name_available',
  'postgresql',
  'postgres_databases',
  'determines if a PostgreSQL database name is available',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_postgres_database',
  'postgresql',
  'postgres_databases',
  'removes a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_postgres_database_backup_retention',
  'postgresql',
  'postgres_databases',
  'sets the backup retention for a PostgreSQL database',
  '<i>database_name</i> <i>postgres_server</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'wait_for_postgres_database_rebuild',
  'postgresql',
  'postgres_databases',
  'waits for any pending or current database config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
