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
  'add_business_server',
  'account',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  '1.0a101'
);
select aosh.add_command(
  'add_business_server',
  'account',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i> <i>can_configure_backup</i>',
  '1.0a102',
  '1.30'
);
select aosh.add_command(
  'add_business_server',
  'account',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i>',
  '1.31',
  null
);
select aosh.add_command(
  'remove_business_server',
  'account',
  'business_servers',
  'removes a business'' access to a server',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_default_business_server',
  'account',
  'business_servers',
  'sets the default server for a business',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  null
);
