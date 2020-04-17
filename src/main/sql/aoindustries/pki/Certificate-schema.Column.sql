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

select "schema".add_column('pki', 'ssl_certificates', 'pkey',         'pkey',  false,  true, false, 'a generated primary key',                                    '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'ao_server',    'fkey',  false, false, false, 'the pkey of the server the SSL certificate is on',           '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'package',      'fkey',  false, false, false, 'the package that owns the SSL certificate',                  '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'key_file',     'path',  false, false, false, 'the file holding the private key',                           '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'csr_file',     'path',   true, false, false, 'the file holding the CSR',                                   '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'cert_file',    'path',  false, false, false, 'the file holding the public key',                            '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'chain_file',   'path',   true, false, false, 'the file holding the CA chain',                              '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificates', 'certbot_name', 'string', true, false, false, 'the name of the certbot-managed Let''s Encrypt certificate', '1.81.10', null);
