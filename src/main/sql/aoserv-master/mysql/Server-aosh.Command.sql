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
  'check_mysql_server_name',
  'mysql',
  'mysql_servers',
  'checks the format of a MySQL server name',
  '<i>name</i>',
  '1.4',
  null
);
select aosh.add_command(
  'is_mysql_server_name_available',
  'mysql',
  'mysql_servers',
  'determines if a MySQL server name is available',
  '<i>server_name</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'restart_mysql',
  'mysql',
  'mysql_servers',
  'restarts the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'start_mysql',
  'mysql',
  'mysql_servers',
  'starts the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'stop_mysql',
  'mysql',
  'mysql_servers',
  'stops the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'wait_for_mysql_server_rebuild',
  'mysql',
  'mysql_servers',
  'waits for any pending or current database server config rebuilds to complete',
  '<i>ao_server</i>',
  '1.4',
  null
);
