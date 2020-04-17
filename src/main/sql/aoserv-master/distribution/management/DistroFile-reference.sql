/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2010, 2013, 2017, 2018, 2020  AO Industries, Inc.
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

alter table "distribution.management"."DistroFile"
  add constraint operating_system_version_fkey
  foreign key (operating_system_version)
  references distribution."OperatingSystemVersion" (id)
  on delete restrict
  on update cascade
;
alter table "distribution.management"."DistroFile"
  add constraint type_fkey
  foreign key ("type")
  references "distribution.management"."DistroFileType" ("type")
  on delete restrict
  on update cascade
;
alter table "distribution.management"."DistroFile"
  add constraint linux_account_fkey
  foreign key (linux_account)
  references linux."User" (username)
  on delete restrict
  on update cascade
;
alter table "distribution.management"."DistroFile"
  add constraint linux_group_fkey
  foreign key (linux_group)
  references linux."Group" ("name")
  on delete restrict
  on update cascade
;
