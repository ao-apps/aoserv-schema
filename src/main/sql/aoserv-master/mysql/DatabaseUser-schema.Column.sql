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

select "schema".add_column('mysql', 'mysql_db_users', 'pkey',                  'pkey',    false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'mysql_database',        'fkey',    false, false, false, 'the pkey in mysql_databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'mysql_user',            'fkey',    false, false, false, 'the pkey in mysql_server_users', '1.0a100', '1.30');
select "schema".add_column('mysql', 'mysql_db_users', 'mysql_server_user',     'fkey',    false, false, false, 'the pkey in mysql_server_users', '1.31', null);
select "schema".add_column('mysql', 'mysql_db_users', 'select_priv',           'boolean', false, false, false, 'the SELECT privilege', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'insert_priv',           'boolean', false, false, false, 'the INSERT privilege', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'update_priv',           'boolean', false, false, false, 'the UPDATE privilege', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'delete_priv',           'boolean', false, false, false, 'the DELETE privilege', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'create_priv',           'boolean', false, false, false, 'the CREATE privilege', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'drop_priv',             'boolean', false, false, false, 'the DROP privilege', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'grant_priv',            'boolean', false, false, false, 'the GRANT privilege', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'references_priv',       'boolean', false, false, false, 'the REFERENCES privilege', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'index_priv',            'boolean', false, false, false, 'the INDEX privilege', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'alter_priv',            'boolean', false, false, false, 'the ALTER privilete', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_db_users', 'create_tmp_table_priv', 'boolean', false, false, false, 'the Create_tmp_table_priv', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_db_users', 'lock_tables_priv',      'boolean', false, false, false, 'the Lock_tables_priv', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_db_users', 'create_view_priv',      'boolean', false, false, false, 'the Create_view_priv', '1.4', null);
select "schema".add_column('mysql', 'mysql_db_users', 'show_view_priv',        'boolean', false, false, false, 'the Show_view_priv', '1.4', null);
select "schema".add_column('mysql', 'mysql_db_users', 'create_routine_priv',   'boolean', false, false, false, 'the Create_routine_priv', '1.4', null);
select "schema".add_column('mysql', 'mysql_db_users', 'alter_routine_priv',    'boolean', false, false, false, 'the Alter_routine_priv', '1.4', null);
select "schema".add_column('mysql', 'mysql_db_users', 'execute_priv',          'boolean', false, false, false, 'the Execute_priv', '1.4', null);
select "schema".add_column('mysql', 'mysql_db_users', 'event_priv',            'boolean', false, false, false, 'the Event_priv', '1.54', null);
select "schema".add_column('mysql', 'mysql_db_users', 'trigger_priv',          'boolean', false, false, false, 'the Trigger_priv', '1.54', null);
