/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2019, 2020  AO Industries, Inc.
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

select "schema".add_column('billing', 'NoticeLog.balance', 'id',        'pkey',   false,  true, false, 'a generated primary key',                         '1.83.0', null);
select "schema".add_column('billing', 'NoticeLog.balance', 'noticeLog', 'fkey',   false, false, false, 'the ID of the NoticeLog this balance is part of', '1.83.0', null);
select "schema".add_column('billing', 'NoticeLog.balance', 'balance',   'money',  false, false, false, 'the balance for a single currency',               '1.83.0', null);
