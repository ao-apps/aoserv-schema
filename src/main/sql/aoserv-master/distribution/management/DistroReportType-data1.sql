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
insert into "distribution.management"."DistroReportType" values('BD', 'Big Directory');
insert into "distribution.management"."DistroReportType" values('DI', 'Digest');
insert into "distribution.management"."DistroReportType" values('EX', 'Extra');
insert into "distribution.management"."DistroReportType" values('GR', 'Group Mismatch');
insert into "distribution.management"."DistroReportType" values('HI', 'Hidden');
insert into "distribution.management"."DistroReportType" values('LN', 'Length');
insert into "distribution.management"."DistroReportType" values('MI', 'Missing');
insert into "distribution.management"."DistroReportType" values('OW', 'Owner Mismatch');
insert into "distribution.management"."DistroReportType" values('NO', 'No Owner');
insert into "distribution.management"."DistroReportType" values('NG', 'No Group');
insert into "distribution.management"."DistroReportType" values('PR', 'Permissions');
insert into "distribution.management"."DistroReportType" values('SU', 'SetUID');
insert into "distribution.management"."DistroReportType" values('SY', 'Symlink');
insert into "distribution.management"."DistroReportType" values('TY', 'Type');
commit;
