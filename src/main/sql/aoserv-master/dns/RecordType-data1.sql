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
--                                   type     description                           has_priority  has_weight  has_port  has_flag  has_tag  param_ip
insert into dns."RecordType" values('A',     'IPv4 Address',                        false,        false,      false,    false,    false,    true);
insert into dns."RecordType" values('AAAA',  'IPv6 Address',                        false,        false,      false,    false,    false,    true);
insert into dns."RecordType" values('CAA',   'Certificate Authority Authorization', false,        false,      false,     true,     true,   false);
insert into dns."RecordType" values('CNAME', 'Canonical Name',                      false,        false,      false,    false,    false,   false);
insert into dns."RecordType" values('MX',    'Mail Exchanger',                       true,        false,      false,    false,    false,   false);
insert into dns."RecordType" values('NS',    'Name Server',                         false,        false,      false,    false,    false,   false);
insert into dns."RecordType" values('PTR',   'Pointer',                             false,        false,      false,    false,    false,   false);
insert into dns."RecordType" values('SRV',   'Service',                              true,         true,       true,    false,    false,   false);
insert into dns."RecordType" values('TXT',   'Text Record',                         false,        false,      false,    false,    false,   false);
commit;
