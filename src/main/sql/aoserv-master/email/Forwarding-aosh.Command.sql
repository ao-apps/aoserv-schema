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
  'add_email_forwarding',
  'email',
  'email_forwarding',
  'attaches a forwarding address to an email address',
  '<i>from_address</i> <i>ao_server</i> <i>to_address</i> [<i>from_address</i> <i>ao_server</i> <i>to_address</i>]...',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_forwarding',
  'email',
  'email_forwarding',
  'checks the format of a the destination for email forwarding',
  '<i>from_address</i> <i>to_address</i> [<i>from_address</i> <i>to_address</i>]...',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'remove_email_forwarding',
  'email',
  'email_forwarding',
  'detaches a forwarding address from an email address',
  '<i>from_address</i> <i>ao_server</i> <i>to_address</i>',
  '1.0a100',
  null
);
