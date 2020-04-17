/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

alter table linux."UserServer"
  add constraint username_fkey
  foreign key (username)
  references linux."User" (username)
  on delete restrict
  on update cascade
;
alter table linux."UserServer"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table linux."UserServer"
  add constraint autoresponder_from_fkey
  foreign key (autoresponder_from)
  references email."InboxAddress" (id)
  on delete restrict
  on update cascade
;
alter table linux."UserServer"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (id)
  on delete restrict
  on update cascade
;
alter table linux."UserServer"
  add constraint sa_integration_mode_fkey
  foreign key (sa_integration_mode)
  references email."SpamAssassinMode" ("name")
  on delete restrict
  on update cascade
;
