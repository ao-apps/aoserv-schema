/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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
-- Mandriva 2006.0
insert into postgresql."Version" values(14, '7.1');
insert into postgresql."Version" values(15, '7.2');
insert into postgresql."Version" values(16, '7.3');
insert into postgresql."Version" values(17, '8.0');
insert into postgresql."Version" values(18, '8.1');
-- RedHat ES 4
insert into postgresql."Version" values(2586, '8.1');
-- CentOS 5
insert into postgresql."Version" values(3315, '7.1');
insert into postgresql."Version" values(3316, '7.2');
insert into postgresql."Version" values(3317, '7.3');
insert into postgresql."Version" values(3296, '8.1');
insert into postgresql."Version" values(3298, '8.3');
insert into postgresql."Version" values(3342, '9.2');
insert into postgresql."Version" values(3346, '9.4');
-- CentOS 7
insert into postgresql."Version" values(3351, '8.3');
insert into postgresql."Version" values(3352, '9.2');
insert into postgresql."Version" values(3353, '9.4');
insert into postgresql."Version" values(3369, '9.5');
insert into postgresql."Version" values(3370, '9.6');
insert into postgresql."Version" values(3371, '10');
insert into postgresql."Version" values(3380, '11');
insert into postgresql."Version" values(3388, '12');
commit;
