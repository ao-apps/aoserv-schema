/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2010, 2011, 2013, 2018, 2020  AO Industries, Inc.
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

alter table linux."Server"
  add constraint server_fkey
  foreign key (server)
  references net."Host" (id)
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint daemon_bind_fkey
  foreign key (daemon_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint failover_server_fkey
  foreign key (failover_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint "daemonDeviceId_fkey"
  foreign key ("daemonDeviceId")
  references net."DeviceId" ("name")
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint daemon_connect_bind_fkey
  foreign key (daemon_connect_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint time_zone_fkey
  foreign key (time_zone)
  references linux."TimeZone" ("name")
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint jilter_bind_fkey
  foreign key (jilter_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
