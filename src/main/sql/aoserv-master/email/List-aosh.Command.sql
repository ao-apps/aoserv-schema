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
  'add_email_list',
  'email',
  'email_lists',
  'adds a new email list',
  '<i>ao_server</i> <i>path</i> <i>username</i> <i>group</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_list_path',
  'email',
  'email_lists',
  'checks the format of an email list path',
  '<i>path</i> [<i>...</i>]',
  '1.0a100',
  '1.80.1'
);
select aosh.add_command(
  'check_email_list_path',
  'email',
  'email_lists',
  'checks the format of an email list path',
  '<i>ao_server</i> <i>path</i>',
  '1.80.2',
  null
);
select aosh.add_command(
  'disable_email_list',
  'email',
  'email_lists',
  'disables an email list',
  '<i>path</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_email_list',
  'email',
  'email_lists',
  'enables an email list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_email_list',
  'email',
  'email_lists',
  'gets the list of addresses for a list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_list',
  'email',
  'email_lists',
  'removes an email list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_email_list',
  'email',
  'email_lists',
  'sets the list of addresses for a list',
  '<i>path</i> <i>ao_server</i> <i>list_contents</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_email_list_backup_retention',
  'email',
  'email_lists',
  'sets the backup retention for a list',
  '<i>path</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
