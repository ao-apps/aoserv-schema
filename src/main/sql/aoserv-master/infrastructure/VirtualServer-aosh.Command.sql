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
  'create_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl create" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'reboot_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl reboot" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'shutdown_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl shutdown" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'destroy_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl destroy" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'pause_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl pause" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'unpause_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl unpause" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'get_primary_physical_server',
  'infrastructure',
  'virtual_servers',
  'gets the physical server that is currently the primary node for this virtual server',
  '<i>virtual_server</i>',
  '1.73',
  null
);
select aosh.add_command(
  'get_secondary_physical_server',
  'infrastructure',
  'virtual_servers',
  'gets the physical server that is currently the secondary node for this virtual server',
  '<i>virtual_server</i>',
  '1.73',
  null
);
select aosh.add_command(
  'get_virtual_server_status',
  'infrastructure',
  'virtual_servers',
  'calls "xl list" to get the current state on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
