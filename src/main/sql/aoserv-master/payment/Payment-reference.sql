/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2007, 2010, 2013, 2018, 2019, 2020  AO Industries, Inc.
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

alter table payment."Payment"
  add constraint processor_id_fkey
  foreign key (processor_id)
  references payment."Processor" (provider_id)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint currency_fkey
  foreign key (currency)
  references billing."Currency" ("currencyCode")
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint shipping_country_code_fkey
  foreign key (shipping_country_code)
  references payment."CountryCode" (code)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint credit_card_created_by_fkey
  foreign key (credit_card_created_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint credit_card_accounting_fkey
  foreign key (credit_card_accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint credit_card_country_code_fkey
  foreign key (credit_card_country_code)
  references payment."CountryCode" (code)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint authorization_username_fkey
  foreign key (authorization_username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint capture_username_fkey
  foreign key (capture_username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint void_username_fkey
  foreign key (void_username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
