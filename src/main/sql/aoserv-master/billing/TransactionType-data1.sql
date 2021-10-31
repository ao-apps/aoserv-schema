/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2013, 2015, 2018, 2020  AO Industries, Inc.
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

COPY billing."TransactionType" FROM stdin;
aoserv	f
backup	f
bandwidth	f
colocation	f
consulting	f
dedicated	f
disk	f
httpd	f
ip	f
javavm	f
managed	f
payment	t
pop	f
site	f
sysadmin	f
user	f
virtual	f
phone_line	f
cancel	t
credit	t
donation	t
other	f
shipping	f
purchase	f
referral	t
refund	t
reseller	f
\.
