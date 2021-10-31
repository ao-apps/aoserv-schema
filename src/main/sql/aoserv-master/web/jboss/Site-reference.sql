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

alter table "web.jboss"."Site"
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references "web.tomcat"."Site" (httpd_site)
  on delete restrict
  on update cascade
;
alter table "web.jboss"."Site"
  add constraint version_fkey
  foreign key (version)
  references "web.jboss"."Version" (version)
  on delete restrict
  on update cascade
;
alter table "web.jboss"."Site"
  add constraint jnp_bind_fkey
  foreign key (jnp_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
alter table "web.jboss"."Site"
  add constraint webserver_bind_fkey
  foreign key (webserver_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
alter table "web.jboss"."Site"
  add constraint rmi_bind_fkey
  foreign key (rmi_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
alter table "web.jboss"."Site"
  add constraint hypersonic_bind_fkey
  foreign key (hypersonic_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
alter table "web.jboss"."Site"
  add constraint jmx_bind_fkey
  foreign key (jmx_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
