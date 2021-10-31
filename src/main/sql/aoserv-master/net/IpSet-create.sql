/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2012, 2018, 2020  AO Industries, Inc.
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

/* TODO
create sequence net."IpSet_id_seq" cycle;
grant all       on net."IpSet_id_seq" to aoadmin;
grant select    on net."IpSet_id_seq" to aoserv_app;

create table net."IpSet" (
  id integer
    default nextval('net."IpSet_id_seq"')
    primary key,
  accounting text
    not null,
  identifier text
    not null
    check (
      net."IpSet.identifier.validate"(identifier) IS NULL
    )
    unique,
  description text not null,
  -- Allows a subaccount to use the set.  They cannot query the specific set members, however.
  allow_subaccount_use boolean
    not null
);
grant all    on net."IpSet" to aoadmin;
grant select on net."IpSet" to aoserv_app;

BEGIN;
INSERT INTO net."IpSet" VALUES (
    1,
    'AOINDUSTRIES',
    'admins',
    'Service Provider Administrators',
    true
);
INSERT INTO net."IpSet" VALUES (
    2,
    'AOINDUSTRIES',
    'nameservers',
    'Service Provider Name Servers',
    true
);
INSERT INTO net."IpSet" VALUES (
    3,
    'AOINDUSTRIES',
    'master',
    'Service Provider Master Servers',
    true
);
INSERT INTO net."IpSet" VALUES (
    4,
    'AOINDUSTRIES',
    'monitoring',
    'Service Provider Monitoring Servers',
    true
);
INSERT INTO net."IpSet" VALUES (
    5,
    'AOINDUSTRIES',
    'javatator',
    'Javatator Database Administration Web Interface',
    false
);
SELECT setval('net."IpSet_id_seq"', 6, false);
COMMIT;
 */
