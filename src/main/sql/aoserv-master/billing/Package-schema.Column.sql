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

select "schema".add_column('billing', 'packages', 'pkey',                           'pkey',       false,  true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('billing', 'packages', 'name',                           'package',    false,  true, false, 'the unique name of this package entry', '1.0a100', '1.80');
select "schema".add_column('billing', 'packages', 'name',                           'accounting', false,  true, false, 'the unique name of this package entry', '1.80.0', null);
select "schema".add_column('billing', 'packages', 'accounting',                     'accounting', false, false, false, 'the accounting code of the business that pays for this package', '1.0a100', null);
select "schema".add_column('billing', 'packages', 'level',                          'string',     false, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'packages', 'rate',                           'decimal_2',   true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'packages', 'package_definition',             'fkey',       false, false, false, 'the definition of the package', '1.0a123', null);
select "schema".add_column('billing', 'packages', 'created',                        'time',       false, false, false, '', '1.0a100', null);
select "schema".add_column('billing', 'packages', 'created_by',                     'username',   false, false, false, '', '1.0a100', null);
select "schema".add_column('billing', 'packages', 'user_limit',                     'int',         true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'packages', 'additional_user_rate',           'decimal_2',   true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'packages', 'pop_limit',                      'int',         true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'packages', 'additional_pop_rate',            'decimal_2',   true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'packages', 'daily_smtp_in_limit',            'int',        false, false, false, 'the number of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('billing', 'packages', 'daily_smtp_in_bandwidth_limit',  'long',       false, false, false, 'the total size of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('billing', 'packages', 'daily_smtp_out_limit',           'int',        false, false, false, 'the number of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('billing', 'packages', 'daily_smtp_out_bandwidth_limit', 'long',       false, false, false, 'the total size of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('billing', 'packages', 'disable_log',                    'fkey',        true, false, false, 'indicates that the package is disabled', '1.0a100', null);
select "schema".add_column('billing', 'packages', 'email_in_burst',                 'int',         true, false, false, 'the maximum burst of inbound email before limiting begins', '1.24', null);
select "schema".add_column('billing', 'packages', 'email_in_rate',                  'float',       true, false, false, 'the number of sustained inbound emails per second', '1.24', null);
select "schema".add_column('billing', 'packages', 'email_out_burst',                'int',         true, false, false, 'the maximum burst of outbound email before limiting begins', '1.24', null);
select "schema".add_column('billing', 'packages', 'email_out_rate',                 'float',       true, false, false, 'the number of sustained outbound emails per second', '1.24', null);
select "schema".add_column('billing', 'packages', 'email_relay_burst',              'int',         true, false, false, 'the maximum burst of relay email before limiting begins', '1.24', null);
select "schema".add_column('billing', 'packages', 'email_relay_rate',               'float',       true, false, false, 'the number of sustained relay emails per second', '1.24', null);
