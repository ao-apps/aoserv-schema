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
  'add_backup_server',
  'net',
  'servers',
  'adds a new backup server',
  '<i>hostname</i> <i>farm</i> <i>owner</i> <i>description</i> <i>architecture</i> <i>backup_hour</i> <i>os_type</i> <i>os_version</i> <i>username</i> <i>password</i> <i>contact_phone</i> <i>contact_email</i>',
  '1.0a102',
  '1.0a107'
);
select aosh.add_command(
  'add_backup_server',
  'net',
  'servers',
  'adds a new backup server',
  '<i>hostname</i> <i>farm</i> <i>owner</i> <i>description</i> <i>backup_hour</i> <i>os_type</i> <i>os_version</i> <i>architecture</i> <i>username</i> <i>password</i> <i>contact_phone</i> <i>contact_email</i>',
  '1.0a108',
  null
);
