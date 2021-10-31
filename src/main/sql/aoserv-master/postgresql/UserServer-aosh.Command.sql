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
  'add_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'adds a PostgreSQL user to a server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'disables a PostgreSQL account on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'enables a PostgreSQL account on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_postgres_server_user_password_set',
  'postgresql',
  'postgres_server_users',
  'determines if a PostgreSQL account password is set',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'removes a PostgreSQL user from a server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_postgres_server_user_password',
  'postgresql',
  'postgres_server_users',
  'sets the password for a PostgreSQL user on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
