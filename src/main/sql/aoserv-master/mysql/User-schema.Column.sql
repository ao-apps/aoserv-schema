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

select "schema".add_column('mysql', 'mysql_users', 'username',              'username',       false,  true, false, 'the username of the MySQL user', '1.0a100', '1.80');
select "schema".add_column('mysql', 'mysql_users', 'username',              'mysql_username', false,  true, false, 'the username of the MySQL user', '1.80.0', null);
select "schema".add_column('mysql', 'mysql_users', 'select_priv',           'boolean',        false, false, false, 'the SELECT privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'insert_priv',           'boolean',        false, false, false, 'the INSERT privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'update_priv',           'boolean',        false, false, false, 'the UPDATE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'delete_priv',           'boolean',        false, false, false, 'the DELETE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'create_priv',           'boolean',        false, false, false, 'the CREATE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'drop_priv',             'boolean',        false, false, false, 'the DROP privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'reload_priv',           'boolean',        false, false, false, 'the RELOAD privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'shutdown_priv',         'boolean',        false, false, false, 'the SHUTDOWN privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'process_priv',          'boolean',        false, false, false, 'the PROCESS privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'file_priv',             'boolean',        false, false, false, 'the FILE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'grant_priv',            'boolean',        false, false, false, 'the GRANT privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'references_priv',       'boolean',        false, false, false, 'the REFERENCES privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'index_priv',            'boolean',        false, false, false, 'the INDEX privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'alter_priv',            'boolean',        false, false, false, 'the ALTER privilete to all databases', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_users', 'show_db_priv',          'boolean',        false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_users', 'super_priv',            'boolean',        false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_users', 'create_tmp_table_priv', 'boolean',        false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_users', 'lock_tables_priv',      'boolean',        false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_users', 'execute_priv',          'boolean',        false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_users', 'repl_slave_priv',       'boolean',        false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_users', 'repl_client_priv',      'boolean',        false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_users', 'create_view_priv',      'boolean',        false, false, false, '', '1.4', null);
select "schema".add_column('mysql', 'mysql_users', 'show_view_priv',        'boolean',        false, false, false, '', '1.4', null);
select "schema".add_column('mysql', 'mysql_users', 'create_routine_priv',   'boolean',        false, false, false, '', '1.4', null);
select "schema".add_column('mysql', 'mysql_users', 'alter_routine_priv',    'boolean',        false, false, false, '', '1.4', null);
select "schema".add_column('mysql', 'mysql_users', 'create_user_priv',      'boolean',        false, false, false, '', '1.4', null);
select "schema".add_column('mysql', 'mysql_users', 'event_priv',            'boolean',        false, false, false, 'the Event_priv', '1.54', null);
select "schema".add_column('mysql', 'mysql_users', 'trigger_priv',          'boolean',        false, false, false, 'the Trigger_priv', '1.54', null);
select "schema".add_column('mysql', 'mysql_users', 'disable_log',           'fkey',            true, false, false, 'indicates that this account is disabled', '1.0a100', null);
