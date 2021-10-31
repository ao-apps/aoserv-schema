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
  'disable_httpd_site_bind',
  'web',
  'httpd_site_binds',
  'disables one network port of a web site',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_httpd_site_bind',
  'web',
  'httpd_site_binds',
  'enables one network port of a web site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_bind_is_manual',
  'web',
  'httpd_site_binds',
  'sets the is_manual flag for one network port of a web site',
  '<i>pkey</i> <i>is_manual</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_bind_redirect_to_primary_hostname',
  'web',
  'httpd_site_binds',
  'sets the redirect_to_primary_hostname flag for one network port of a web site',
  '<i>pkey</i> <i>redirect_to_primary_hostname</i>',
  '1.19',
  null
);
