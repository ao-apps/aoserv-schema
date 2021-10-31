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

begin;
insert into distribution."Architecture" values('alpha', 64);
insert into distribution."Architecture" values('amd64', 64);
insert into distribution."Architecture" values('hppa', 64);
insert into distribution."Architecture" values('i286', 16);
insert into distribution."Architecture" values('i386', 32);
insert into distribution."Architecture" values('i486', 32);
insert into distribution."Architecture" values('i586', 32);
insert into distribution."Architecture" values('i686', 32);
insert into distribution."Architecture" values('i686,x86_64', 32);
insert into distribution."Architecture" values('m68k', 32);
insert into distribution."Architecture" values('mips32', 32);
insert into distribution."Architecture" values('mips64', 64);
insert into distribution."Architecture" values('ppc', 64);
insert into distribution."Architecture" values('sparc', 32);
insert into distribution."Architecture" values('sparc64', 64);
insert into distribution."Architecture" values('x86_64', 64);
commit;
