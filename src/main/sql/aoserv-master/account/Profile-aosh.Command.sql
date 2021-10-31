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
  'add_business_profile',
  'account',
  'business_profiles',
  'adds a new business profile to a business',
  '<i>business</i> <i>name</i> <i>is_private</i> <i>phone</i> {""|<i>fax</i>} <i>address1</i> {""|<i>address2</i>} <i>city</i> {""|<i>state</i>} <i>country</i> {""|<i>zip</i>} <i>send_invoice</i> <i>billing_contact</i> <i>billing_email</i> <i>technical_contact</i> <i>technical_email</i>',
  '1.0a100',
  '1.81.19'
);
select aosh.add_command(
  'add_business_profile',
  'account',
  'business_profiles',
  'adds a new business profile to a business',
  '<i>business</i> <i>name</i> <i>is_private</i> <i>phone</i> {""|<i>fax</i>} <i>address1</i> {""|<i>address2</i>} <i>city</i> {""|<i>state</i>} <i>country</i> {""|<i>zip</i>} <i>send_invoice</i> <i>billing_contact</i> <i>billing_email</i> <i>billingEmailFormat</i> <i>technical_contact</i> <i>technical_email</i> <i>technicalEmailFormat</i>',
  '1.81.20',
  null
);
