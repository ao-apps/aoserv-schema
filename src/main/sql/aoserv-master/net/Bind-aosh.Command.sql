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
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>ao_server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> {""|<i>monitoring_delay</i>} {""|<i>monitoring_parameter</i>} {""|<i>monitoring_contact</i>} {""|<i>monitoring_info</i>}',
  '1.0a100',
  '1.0a103'
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>ao_server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> <i>monitoring_enabled</i>',
  '1.0a104',
  '1.32'
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> <i>monitoring_enabled</i>',
  '1.33',
  '1.80.2'
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>monitoring_enabled</i> [<i>firewalld_zone</i>] [...]',
  '1.81.0',
  null
);
select aosh.add_command(
  'remove_net_bind',
  'net',
  'net_binds',
  'removes a net binds from the system',
  '<i>pkey</i>',
  '1.0a104',
  null
);
select aosh.add_command(
  'set_net_bind_firewalld_zones',
  'net',
  'net_binds',
  'sets the enabled firewalld zones for this port',
  '<i>pkey</i> [<i>firewalld_zone</i>] [...]',
  '1.81.0',
  null
);
select aosh.add_command(
  'set_net_bind_monitoring_enabled',
  'net',
  'net_binds',
  'enables or disables the monitoring of this port',
  '<i>pkey</i> <i>enabled</i>',
  '1.0a105',
  null
);
select aosh.add_command(
  'set_net_bind_open_firewall',
  'net',
  'net_binds',
  'opens or closes the firewall filters associated with this port',
  '<i>pkey</i> <i>open_firewall</i>',
  '1.0a105',
  '1.80.2'
);
