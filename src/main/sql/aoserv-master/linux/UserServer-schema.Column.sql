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

select "schema".add_column('linux', 'linux_server_accounts', 'pkey',                     'pkey',           false,  true, false, 'the generated primary key', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'username',                 'username',       false, false, false, 'the name of the user', '1.0a100', '1.81.21');
select "schema".add_column('linux', 'linux_server_accounts', 'username',                 'linux_username', false, false, false, 'the name of the user', '1.81.22', null);
select "schema".add_column('linux', 'linux_server_accounts', 'ao_server',                'fkey',           false, false, false, 'the pkey of the server the username is on', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'uid',                      'int',            false, false, false, 'the uid of the user on the machine', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_server_accounts', 'uid',                      'fkey',           false, false, false, 'the uid of the user on the machine', '1.69', '1.80');
select "schema".add_column('linux', 'linux_server_accounts', 'uid',                      'linux_id',       false, false, false, 'the uid of the user on the machine', '1.80.0', null);
select "schema".add_column('linux', 'linux_server_accounts', 'home',                     'path',           false, false, false, 'the home directory of the user on this machine', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'cron_backup_level',        'short',          false, false, false, 'the level of backup for cron table', '1.0a100', '1.30');
select "schema".add_column('linux', 'linux_server_accounts', 'cron_backup_retention',    'short',          false, false, false, 'the number of days backup files will be kept', '1.0a100', '1.30');
select "schema".add_column('linux', 'linux_server_accounts', 'home_backup_level',        'short',          false, false, false, 'the level of backup for home directory', '1.0a100', '1.30');
select "schema".add_column('linux', 'linux_server_accounts', 'home_backup_retention',    'short',          false, false, false, 'the number of days backup files will be kept', '1.0a100', '1.30');
select "schema".add_column('linux', 'linux_server_accounts', 'inbox_backup_level',       'short',          false, false, false, 'the level of backup for email inbox', '1.0a100', '1.30');
select "schema".add_column('linux', 'linux_server_accounts', 'inbox_backup_retention',   'short',          false, false, false, 'the number of days backup files will be kept', '1.0a100', '1.30');
select "schema".add_column('linux', 'linux_server_accounts', 'autoresponder_from',       'fkey',            true, false, false, 'the pkey of the email address used for the autoresponder', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'autoresponder_subject',    'string',          true, false, false, 'the subject of autoresponder messages', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'autoresponder_path',       'string',          true, false, false, 'the full path of the autoresponder text file', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'is_autoresponder_enabled', 'boolean',        false, false, false, 'flags if the autoresponder is enabled', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'disable_log',              'fkey',            true, false, false, 'indicates the account is disabled', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'predisable_password',      'string',          true, false, false, 'stores the password that was used before the account was disabled', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'created',                  'date',           false, false, false, 'the time this account was added', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_server_accounts', 'created',                  'time',           false, false, false, 'the time this account was added', '1.69', null);
select "schema".add_column('linux', 'linux_server_accounts', 'use_inbox',                'boolean',        false, false, false, 'email for this account will be stored in the inbox, otherwise it is just deleted', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'trash_email_retention',    'int',             true, false, false, 'the number of days before messages in the Trash folder are automatically removed.', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_accounts', 'junk_email_retention',     'int',             true, false, false, 'the number of days before messages in the Junk folder are automatically removed.', '1.0a120', null);
select "schema".add_column('linux', 'linux_server_accounts', 'sa_integration_mode',      'string',         false, false, false, 'the integration mode for SpamAssassin', '1.0a120', null);
select "schema".add_column('linux', 'linux_server_accounts', 'sa_required_score',        'float',          false, false, false, 'the minimum SpamAssassin score considered Junk', '1.0a124', null);
select "schema".add_column('linux', 'linux_server_accounts', 'sa_discard_score',         'int',             true, false, false, 'the minimum SpamAssassin score that will be discarded instead of tagged or placed in the Junk folder', '1.40', null);
select "schema".add_column('linux', 'linux_server_accounts', 'sudo',                     'string',          true, false, false, 'the sudo setting or null when sudo not allowed', '1.80.1', null);
