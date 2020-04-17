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

-- <= 1.81.18
select "schema".add_column('billing', 'whois_history', 'pkey',         'pkey',       false,  true, false, 'a unique, generated identifier',                   '1.20', '1.81.18');
select "schema".add_column('billing', 'whois_history', 'time',         'time',       false, false, false, 'the time the whois query was performed',           '1.20', '1.81.18');
select "schema".add_column('billing', 'whois_history', 'accounting',   'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.20', '1.81.18');
select "schema".add_column('billing', 'whois_history', 'zone',         'zone',       false, false, false, 'the top level domain (zone) that was queried',     '1.20', '1.81.18');
select "schema".add_column('billing', 'whois_history', 'whois_output', 'string',     false, false, false, 'the output from the whois lookup',                 '1.20', '1.81.18');
-- >= 1.81.19
select "schema".add_column('billing', 'WhoisHistory', 'id',                'pkey',        false,  true, false, 'a unique, generated identifier',                           '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'registrableDomain', 'domain_name', false, false, false, 'the registrable domain that was queried',                  '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'time',              'time',        false, false, false, 'the time the whois query was performed',                   '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'exitStatus',        'int',          true, false, false, 'the exit status from the whois lookup, null on exception', '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'output',            'string',      false, false, false, 'the output from the whois lookup',                         '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'error',             'string',      false, false, false, 'the error from the whois lookup',                          '1.81.19', null);
