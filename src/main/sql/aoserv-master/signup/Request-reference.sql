/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2007, 2008, 2009, 2018, 2020  AO Industries, Inc.
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

alter table signup."Request"
  add constraint brand_fkey
  foreign key (brand)
  references reseller."Brand" (accounting)
  on delete restrict
  on update cascade
;
alter table signup."Request"
  add constraint package_definition_fkey
  foreign key (package_definition)
  references billing."PackageDefinition" (id)
  on delete restrict
  on update cascade
;
alter table signup."Request"
  add constraint business_country_fkey
  foreign key (business_country)
  references payment."CountryCode" (code)
  on delete restrict
  on update cascade
;
alter table signup."Request"
  add constraint ba_country_fkey
  foreign key (ba_country)
  references payment."CountryCode" (code)
  on delete restrict
  on update cascade
;
alter table signup."Request"
  add constraint encryption_from_fkey
  foreign key (encryption_from)
  references pki."EncryptionKey" (id)
  on delete restrict
  on update cascade
;
alter table signup."Request"
  add constraint encryption_recipient_fkey
  foreign key (encryption_recipient)
  references pki."EncryptionKey" (id)
  on delete restrict
  on update cascade
;
alter table signup."Request"
  add constraint completed_by_fkey
  foreign key (completed_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
