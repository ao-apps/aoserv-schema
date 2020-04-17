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
  'add_httpd_site_url',
  'web',
  'httpd_site_urls',
  'adds a hostname to a web site',
  '<i>httpd_site_bind_pkey</i> <i>hostname</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_httpd_site_url',
  'web',
  'httpd_site_urls',
  'removes a hostname from a web site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_primary_httpd_site_url',
  'web',
  'httpd_site_urls',
  'sets the primary hostname for one specific IP address and port',
  '<i>pkey</i>',
  '1.0a100',
  null
);
