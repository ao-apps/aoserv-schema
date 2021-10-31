/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2008, 2009, 2010, 2011, 2013, 2018, 2020  AO Industries, Inc.
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

alter table infrastructure."VirtualServer"
  add constraint server_fkey
  foreign key (server)
  references net."Host" (id)
  on delete restrict
  on update cascade
;
alter table infrastructure."VirtualServer"
  add constraint minimum_processor_type_fkey
  foreign key (minimum_processor_type)
  references infrastructure."ProcessorType" ("type")
  on delete restrict
  on update cascade
;
alter table infrastructure."VirtualServer"
  add constraint minimum_processor_architecture_fkey
  foreign key (minimum_processor_architecture)
  references distribution."Architecture" ("name")
  on delete restrict
  on update cascade
;
