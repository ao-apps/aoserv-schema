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

select "schema".add_column('aosh', 'aosh_commands', 'command',       'string', false,  true, true, 'the unique command', '1.0a100', null);
select "schema".add_column('aosh', 'aosh_commands', 'sinceVersion',  'string', false, false, true, 'the first aoserv_protocol version having this command', '1.81.18', null);
select "schema".add_column('aosh', 'aosh_commands', 'lastVersion',   'string',  true, false, true, 'the last aoserv_protocol version having this command', '1.81.18', null);
select "schema".add_column('aosh', 'aosh_commands', 'table_name',    'string',  true, false, true, 'the name of the table the column is in, is a global command if the column is null', '1.0a100', '1.81.17');
select "schema".add_column('aosh', 'aosh_commands', 'table',         'string',  true, false, true, 'the name of the table the column is in, is a global command if the column is null', '1.81.18', null);
select "schema".add_column('aosh', 'aosh_commands', 'short_desc',    'string', false, false, true, 'a short description of the command', '1.0a100', '1.81.17');
select "schema".add_column('aosh', 'aosh_commands', 'description',   'string', false, false, true, 'a short description of the command', '1.81.18', null);
select "schema".add_column('aosh', 'aosh_commands', 'syntax',        'string', false, false, true, 'the syntax of the command', '1.0a100', null);
select "schema".add_column('aosh', 'aosh_commands', 'since_version', 'string', false, false, true, 'the first aoserv_protocol version having this command', '1.0a101', '1.81.17');
select "schema".add_column('aosh', 'aosh_commands', 'last_version',  'string',  true, false, true, 'the last aoserv_protocol version having this command', '1.0a102', '1.81.17');
