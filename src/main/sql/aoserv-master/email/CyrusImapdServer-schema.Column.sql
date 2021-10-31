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

select "schema".add_column('email', 'cyrus_imapd_servers', 'ao_server',             'fkey',        false,  true, false, 'the pkey of the server that runs this Cyrus IMAPD instance',         '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'sieve_net_bind',        'fkey',         true,  true, false, 'the port the server binds to for sieve, if enabled',                 '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'servername',            'domain_name',  true, false, false, 'the servername for this server',                                     '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'certificate',           'fkey',        false, false, false, 'the certificate used for this server',                               '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'allow_plaintext_auth',  'boolean',     false, false, false, 'allows plaintext authentication (PLAIN/LOGIN) on non-TLS links',     '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'delete_duration',       'float',        true, false, false, 'the duration after which delayed delete folders are removed',        '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'delete_duration_unit',  'string',       true, false, false, 'the time unit for delete_duration, one of "d", "h", "m", "s"',       '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'expire_duration',       'float',       false, false, false, 'prune the duplicate database of entries older than expire-duration', '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'expire_duration_unit',  'string',       true, false, false, 'the time unit for expire_duration, one of "d", "h", "m", "s"',       '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'expunge_duration',      'float',        true, false, false, 'the duration after which delayed expunge messages are removed',      '1.81.10', null);
select "schema".add_column('email', 'cyrus_imapd_servers', 'expunge_duration_unit', 'string',       true, false, false, 'the time unit for expunge_duration, one of "d", "h", "m", "s"',      '1.81.10', null);
