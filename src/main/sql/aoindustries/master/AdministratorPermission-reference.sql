/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2007, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

alter table master."AdministratorPermission"
  add constraint username_fkey
  foreign key (username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table master."AdministratorPermission"
  add constraint permission_fkey
  foreign key ("permission")
  references master."Permission" ("name")
  on delete restrict
  on update cascade
;
