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

select "schema".add_column('net.reputation', 'ip_reputation_set_networks', 'pkey',     'long',       false,  true, false, 'a generated, unique key',                                                      '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_set_networks', 'set_fkey', 'fkey',       false, false, false, 'the IP Reputation Set',                                                        '1.65', '1.65');
select "schema".add_column('net.reputation', 'ip_reputation_set_networks', 'set',      'fkey',       false, false, false, 'the IP Reputation Set',                                                        '1.66', null);
select "schema".add_column('net.reputation', 'ip_reputation_set_networks', 'network',  'int',        false, false, false, 'the per-set unique 32-bit network address, big-endian with network bits zero', '1.65', '1.66');
select "schema".add_column('net.reputation', 'ip_reputation_set_networks', 'network',  'ip_address', false, false, false, 'the per-set unique IPv4 network address, with network bits zero',              '1.67', null);
select "schema".add_column('net.reputation', 'ip_reputation_set_networks', 'counter',  'int',        false, false, false, 'the reputation counter',                                                       '1.65', null);
