/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021  AO Industries, Inc.
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
insert into "web.tomcat"."Version" values(1941, '/usr/apache/jakarta/tomcat/3.1', false);
insert into "web.tomcat"."Version" values(1944, '/usr/apache/jakarta/tomcat/3.2', false);
insert into "web.tomcat"."Version" values(2525, '/usr/apache/jakarta/tomcat/4.1', true);
insert into "web.tomcat"."Version" values(2583, '/usr/apache/jakarta/tomcat/5.5', true);
insert into "web.tomcat"."Version" values(3232, '/usr/apache/jakarta/tomcat/3.1', false);
insert into "web.tomcat"."Version" values(3233, '/usr/apache/jakarta/tomcat/3.2', false);
insert into "web.tomcat"."Version" values(3234, '/usr/apache/jakarta/tomcat/4.1', true);
insert into "web.tomcat"."Version" values(3235, '/usr/apache/jakarta/tomcat/5.5', true);
insert into "web.tomcat"."Version" values(3228, '/opt/apache-tomcat-5.5', true);
-- CentOS 5
-- CentOS 7
insert into "web.tomcat"."Version" values(3358, '/opt/apache-tomcat-6.0', true);
insert into "web.tomcat"."Version" values(3359, '/opt/apache-tomcat-7.0', true);
insert into "web.tomcat"."Version" values(3360, '/opt/apache-tomcat-8.0', true);
insert into "web.tomcat"."Version" values(3376, '/opt/apache-tomcat-8.5', true);
insert into "web.tomcat"."Version" values(3377, '/opt/apache-tomcat-9.0', true);
insert into "web.tomcat"."Version" values(3395, '/opt/apache-tomcat-10.0', true);
commit;
