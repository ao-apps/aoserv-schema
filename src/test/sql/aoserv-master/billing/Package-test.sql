/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2012, 2018, 2020  AO Industries, Inc.
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
insert into billing."Package" values(
    2,
	'TEST',
	'TEST',
	1,
	'2004-11-28 19:14:02.812879-06',
	'orion',
	null,
	null,
	null,
	null,
	null,
	null,
	null
);
insert into billing."Package" values(
    4,
	'NMW',
	'NMW',
	1,
	'2006-03-21 13:11:00-06',
	'orion',
	null,
	null,
	null,
	null,
	null,
	null,
	null
);
SELECT setval ('billing."Package_id_seq"', 5, true);
commit;
