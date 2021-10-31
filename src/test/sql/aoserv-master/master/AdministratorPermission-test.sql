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
insert into master."AdministratorPermission" values(1, 'orion', 'set_mysql_server_user_password');
insert into master."AdministratorPermission" values(2, 'testuser', 'set_mysql_server_user_password');
insert into master."AdministratorPermission" values(3, 'orion', 'cancel_business');
insert into master."AdministratorPermission" values(4, 'testuser', 'add_ticket');
insert into master."AdministratorPermission" values(5, 'orion', 'add_ticket');
insert into master."AdministratorPermission" values(6, 'testuser', 'edit_ticket');
insert into master."AdministratorPermission" values(7, 'orion', 'edit_ticket');
insert into master."AdministratorPermission" values(8, 'aoweb_app', 'add_ticket');
insert into master."AdministratorPermission" values(9, 'test_svr', 'add_ticket');

SELECT setval ('master."AdministratorPermission_id_seq"', 10, true);
commit;
