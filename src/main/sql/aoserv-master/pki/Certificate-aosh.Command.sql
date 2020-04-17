/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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
  'check_ssl_certificate',
  'pki',
  'ssl_certificates',
  'checks an SSL certificate status',
  '<i>ao_server</i> <i>key_file_or_certbot_name</i>',
  '1.81.10',
  '1.82.1'
);
select aosh.add_command(
  'pki.Certificate.check',
  'pki',
  'ssl_certificates',
  'checks an SSL certificate status',
  '<i>server</i> <i>keyFile_or_certbotName</i> <i>allowCached</i>',
  '1.83.0',
  null
);
