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
  'add_business',
  'account',
  'businesses',
  'adds a new business to the system',
  '<i>accounting_code</i> <i>contract_version</i> <i>default_server</i> <i>parent_business</i> <i>can_add_businesses</i> <i>bill_parent</i>',
  '1.0a100',
  '1.0a101'
);
select aosh.add_command(
  'add_business',
  'account',
  'businesses',
  'adds a new business to the system',
  '<i>accounting_code</i> <i>contract_version</i> <i>default_server</i> <i>parent_business</i> <i>can_add_backup_server</i> <i>can_add_businesses</i> <i>bill_parent</i>',
  '1.0a102',
  '1.0a102'
);
select aosh.add_command(
  'add_business',
  'account',
  'businesses',
  'adds a new business to the system',
  '<i>accounting_code</i> <i>contract_version</i> <i>default_server</i> <i>parent_business</i> <i>can_add_backup_server</i> <i>can_add_businesses</i> <i>can_see_prices</i> <i>bill_parent</i>',
  '1.0a103',
  null
);
select aosh.add_command(
  'cancel_business',
  'account',
  'businesses',
  'cancels a business',
  '<i>accounting_code</i> <i>cancel_reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_accounting',
  'account',
  'businesses',
  'checks the format of an accounting code',
  '<i>accounting_code</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_business',
  'account',
  'businesses',
  'disables a business and everything in it, except its business administrators',
  '<i>accounting</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_business',
  'account',
  'businesses',
  'enables a business and everything in it',
  '<i>accounting</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_accounting',
  'account',
  'businesses',
  'generates a unique accounting code based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_root_business',
  'account',
  'businesses',
  'gets the name of the root business in the business tree',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_accounting_available',
  'account',
  'businesses',
  'checks the availability of an accounting code',
  '<i>accounting_code</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'move_business',
  'account',
  'businesses',
  'moves all of the resources for one business from one server to another server',
  '<i>business</i> <i>from_ao_server</i> <i>to_ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_business_accounting',
  'account',
  'businesses',
  'changes the accounting code that uniquely identifies a business',
  '<i>old_accounting</i> <i>new_accounting</i>',
  '1.0a100',
  null
);
