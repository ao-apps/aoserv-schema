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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

alter table reseller."Brand"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on update cascade
  on delete restrict
;
alter table reseller."Brand"
  add constraint smtp_linux_server_account_fkey
  foreign key (smtp_linux_server_account)
  references linux."UserServer" (id)
  on update cascade
  on delete restrict
;
alter table reseller."Brand"
  add constraint imap_linux_server_account_fkey
  foreign key (imap_linux_server_account)
  references linux."UserServer" (id)
  on update cascade
  on delete restrict
;
alter table reseller."Brand"
  add constraint support_email_address_fkey
  foreign key (support_email_address)
  references email."Address" (id)
  on update cascade
  on delete restrict
;
alter table reseller."Brand"
  add constraint signup_email_address_fkey
  foreign key (signup_email_address)
  references email."Address" (id)
  on update cascade
  on delete restrict
;
alter table reseller."Brand"
  add constraint ticket_encryption_from_fkey
  foreign key (ticket_encryption_from)
  references pki."EncryptionKey" (id)
  on update cascade
  on delete restrict
;
alter table reseller."Brand"
  add constraint ticket_encryption_recipient_fkey
  foreign key (ticket_encryption_recipient)
  references pki."EncryptionKey" (id)
  on update cascade
  on delete restrict
;
alter table reseller."Brand"
  add constraint signup_encryption_from_fkey
  foreign key (signup_encryption_from)
  references pki."EncryptionKey" (id)
  on update cascade
  on delete restrict
;
alter table reseller."Brand"
  add constraint signup_encryption_recipient_fkey
  foreign key (signup_encryption_recipient)
  references pki."EncryptionKey" (id)
  on update cascade
  on delete restrict
;
alter table reseller."Brand"
  add constraint aoweb_struts_vnc_bind_fkey
  foreign key (aoweb_struts_vnc_bind)
  references net."Bind" (id)
  on update cascade
  on delete restrict
;
