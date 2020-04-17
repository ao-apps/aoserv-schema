/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2008, 2009, 2010, 2012, 2013, 2014, 2015, 2017, 2018, 2020  AO Industries, Inc.
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

-- These commands are not associated with any table.  The per-table commands are
-- split into per-table files named "*-aosh.Command.sql".

select aosh.add_command(
  'clear',
  null,
  'clears the screen',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'echo',
  null,
  'echoes the parameters to standard output',
  '[<i>params</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'exit',
  null,
  'exits the shell',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'invalidate',
  null,
  'globally invalidates a table',
  '<i>table_name</i> [<i>server</i>]',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'invalidate',
  null,
  'globally invalidates a table',
  '<i>table_name</i> [<i>ao_servers.hostname</i> or <i>servers.package.name</i>/<i>servers.name</i> or <i>servers.pkey</i>]',
  '1.31',
  null
);
select aosh.add_command(
  'jobs',
  null,
  'lists all of the background processes',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'ping',
  null,
  'times the communication with the server',
  '',
  '1.0a100',
  null
);
select aosh.add_command(
  'repeat',
  null,
  'repeatedly executes a command',
  '<i>count</i> <i>command</i> [<i>params</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'su',
  null,
  'switches to a different user',
  '<i>username</i> [<i>command</i> [<i>params</i>]]',
  '1.0a100',
  null
);
select aosh.add_command(
  'time',
  null,
  'times a command',
  '<i>command</i> [<i>params</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'whoami',
  null,
  'displays who is logged in',
  '',
  '1.0a100',
  null
);
