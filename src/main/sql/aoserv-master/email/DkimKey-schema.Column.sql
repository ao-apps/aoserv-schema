/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2026  AO Industries, Inc.
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

select "schema".add_column('email', 'DkimKey', 'id',            'pkey',         false,  true, false, 'The generated primary key.',                              '1.92.2-SNAPSHOT', null);
select "schema".add_column('email', 'DkimKey', 'domain',        'fkey',         false, false, false, 'The email domain for this key.',                          '1.92.2-SNAPSHOT', null);
select "schema".add_column('email', 'DkimKey', 'selector',      'domain_label', false, false, false, 'The per-domain unique name.',                             '1.92.2-SNAPSHOT', null);
select "schema".add_column('email', 'DkimKey', 'created',       'time',         false, false, false, 'The time this key was added.',                            '1.92.2-SNAPSHOT', null);
select "schema".add_column('email', 'DkimKey', 'status',        'string',       false, false, false, E'The current status, one of "new", "signing", "old", "removal".\n'
                                                                                                   || 'Only one may be "signing" per domain.',                  '1.92.2-SNAPSHOT', null);
select "schema".add_column('email', 'DkimKey', 'statusTime',    'time',         false, false, false, 'The time at last status change.',                         '1.92.2-SNAPSHOT', null);
select "schema".add_column('email', 'DkimKey', 'dnsRecord',     'fkey',         false,  true, false, E'The DNS record associated with this key.\n'
                                                                                                   || 'May be <code>null</code> when DNS hosted elsewhere.',    '1.92.2-SNAPSHOT', null);
select "schema".add_column('email', 'DkimKey', 'dnsConfirmed',  'time',          true, false, false, E'The time DNS TXT presence and correctness was confirmed.\n'
                                                                                                   || 'Required for statuses "signing" and "old".',             '1.92.2-SNAPSHOT', null);
