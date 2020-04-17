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
  'add_linux_group_account',
  'linux',
  'linux_group_accounts',
  'grants a Linux account access to a Linux group',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_group_account',
  'linux',
  'linux_group_accounts',
  'revokes access of a Linux account to a Linux group',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_primary_linux_group_account',
  'linux',
  'linux_group_accounts',
  'sets the primary Linux group associated with a Linux account',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
