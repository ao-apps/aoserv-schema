/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2012, 2018, 2020, 2022  AO Industries, Inc.
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
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('lo', true);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('bmc', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('bond0', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('bond1', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('bond2', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('enX0', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('eth0', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('eth1', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('eth2', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('eth3', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('eth4', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('eth5', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('eth6', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('eth7', false);
INSERT INTO net."DeviceId" ("name", "is_loopback") VALUES ('eth8', false);
COMMIT;
