/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2009, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

create unique index "Brand_smtp_uni" on reseller."Brand" (
    smtp_linux_server_account
);
create unique index "Brand_imap_uni" on reseller."Brand" (
    imap_linux_server_account
);
create unique index "Brand_support_email_address_uni" on reseller."Brand" (
    support_email_address
);
create unique index "Brand_support_email_display_uni" on reseller."Brand" (
    support_email_display
);
create unique index "Brand_signup_email_address_uni" on reseller."Brand" (
    signup_email_address
);
create unique index "Brand_signup_email_display_uni" on reseller."Brand" (
    signup_email_display
);
create unique index "Brand_aoweb_struts_http_url_base_uni" on reseller."Brand" (
    aoweb_struts_http_url_base
);
create unique index "Brand_aoweb_struts_https_url_base_uni" on reseller."Brand" (
    aoweb_struts_https_url_base
);
create unique index "Brand_aoweb_struts_google_verify_content_uni" on reseller."Brand" (
    aoweb_struts_google_verify_content
);
create unique index "Brand_aoweb_struts_google_analytics_new_tracking_code_uni" on reseller."Brand" (
    aoweb_struts_google_analytics_new_tracking_code
);
create index "Brand_ticket_encryption_from_fkey" on reseller."Brand" (
    ticket_encryption_from
);
create index "Brand_ticket_encryption_recipient_fkey" on reseller."Brand" (
    ticket_encryption_recipient
);
create index "Brand_signup_encryption_from_fkey" on reseller."Brand" (
    signup_encryption_from
);
create index "Brand_signup_encryption_recipient_fkey" on reseller."Brand" (
    signup_encryption_recipient
);
create unique index "Brand_aoweb_struts_vnc_bind_uni" on reseller."Brand" (
    aoweb_struts_vnc_bind
);
