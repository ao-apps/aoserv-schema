/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2012, 2018, 2020, 2022, 2025, 2026  AO Industries, Inc.
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

BEGIN;
-- Loopback devices
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('lo', true);
-- Non-loopback devices
INSERT INTO net."DeviceId" ("name") VALUES ('bmc');
-- Legacy non-role-based bonding
INSERT INTO net."DeviceId" ("name") VALUES ('bond0');
INSERT INTO net."DeviceId" ("name") VALUES ('bond1');
INSERT INTO net."DeviceId" ("name") VALUES ('bond2');
-- Xen domU
INSERT INTO net."DeviceId" ("name") VALUES ('enX0');
INSERT INTO net."DeviceId" ("name") VALUES ('enX1');
-- Legacy Xen dom0 and domU
INSERT INTO net."DeviceId" ("name") VALUES ('eth0');
INSERT INTO net."DeviceId" ("name") VALUES ('eth1');
INSERT INTO net."DeviceId" ("name") VALUES ('eth2');
INSERT INTO net."DeviceId" ("name") VALUES ('eth3');
INSERT INTO net."DeviceId" ("name") VALUES ('eth4');
INSERT INTO net."DeviceId" ("name") VALUES ('eth5');
INSERT INTO net."DeviceId" ("name") VALUES ('eth6');
INSERT INTO net."DeviceId" ("name") VALUES ('eth7');
INSERT INTO net."DeviceId" ("name") VALUES ('eth8');
-- Xen bridge
INSERT INTO net."DeviceId" ("name") VALUES ('xenbr0');
-- Non-specific WAN (link to the outside)
INSERT INTO net."DeviceId" ("name") VALUES ('wan');
INSERT INTO net."DeviceId" ("name") VALUES ('wan_link0');
INSERT INTO net."DeviceId" ("name") VALUES ('wan_link1');
INSERT INTO net."DeviceId" ("name") VALUES ('wan_bond');
-- Non-specific internal network
INSERT INTO net."DeviceId" ("name") VALUES ('int');
INSERT INTO net."DeviceId" ("name") VALUES ('int_link0');
INSERT INTO net."DeviceId" ("name") VALUES ('int_link1');
INSERT INTO net."DeviceId" ("name") VALUES ('int_bond');
-- Xen hypervisor traffic, WAN (link to the outside)
INSERT INTO net."DeviceId" ("name") VALUES ('xen_wan');
INSERT INTO net."DeviceId" ("name") VALUES ('xen_wan_link0');
INSERT INTO net."DeviceId" ("name") VALUES ('xen_wan_link1');
INSERT INTO net."DeviceId" ("name") VALUES ('xen_wan_bond');
-- Xen hypervisor traffic, internal network
INSERT INTO net."DeviceId" ("name") VALUES ('xen_int');
INSERT INTO net."DeviceId" ("name") VALUES ('xen_int_link0');
INSERT INTO net."DeviceId" ("name") VALUES ('xen_int_link1');
INSERT INTO net."DeviceId" ("name") VALUES ('xen_int_bond');
-- Management network, WAN (link to the outside)
INSERT INTO net."DeviceId" ("name") VALUES ('man_wan');
INSERT INTO net."DeviceId" ("name") VALUES ('man_wan_link0');
INSERT INTO net."DeviceId" ("name") VALUES ('man_wan_link1');
INSERT INTO net."DeviceId" ("name") VALUES ('man_wan_bond');
-- Management network, internal network
INSERT INTO net."DeviceId" ("name") VALUES ('man_int');
INSERT INTO net."DeviceId" ("name") VALUES ('man_int_link0');
INSERT INTO net."DeviceId" ("name") VALUES ('man_int_link1');
INSERT INTO net."DeviceId" ("name") VALUES ('man_int_bond');
-- DRBD replication network, internal network
INSERT INTO net."DeviceId" ("name") VALUES ('drbd_int_link0');
INSERT INTO net."DeviceId" ("name") VALUES ('drbd_int_link1');
INSERT INTO net."DeviceId" ("name") VALUES ('drbd_int_link2');
INSERT INTO net."DeviceId" ("name") VALUES ('drbd_int_link3');
INSERT INTO net."DeviceId" ("name") VALUES ('drbd_int_bond');
COMMIT;
