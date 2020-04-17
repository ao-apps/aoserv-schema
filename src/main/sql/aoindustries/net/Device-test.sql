/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2010, 2011, 2013, 2018, 2020  AO Industries, Inc.
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

begin;
insert into net."Device" values(
    3,
	2,
	'lo',
	'loopback device',
	null, -- delete_route
    null, -- gateway
    null, -- network
    null, -- broadcast,
    null, -- mac_address
    null, -- max_bit_rate
    null, -- monitoring_bit_rate_low
    null, -- monitoring_bit_rate_medium
    null, -- monitoring_bit_rate_high
    null  -- monitoring_bit_rate_critical
);
insert into net."Device" values(
    4,
	2,
	'eth0',
	'Nested Test Servers',
	null,
	'192.168.1.3',
	'192.168.1.0',
	'192.168.1.255',
	'00:16:3E:66:FE:33',
	1000000000,
    2000000,
    3000000,
    4000000,
    5000000
);
commit;
