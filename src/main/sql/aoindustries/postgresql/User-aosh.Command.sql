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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

select aosh.add_command(
  'add_postgres_user',
  'postgresql',
  'postgres_users',
  'adds a PostgreSQL user to the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'are_postgres_user_passwords_set',
  'postgresql',
  'postgres_users',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a PostgreSQL account are set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_postgres_password',
  'postgresql',
  'postgres_users',
  'checks the format of a password for a PostgreSQL user',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_postgres_username',
  'postgresql',
  'postgres_users',
  'checks the format of a PostgreSQL username',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_postgres_user',
  'postgresql',
  'postgres_users',
  'disables a PostgreSQL account on all servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_postgres_user',
  'postgresql',
  'postgres_users',
  'enables a PostgreSQL account on all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_postgres_user',
  'postgresql',
  'postgres_users',
  'removes a PostgreSQL user from the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_postgres_user_password',
  'postgresql',
  'postgres_users',
  'sets the password for a PostgreSQL user on all servers',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'wait_for_postgres_user_rebuild',
  'postgresql',
  'postgres_users',
  'waits for any pending or current database user config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
