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
  'add_majordomo_list',
  'email',
  'majordomo_lists',
  'adds a new Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_majordomo_list_name',
  'email',
  'majordomo_lists',
  'checks the format of a Majordomo list name',
  '<i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_majordomo_info_file',
  'email',
  'majordomo_lists',
  'gets the info file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_majordomo_intro_file',
  'email',
  'majordomo_lists',
  'gets the intro file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_majordomo_info_file',
  'email',
  'majordomo_lists',
  'sets the info file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i> <i>file</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_majordomo_intro_file',
  'email',
  'majordomo_lists',
  'sets the intro file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i> <i>file</i>',
  '1.0a100',
  null
);
