/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2018, 2020  AO Industries, Inc.
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

begin;
insert into
  "web.jboss"."Version"
select
  tv1.id,
  tv2.id,
  '/usr/aoserv/templates/jboss-2.2.2'
from
  distribution."SoftwareVersion" tv1,
  distribution."SoftwareVersion" tv2
where
  tv1."name"='JBoss'
  and tv1.version='2.2.2'
  and tv2."name"='jakarta-tomcat'
  and tv2.version='3.2.4'
  and tv1.operating_system_version=tv2.operating_system_version
;
commit;
