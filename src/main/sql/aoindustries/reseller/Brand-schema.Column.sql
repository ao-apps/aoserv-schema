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

select "schema".add_column('reseller', 'brands', 'accounting',                                      'accounting',  false,  true, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'nameserver1',                                     'hostname',    false, false, false, '', '1.44', '1.68');
select "schema".add_column('reseller', 'brands', 'nameserver1',                                     'domain_name', false, false, false, '', '1.69', null);
select "schema".add_column('reseller', 'brands', 'nameserver2',                                     'hostname',    false, false, false, '', '1.44', '1.68');
select "schema".add_column('reseller', 'brands', 'nameserver2',                                     'domain_name', false, false, false, '', '1.69', null);
select "schema".add_column('reseller', 'brands', 'nameserver3',                                     'hostname',     true, false, false, '', '1.44', '1.68');
select "schema".add_column('reseller', 'brands', 'nameserver3',                                     'domain_name',  true, false, false, '', '1.69', null);
select "schema".add_column('reseller', 'brands', 'nameserver4',                                     'hostname',     true, false, false, '', '1.44', '1.68');
select "schema".add_column('reseller', 'brands', 'nameserver4',                                     'domain_name',  true, false, false, '', '1.69', null);
select "schema".add_column('reseller', 'brands', 'smtp_linux_server_account',                       'fkey',        false,  true, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'smtp_host',                                       'hostname',     true, false, false, '', '1.46', null);
select "schema".add_column('reseller', 'brands', 'smtp_password',                                   'string',      false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'imap_linux_server_account',                       'fkey',        false,  true, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'imap_host',                                       'hostname',     true, false, false, '', '1.46', null);
select "schema".add_column('reseller', 'brands', 'imap_password',                                   'string',      false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'support_email_address',                           'fkey',        false,  true, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'support_email_display',                           'string',      false,  true, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'signup_email_address',                            'fkey',        false,  true, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'signup_email_display',                            'string',      false,  true, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'ticket_encryption_from',                          'fkey',        false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'ticket_encryption_recipient',                     'fkey',        false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'signup_encryption_from',                          'fkey',        false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'signup_encryption_recipient',                     'fkey',        false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'support_toll_free',                               'string',       true, false, false, '', '1.44', '1.68');
select "schema".add_column('reseller', 'brands', 'support_toll_free',                               'phone',        true, false, false, '', '1.69', null);
select "schema".add_column('reseller', 'brands', 'support_day_phone',                               'string',       true, false, false, '', '1.44', '1.68');
select "schema".add_column('reseller', 'brands', 'support_day_phone',                               'phone',        true, false, false, '', '1.69', null);
select "schema".add_column('reseller', 'brands', 'support_emergency_phone1',                        'string',       true, false, false, '', '1.44', '1.68');
select "schema".add_column('reseller', 'brands', 'support_emergency_phone1',                        'phone',        true, false, false, '', '1.69', null);
select "schema".add_column('reseller', 'brands', 'support_emergency_phone2',                        'string',       true, false, false, '', '1.44', '1.68');
select "schema".add_column('reseller', 'brands', 'support_emergency_phone2',                        'phone',        true, false, false, '', '1.69', null);
select "schema".add_column('reseller', 'brands', 'support_fax',                                     'string',       true, false, false, '', '1.44', '1.68');
select "schema".add_column('reseller', 'brands', 'support_fax',                                     'phone',        true, false, false, '', '1.69', null);
select "schema".add_column('reseller', 'brands', 'support_mailing_address1',                        'string',       true, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'support_mailing_address2',                        'string',       true, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'support_mailing_address3',                        'string',       true, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'support_mailing_address4',                        'string',       true, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'english_enabled',                                 'boolean',     false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'japanese_enabled',                                'boolean',     false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'aoweb_struts_http_url_base',                      'string',      false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'aoweb_struts_https_url_base',                     'string',      false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'aoweb_struts_google_verify_content',              'string',       true, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'aoweb_struts_noindex',                            'boolean',     false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'aoweb_struts_google_analytics_new_tracking_code', 'string',       true, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'aoweb_struts_signup_admin_address',               'string',      false, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'brands', 'aoweb_struts_vnc_bind',                           'fkey',        false,  true, false, '', '1.52', null);
select "schema".add_column('reseller', 'brands', 'aoweb_struts_keystore_type',                      'string',      false, false, false, '', '1.53', null);
select "schema".add_column('reseller', 'brands', 'aoweb_struts_keystore_password',                  'string',      false, false, false, '', '1.53', null);
