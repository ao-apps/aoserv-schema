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

select "schema".add_column('email', 'sendmail_smtp_stats', 'pkey',                 'pkey',    false,  true, false, 'a generated unique key', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'package',              'package', false, false, false, 'the package that owns this entry', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'date',                 'date',    false, false, false, 'the date of the statistics', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'ao_server',            'fkey',    false, false, false, 'the pkey of the server processing the emails', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'email_in_count',       'int',     false, false, false, 'the number of emails received', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'excess_in_count',      'int',     false, false, false, 'the number of emails beyond the package limit', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'email_in_bandwidth',   'long',    false, false, false, 'the amount of bandwidth consumed', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'excess_in_bandwidth',  'long',    false, false, false, 'the amount of bandwidth beyond the package limit', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'email_out_count',      'int',     false, false, false, 'the number of emails sent', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'excess_out_count',     'int',     false, false, false, 'the number of emails beyond the package limit', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'email_out_bandwidth',  'long',    false, false, false, 'the amount of bandwidth consumed', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'excess_out_bandwidth', 'long',    false, false, false, 'the amount of bandwidth beyond the package limit', '1.0a100', '1.30');
