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

select "schema".add_foreign_key('linux', 'linux_server_accounts', 'username',               'linux',   'linux_accounts',             'username', '1.0a100', '1.81.21');
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'username',               'linux',   'linux_accounts',             'username', '1.81.22', null);
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'ao_server',              'linux',   'ao_servers',                 'server',   '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'uid',                    'linux',   'linux_ids',                  'id',       '1.0a100', '1.68');
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'uid',                    'linux',   'linux_ids',                  'id',       '1.69',    '1.80');
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'cron_backup_level',      'backup',  'backup_levels',              'level',    '1.0a100', '1.30');
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'cron_backup_retention',  'backup',  'backup_retentions',          'days',     '1.0a100', '1.30');
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'home_backup_level',      'backup',  'backup_levels',              'level',    '1.0a100', '1.30');
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'home_backup_retention',  'backup',  'backup_retentions',          'days',     '1.0a100', '1.30');
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'inbox_backup_level',     'backup',  'backup_levels',              'level',    '1.0a100', '1.30');
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'inbox_backup_retention', 'backup',  'backup_retentions',          'days',     '1.0a100', '1.30');
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'autoresponder_from',     'email',   'linux_acc_addresses',        'pkey',     '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'disable_log',            'account', 'disable_log',                'pkey',     '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_server_accounts', 'sa_integration_mode',    'email',   'email_sa_integration_modes', 'name',     '1.0a120', null);
