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

select aosh.add_command(
  'check_site_name',
  'web',
  'httpd_sites',
  'checks the format of a site name',
  '<i>site_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_httpd_site',
  'web',
  'httpd_sites',
  'disables a web site, including its Java virtual machine and all network ports',
  '<i>site_name</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_httpd_site',
  'web',
  'httpd_sites',
  'enables a web site, including its Java virtual machine and all network ports',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_site_name',
  'web',
  'httpd_sites',
  'generates a unique site name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_awstats_file',
  'web',
  'httpd_sites',
  'gets a file from the AWStats report',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> {""|<i>query_string</i>}',
  '1.0a128',
  null
);
select aosh.add_command(
  'initialize_httpd_site_passwd_file',
  'web',
  'httpd_sites',
  'creates the default conf/passwd file',
  '<i>site_name</i> <i>ao_server</i> <i>username</i> <i>password</i>',
  '1.0a100',
  '1.0a128'
);
select aosh.add_command(
  'is_site_name_available',
  'web',
  'httpd_sites',
  'determines if a site name is available',
  '<i>site_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_httpd_site',
  'web',
  'httpd_sites',
  'removes a web site from the servers',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_config_backup_retention',
  'web',
  'httpd_sites',
  'sets the config file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_file_backup_retention',
  'web',
  'httpd_sites',
  'sets the file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_ftp_backup_retention',
  'web',
  'httpd_sites',
  'sets the ftp file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_is_manual',
  'web',
  'httpd_sites',
  'sets the is_manual flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>is_manual</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_log_backup_retention',
  'web',
  'httpd_sites',
  'sets the log file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_server_admin',
  'web',
  'httpd_sites',
  'sets the administrative email address for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>email_address</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_php_version',
  'web',
  'httpd_sites',
  'sets the PHP version for a web site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>php_version</i>}',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_cgi',
  'web',
  'httpd_sites',
  'sets the enable_cgi flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_cgi</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_ssi',
  'web',
  'httpd_sites',
  'sets the enable_ssi flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_ssi</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_htaccess',
  'web',
  'httpd_sites',
  'sets the enable_htaccess flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_htaccess</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_indexes',
  'web',
  'httpd_sites',
  'sets the enable_indexes flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_indexes</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_follow_symlinks',
  'web',
  'httpd_sites',
  'sets the enable_follow_symlinks flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_follow_symlinks</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_anonymous_ftp',
  'web',
  'httpd_sites',
  'sets the enable_anonymous_ftp flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_anonymous_ftp</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_block_trace_track',
  'web',
  'httpd_sites',
  'sets the block_trace_track flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_trace_track</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_site_block_scm',
  'web',
  'httpd_sites',
  'sets the block_scm flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_scm</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_site_block_core_dumps',
  'web',
  'httpd_sites',
  'sets the block_core_dumps flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_core_dumps</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_site_block_editor_backups',
  'web',
  'httpd_sites',
  'sets the block_editor_backups flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_editor_backups</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'wait_for_httpd_site_rebuild',
  'web',
  'httpd_sites',
  'waits for any pending or processing changes to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
