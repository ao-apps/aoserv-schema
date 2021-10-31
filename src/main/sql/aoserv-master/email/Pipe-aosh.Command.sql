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
  'add_email_pipe',
  'email',
  'email_pipes',
  'adds a new email pipe',
  '<i>ao_server</i> <i>path</i> <i>package</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'add_email_pipe',
  'email',
  'email_pipes',
  'adds a new email pipe',
  '<i>ao_server</i> <i>command</i> <i>package</i>',
  '1.80.0',
  null
);
select aosh.add_command(
  'disable_email_pipe',
  'email',
  'email_pipes',
  'disables an email pipe',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_email_pipe',
  'email',
  'email_pipes',
  'enables an email pipe',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_pipe',
  'email',
  'email_pipes',
  'removes an email pipe',
  '<i>pipe_pkey</i>',
  '1.0a100',
  null
);
