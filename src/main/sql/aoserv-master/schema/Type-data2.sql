/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020, 2021  AO Industries, Inc.
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

insert into "schema"."Type" values( 0, 'accounting',              '1.0a100', null);
insert into "schema"."Type" values( 1, 'boolean',                 '1.0a100', null);
insert into "schema"."Type" values( 2, 'byte',                    '1.0a100', '1.68');
insert into "schema"."Type" values( 3, 'city',                    '1.0a100', '1.68');
insert into "schema"."Type" values( 4, 'country',                 '1.0a100', '1.68');
insert into "schema"."Type" values( 5, 'date',                    '1.0a100', null);
insert into "schema"."Type" values( 6, 'decimal_2',               '1.0a100', null);
insert into "schema"."Type" values( 7, 'decimal_3',               '1.0a100', null);
insert into "schema"."Type" values( 8, 'double',                  '1.0a100', null);
insert into "schema"."Type" values( 9, 'email',                   '1.0a100', null);
insert into "schema"."Type" values(10, 'fkey',                    '1.0a100', null);
insert into "schema"."Type" values(11, 'float',                   '1.0a100', null);
insert into "schema"."Type" values(12, 'hostname',                '1.0a100', null);
insert into "schema"."Type" values(13, 'int',                     '1.0a100', null);
insert into "schema"."Type" values(14, 'interval',                '1.0a100', null);
insert into "schema"."Type" values(15, 'ip_address',              '1.0a100', null);
insert into "schema"."Type" values(16, 'long',                    '1.0a100', null);
insert into "schema"."Type" values(17, 'octal_int',               '1.0a100', '1.68');
insert into "schema"."Type" values(18, 'octal_long',              '1.0a100', null);
insert into "schema"."Type" values(19, 'package',                 '1.0a100', '1.80');
insert into "schema"."Type" values(20, 'pkey',                    '1.0a100', null);
insert into "schema"."Type" values(21, 'path',                    '1.0a100', null);
insert into "schema"."Type" values(22, 'phone',                   '1.0a100', null);
insert into "schema"."Type" values(23, 'short',                   '1.0a100', null);
insert into "schema"."Type" values(24, 'state',                   '1.0a100', '1.68');
insert into "schema"."Type" values(25, 'string',                  '1.0a100', null);
insert into "schema"."Type" values(26, 'time',                    '1.0a100', null);
insert into "schema"."Type" values(27, 'url',                     '1.0a100', null);
insert into "schema"."Type" values(28, 'username',                '1.0a100', null);
insert into "schema"."Type" values(29, 'zip',                     '1.0a100', '1.68');
insert into "schema"."Type" values(30, 'zone',                    '1.0a100', null);
insert into "schema"."Type" values(31, 'big_decimal',             '1.31', null);
insert into "schema"."Type" values(32, 'domain_label',            '1.69', null);
insert into "schema"."Type" values(33, 'domain_labels',           '1.69', null);
insert into "schema"."Type" values(34, 'domain_name',             '1.69', null);
insert into "schema"."Type" values(35, 'gecos',                   '1.69', null);
insert into "schema"."Type" values(36, 'group_id',                '1.69', null);
insert into "schema"."Type" values(37, 'hashed_password',         '1.69', null);
insert into "schema"."Type" values(38, 'linux_id',                '1.69', null);
insert into "schema"."Type" values(39, 'mac_address',             '1.69', null);
insert into "schema"."Type" values(40, 'money',                   '1.69', null);
insert into "schema"."Type" values(41, 'mysql_database_name',     '1.69', null);
insert into "schema"."Type" values(42, 'mysql_server_name',       '1.69', null);
insert into "schema"."Type" values(43, 'mysql_table_name',        '1.69', null);
insert into "schema"."Type" values(44, 'mysql_username',          '1.69', null);
insert into "schema"."Type" values(45, 'net_port',                '1.69', null);
insert into "schema"."Type" values(46, 'postgres_database_name',  '1.69', null);
insert into "schema"."Type" values(47, 'postgres_server_name',    '1.69', null);
insert into "schema"."Type" values(48, 'postgres_username',       '1.69', null);
insert into "schema"."Type" values(49, 'firewalld_zone_name',     '1.81.0', null);
insert into "schema"."Type" values(50, 'linux_username',          '1.81.22', null);
insert into "schema"."Type" values(51, 'Identifier',              '1.83.0', null);
insert into "schema"."Type" values(52, 'SmallIdentifier',         '1.83.0', null);
insert into "schema"."Type" values(53, 'HashedKey',               '1.84.13', null);
