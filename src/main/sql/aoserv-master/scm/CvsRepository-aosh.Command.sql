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
  'add_cvs_repository',
  'scm',
  'cvs_repositories',
  'adds a CVS repository to a server',
  '<i>ao_server</i> <i>path</i> <i>username</i> <i>group</i> <i>mode</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_cvs_repositories',
  'scm',
  'cvs_repositories',
  'disables a CVS repository',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_cvs_repositories',
  'scm',
  'cvs_repositories',
  'enables a CVS repository',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_cvs_repository',
  'scm',
  'cvs_repositories',
  'removes a CVS repository from a server',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_cvs_repository_backup_retention',
  'scm',
  'cvs_repositories',
  'sets the backup retention for a CVS repository',
  '<i>ao_server</i> <i>path</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_cvs_repository_mode',
  'scm',
  'cvs_repositories',
  'sets the directory permissions of a CVS repository',
  '<i>ao_server</i> <i>path</i> <i>mode</i>',
  '1.0a100',
  null
);
