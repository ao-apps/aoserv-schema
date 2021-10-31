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
  'add_interbase_db_group',
  'interbase',
  'interbase_db_groups',
  'adds an InterBase database group to the system',
  '<i>ao_server</i> <i>db_group</i> <i>linux_group</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_interbase_db_group_name',
  'interbase',
  'interbase_db_groups',
  'checks for format of an InterBase database group name',
  '<i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'generate_interbase_db_group_name',
  'interbase',
  'interbase_db_groups',
  'generates a per-server unique InterBase database group name',
  '<i>ao_server</i> <i>template_base</i> <i>template_added</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'is_interbase_db_group_name_available',
  'interbase',
  'interbase_db_groups',
  'determines if an InterBase database group name is available',
  '<i>ao_server</i> <i>db_group</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_db_group',
  'interbase',
  'interbase_db_groups',
  'removes an InterBase database group from the system',
  '<i>ao_server</i> <i>db_group</i>',
  '1.0a100',
  '1.30'
);
