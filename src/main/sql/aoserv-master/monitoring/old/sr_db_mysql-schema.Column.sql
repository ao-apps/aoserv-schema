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

select "schema".add_column('monitoring', 'sr_db_mysql', 'server_report',    'fkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'conn_min',         'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'conn_avg',         'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'conn_max',         'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'questions_min',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'questions_avg',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'questions_max',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'slow_queries_min', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'slow_queries_avg', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'slow_queries_max', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'opens_min',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'opens_avg',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'opens_max',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'flush_min',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'flush_avg',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'flush_max',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'open_tables_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'open_tables_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'open_tables_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'query_rate_min',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'query_rate_avg',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_mysql', 'query_rate_max',   'float', false, false, false, '', '1.0a100', '1.30');
