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

select "schema".add_column('net.reputation', 'ip_reputation_sets', 'pkey',                     'pkey',       false,  true, false, 'a generated, unique key',                              '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'accounting',               'accounting', false, false, false, 'the accounting code of the business',                  '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'identifier',               'string',     false,  true, false, 'a globally unique identifier',                         '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'allow_subaccount_use',     'boolean',    false, false, false, 'allows subaccounts to use the set',                    '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'max_hosts',                'int',        false, false, false, 'the maximum number of individual hosts tracked',       '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'max_uncertain_reputation', 'short',      false, false, false, 'the maximum reputation from uncertain sources',        '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'max_definite_reputation',  'short',      false, false, false, 'the maximum reputation from definite sources',         '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'network_prefix',           'short',      false, false, false, 'the network size, for example 24 for a /24 (class C)', '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'max_network_reputation',   'short',      false, false, false, 'the maximum reputation for a network',                 '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'host_decay_interval',      'int',        false, false, false, 'the number of seconds between each host decay',        '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'last_host_decay',          'time',       false, false, false, 'the time the hosts were last decayed',                 '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'network_decay_interval',   'int',        false, false, false, 'the number of seconds between each network decay',     '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'last_network_decay',       'time',       false, false, false, 'the time the networks were last decayed',              '1.65', null);
select "schema".add_column('net.reputation', 'ip_reputation_sets', 'last_reputation_added',    'time',       false, false, false, 'the time reputation was last added',                   '1.67', null);
