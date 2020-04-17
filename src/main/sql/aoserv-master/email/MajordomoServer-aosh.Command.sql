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
  'add_majordomo_server',
  'email',
  'majordomo_servers',
  'adds a new Majordomo server',
  '<i>domain</i> <i>ao_server</i> <i>linux_account</i> <i>linux_group</i> <i>version</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_majordomo_server',
  'email',
  'majordomo_servers',
  'remvoes a Majordomo server',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_majordomo_server_backup_retention',
  'email',
  'majordomo_servers',
  'sets the backup retention for a Majordomo server',
  '<i>domain</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
