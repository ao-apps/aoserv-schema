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
  'add_email_domain',
  'email',
  'email_domains',
  'adds a new email domain',
  '<i>domain</i> <i>ao_server</i> <i>package</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_domain',
  'email',
  'email_domains',
  'checks the format of an email domain',
  '<i>domain</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_email_domain_available',
  'email',
  'email_domains',
  'checks the availability of an email domain',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_domain',
  'email',
  'email_domains',
  'removes an email domain and all associated email addresses',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
