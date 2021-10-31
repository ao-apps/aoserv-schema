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

select "schema".add_column('email', 'email_smtp_relays', 'pkey',           'pkey',       false,  true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relays', 'package',        'package',    false, false, false, 'the package that owns this entry', '1.0a100', '1.80');
select "schema".add_column('email', 'email_smtp_relays', 'package',        'accounting', false, false, false, 'the package that owns this entry', '1.80.0', null);
select "schema".add_column('email', 'email_smtp_relays', 'ao_server',      'fkey',        true, false, false, 'the pkey of the server that the rule applies to', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relays', 'host',           'string',     false, false, false, 'the hostname or IP the rule applies to', '1.0a100', '1.68');
select "schema".add_column('email', 'email_smtp_relays', 'host',           'hostname',   false, false, false, 'the hostname or IP the rule applies to', '1.69', null);
select "schema".add_column('email', 'email_smtp_relays', 'type',           'string',     false, false, false, 'the type of entry', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relays', 'created',        'time',       false, false, false, 'the time the entry was created', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relays', 'last_refreshed', 'time',       false, false, false, 'the time the entry was last updated', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relays', 'refresh_count',  'int',        false, false, false, 'the number of times the entry has been updated', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relays', 'expiration',     'time',        true, false, false, 'the expiration time of the entry, or null if non-expiring', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relays', 'disable_log',    'fkey',        true, false, false, 'indicates that the rule is disabled', '1.0a100', null);
