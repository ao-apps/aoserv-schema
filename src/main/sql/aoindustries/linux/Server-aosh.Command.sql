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
  'get_mrtg_file',
  'linux',
  'ao_servers',
  'gets a file from the MRTG report directory',
  '<i>ao_server</i> <i>filename</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_ups_status',
  'linux',
  'ao_servers',
  'gets the status of the UPS powering this server',
  '<i>ao_server</i>',
  '1.63',
  null
);
select aosh.add_command(
  'restart_apache',
  'linux',
  'ao_servers',
  'restarts the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_cron',
  'linux',
  'ao_servers',
  'restarts the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_interbase',
  'linux',
  'ao_servers',
  'restarts the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'restart_mysql',
  'linux',
  'ao_servers',
  'restarts the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'restart_xfs',
  'linux',
  'ao_servers',
  'restarts the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_xvfb',
  'linux',
  'ao_servers',
  'restarts the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_apache',
  'linux',
  'ao_servers',
  'starts the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_cron',
  'linux',
  'ao_servers',
  'starts the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_interbase',
  'linux',
  'ao_servers',
  'starts the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'start_mysql',
  'linux',
  'ao_servers',
  'starts the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'start_xfs',
  'linux',
  'ao_servers',
  'starts the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_xvfb',
  'linux',
  'ao_servers',
  'starts the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_apache',
  'linux',
  'ao_servers',
  'stops the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_cron',
  'linux',
  'ao_servers',
  'stops the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_interbase',
  'linux',
  'ao_servers',
  'stops the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'stop_mysql',
  'linux',
  'ao_servers',
  'stops the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'stop_xfs',
  'linux',
  'ao_servers',
  'stops the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_xvfb',
  'linux',
  'ao_servers',
  'stops the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
