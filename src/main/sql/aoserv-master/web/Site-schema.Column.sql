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

select "schema".add_column('web', 'httpd_sites', 'pkey',                    'pkey',             false,  true, false, 'a generated primary key', '1.0a100', '1.81.17');
select "schema".add_column('web', 'httpd_sites', 'id',                      'pkey',             false,  true, false, 'a generated primary key', '1.81.18', null);
select "schema".add_column('web', 'httpd_sites', 'ao_server',               'fkey',             false, false, false, 'the pkey of the server the site is hosted on', '1.0a100', null);
select "schema".add_column('web', 'httpd_sites', 'site_name',               'string',           false, false, false, 'the name of the site, as used in the /www directory.', '1.0a100', '1.81.17');
select "schema".add_column('web', 'httpd_sites', 'name',                    'string',           false, false, false, 'the name of the site, as used in the /var/www directory.', '1.81.18', null);
select "schema".add_column('web', 'httpd_sites', 'list_first',              'boolean',          false, false, false, 'if <code>true</code>, this site will be listed first in the Apache configs.  This is normally used only for the "not found" site for each httpd_server.', '1.0a100', null);
select "schema".add_column('web', 'httpd_sites', 'package',                 'package',          false, false, false, 'the package that the site is part of', '1.0a100', '1.80');
select "schema".add_column('web', 'httpd_sites', 'package',                 'accounting',       false, false, false, 'the package that the site is part of', '1.80.0', null);
select "schema".add_column('web', 'httpd_sites', 'linux_account',           'username',         false, false, false, 'the user the site "runs as"', '1.0a100', '1.81.21');
select "schema".add_column('web', 'httpd_sites', 'linux_account',           'linux_username',   false, false, false, 'the user the site "runs as"', '1.81.22', null);
select "schema".add_column('web', 'httpd_sites', 'linux_group',             'string',           false, false, false, 'the primary group that can edit the site content', '1.0a100', '1.80');
select "schema".add_column('web', 'httpd_sites', 'linux_group',             'group_id',         false, false, false, 'the primary group that can edit the site content', '1.80.0', null);
select "schema".add_column('web', 'httpd_sites', 'server_admin',            'email',            false, false, false, 'the email address of the server administrator.  This address is provided when an error occurs.  The value is most often <code>webmaster@<i>domain.com</i></code>', '1.0a100', null);
select "schema".add_column('web', 'httpd_sites', 'content_src',             'path',              true, false, false, 'optional content added to site on creation', '1.0a100', '1.81.9');
select "schema".add_column('web', 'httpd_sites', 'config_backup_level',     'short',            false, false, false, 'the number of copies of config backup files', '1.0a100', '1.30');
select "schema".add_column('web', 'httpd_sites', 'config_backup_retention', 'short',            false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('web', 'httpd_sites', 'file_backup_level',       'short',            false, false, false, 'the number of copies of backup files', '1.0a100', '1.30');
select "schema".add_column('web', 'httpd_sites', 'file_backup_retention',   'short',            false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('web', 'httpd_sites', 'ftp_backup_level',        'short',            false, false, false, 'the number of copies of FTP backup files', '1.0a100', '1.30');
select "schema".add_column('web', 'httpd_sites', 'ftp_backup_retention',    'short',            false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('web', 'httpd_sites', 'log_backup_level',        'short',            false, false, false, 'the number of copies of log backup files', '1.0a100', '1.30');
select "schema".add_column('web', 'httpd_sites', 'log_backup_retention',    'short',            false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('web', 'httpd_sites', 'disable_log',             'fkey',              true, false, false, 'indicates that the site is disabled', '1.0a100', null);
select "schema".add_column('web', 'httpd_sites', 'is_manual',               'boolean',          false, false, false, 'configuration of this server is performed manually', '1.0a100', null);
select "schema".add_column('web', 'httpd_sites', 'awstats_skip_files',      'string',            true, false, false, 'the SkipFiles setting for AWStats', '1.0a129', null);
select "schema".add_column('web', 'httpd_sites', 'php_version',             'fkey',              true, false, false, 'the active version of PHP, if any', '1.78', null);
select "schema".add_column('web', 'httpd_sites', 'enable_cgi',              'boolean',          false, false, false, 'CGI is enabled on this website', '1.80', null);
select "schema".add_column('web', 'httpd_sites', 'enable_ssi',              'boolean',          false, false, false, 'Server-side includes are enabled on this website', '1.80.1', null);
select "schema".add_column('web', 'httpd_sites', 'enable_htaccess',         'boolean',          false, false, false, '.htaccess files are enabled on this website', '1.80.1', null);
select "schema".add_column('web', 'httpd_sites', 'enable_indexes',          'boolean',          false, false, false, 'Directory indexes are enabled on this website', '1.80.1', null);
select "schema".add_column('web', 'httpd_sites', 'enable_follow_symlinks',  'boolean',          false, false, false, 'Symbolic link following is enabled on this website (required for mod_rewrite)', '1.80.1', null);
select "schema".add_column('web', 'httpd_sites', 'enable_anonymous_ftp',    'boolean',          false, false, false, 'Enables the anonymous FTP area for this site.', '1.80.1', null);
select "schema".add_column('web', 'httpd_sites', 'block_trace_track',       'boolean',          false, false, false, 'Enables the blocking of TRACE and TRACK HTTP methods on this site.', '1.81.6', null);
select "schema".add_column('web', 'httpd_sites', 'block_scm',               'boolean',          false, false, false, 'Enables the blocking of URL patterns associated with source control management systems.', '1.81.6', null);
select "schema".add_column('web', 'httpd_sites', 'block_core_dumps',        'boolean',          false, false, false, 'Enables the blocking of core dumps.', '1.81.6', null);
select "schema".add_column('web', 'httpd_sites', 'block_editor_backups',    'boolean',          false, false, false, 'Enables the blocking filename patterns associated with editor automatic backups.', '1.81.6', null);
