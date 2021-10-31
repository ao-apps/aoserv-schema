/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2008, 2018, 2019, 2020  AO Industries, Inc.
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

alter table payment."CreditCard"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint processor_id_fkey
  foreign key (processor_id)
  references payment."Processor" (provider_id)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint country_code_fkey
  foreign key (country_code)
  references payment."CountryCode" (code)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint created_by_fkey
  foreign key (created_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint encryption_card_number_from_fkey
  foreign key (encryption_card_number_from)
  references pki."EncryptionKey" (id)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint encryption_card_number_recipient_fkey
  foreign key (encryption_card_number_recipient)
  references pki."EncryptionKey" (id)
  on delete restrict
  on update cascade
;
