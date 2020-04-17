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
  'add_linux_account',
  'linux',
  'linux_accounts',
  'adds a new Linux account',
  '<i>username</i> <i>primary_group</i> <i>full_name</i> {""|<i>office_location</i>} {""|<i>office_phone</i>} {""|<i>home_phone</i>} <i>type</i> <i>shell</i>',
  '1.0a100',
  '1.80.0'
);
select aosh.add_command(
  'add_linux_account',
  'linux',
  'linux_accounts',
  'adds a new Linux account',
  '<i>username</i> <i>primary_group</i> {""|<i>full_name</i>} {""|<i>office_location</i>} {""|<i>office_phone</i>} {""|<i>home_phone</i>} <i>type</i> <i>shell</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'are_linux_account_passwords_set',
  'linux',
  'linux_accounts',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a Linux account are set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_linux_account_name',
  'linux',
  'linux_accounts',
  'checks the format of a Linux account full name',
  '<i>full_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_linux_account_password',
  'linux',
  'linux_accounts',
  'checks the format of a password for a Linux account',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_linux_account_username',
  'linux',
  'linux_accounts',
  'checks the format of a Linux account username',
  '<i>username</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'disable_linux_account',
  'linux',
  'linux_accounts',
  'disables a Linux account and removes its access to all servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_linux_account',
  'linux',
  'linux_accounts',
  'enables a Linux account and restores its access to all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_password',
  'linux',
  'linux_accounts',
  'generates a random, valid password',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_account',
  'linux',
  'linux_accounts',
  'removes a Linux account from all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_home_phone',
  'linux',
  'linux_accounts',
  'sets the home phone number for a Linux account',
  '<i>username</i> {""|<i>phone_number</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_name',
  'linux',
  'linux_accounts',
  'sets the full name for a Linux account',
  '<i>username</i> <i>full_name</i>',
  '1.0a100',
  '1.80.0'
);
select aosh.add_command(
  'set_linux_account_name',
  'linux',
  'linux_accounts',
  'sets the full name for a Linux account',
  '<i>username</i> {""|<i>full_name</i>}',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_linux_account_office_location',
  'linux',
  'linux_accounts',
  'sets the office location for a Linux account',
  '<i>username</i> {""|<i>location</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_office_phone',
  'linux',
  'linux_accounts',
  'sets the office phone number for a Linux account',
  '<i>username</i> {""|<i>phone_number</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_password',
  'linux',
  'linux_accounts',
  'sets the password for a Linux account on all servers',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_account_shell',
  'linux',
  'linux_accounts',
  'sets the shell used by a Linux account',
  '<i>username</i> <i>shell</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'wait_for_linux_account_rebuild',
  'linux',
  'linux_accounts',
  'waits for any pending or current server config rebuild to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
