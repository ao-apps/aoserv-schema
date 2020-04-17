/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

-- TODO: Make an enum both in PostgreSQL and Java
begin;
insert into ticket."Status" values('junk', 0);
insert into ticket."Status" values('deleted', 1);
insert into ticket."Status" values('closed', 2);
insert into ticket."Status" values('bounced', 3);
insert into ticket."Status" values('hold', 4);
insert into ticket."Status" values('open', 5);
commit;

--COPY ticket."Status" FROM stdin;
--New	New ticket - no work has been done
--Underway	Work is currently being done on this ticket
--Bounced	Awaiting additional information from client - cannot proceed
--Admin Hold	This ticket is on hold for administrative reasons
--Client Hold	This ticket is on hold per client request
--Admin Kill	Ticket was killed for administrative reasons
--Client Kill	Ticket was killed per client request
--Completed	All requested service has been completed
--\.
