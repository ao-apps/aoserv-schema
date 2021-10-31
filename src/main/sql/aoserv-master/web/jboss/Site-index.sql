/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
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

create index "Site_version_fkey" on "web.jboss"."Site" (
  version
);
create index "Site_jnp_bind_fkey" on "web.jboss"."Site" (
  jnp_bind
);
create index "Site_webserver_bind_fkey" on "web.jboss"."Site" (
  webserver_bind
);
create index "Site_rmi_bind_fkey" on "web.jboss"."Site" (
  rmi_bind
);
create index "Site_hypersonic_bind_fkey" on "web.jboss"."Site" (
  hypersonic_bind
);
create index "Site_jmx_bind_fkey" on "web.jboss"."Site" (
  jmx_bind
);

