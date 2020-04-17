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

select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'pkey',                'pkey',   false,  true, false, 'a generated, unique key',       '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'limiter',             'fkey',   false, false, false, 'the identifier of the limiter', '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'class',               'string', false, false, false, 'the reputation class',          '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_per_ip_burst',    'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_per_ip_rate',     'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_per_ip_unit',     'string', false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_per_ip_size',     'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_burst',           'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_rate',            'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'syn_unit',            'string', false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_per_ip_burst', 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_per_ip_rate',  'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_per_ip_unit',  'string', false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_per_ip_size',  'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_burst',        'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_rate',         'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_limiter_limits', 'packet_unit',         'string', false, false, false, '',                              '1.66', null);
