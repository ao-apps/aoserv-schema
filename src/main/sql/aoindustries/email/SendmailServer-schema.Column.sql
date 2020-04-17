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

select "schema".add_column('email', 'sendmail_servers', 'pkey',                     'pkey',        false,  true, false, 'a generated unique number',                                             '1.81.10', '1.81.17');
select "schema".add_column('email', 'sendmail_servers', 'id',                       'pkey',        false,  true, false, 'a generated unique number',                                             '1.81.18', null);
select "schema".add_column('email', 'sendmail_servers', 'ao_server',                'fkey',        false, false, false, 'the pkey of the server that runs this sendmail instance',               '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'name',                     'string',       true, false, false, 'the name of the instance on the server, null for the default instance', '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'package',                  'fkey',        false, false, false, 'the package that owns the SSL certificate',                             '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'hostname',                 'domain_name',  true, false, false, 'the fully qualified hostname for Dw, Dm, and Dj',                       '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'server_certificate',       'fkey',        false, false, false, 'the certificate used for this server',                                  '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'client_certificate',       'fkey',        false, false, false, 'the certificate used for this client',                                  '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'allow_plaintext_auth',     'boolean',     false, false, false, 'allows plaintext authentication (PLAIN/LOGIN) on non-TLS links',        '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'max_queue_children',       'int',          true, false, false, 'the value for confMAX_QUEUE_CHILDREN',                                  '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'nice_queue_run',           'int',          true, false, false, 'the value for confNICE_QUEUE_RUN',                                      '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'delay_la',                 'int',          true, false, false, 'the value for confDELAY_LA',                                            '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'queue_la',                 'int',          true, false, false, 'the value for confQUEUE_LA',                                            '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'refuse_la',                'int',          true, false, false, 'the value for confREFUSE_LA',                                           '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'max_daemon_children',      'int',          true, false, false, 'the value for confMAX_DAEMON_CHILDREN',                                 '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'bad_rcpt_throttle',        'int',          true, false, false, 'the value for confBAD_RCPT_THROTTLE',                                   '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'connection_rate_throttle', 'int',          true, false, false, 'the value for confCONNECTION_RATE_THROTTLE',                            '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'max_message_size',         'int',          true, false, false, 'the value for confMAX_MESSAGE_SIZE',                                    '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'min_free_blocks',          'int',          true, false, false, 'the value for confMIN_FREE_BLOCKS',                                     '1.81.10', null);
select "schema".add_column('email', 'sendmail_servers', 'client_addr_inet',         'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet',                       '1.81.10', '1.81.17');
select "schema".add_column('email', 'sendmail_servers', 'clientAddrInet',           'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet',                       '1.81.18', null);
select "schema".add_column('email', 'sendmail_servers', 'client_addr_inet6',        'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet6',                      '1.81.10', '1.81.17');
select "schema".add_column('email', 'sendmail_servers', 'clientAddrInet6',          'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet6',                      '1.81.18', null);
