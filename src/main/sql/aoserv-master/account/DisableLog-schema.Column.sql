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

select "schema".add_column('account', 'disable_log', 'pkey',           'pkey',       false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('account', 'disable_log', 'time',           'time',       false, false, false, 'the time the stuff was disabled', '1.0a100', null);
select "schema".add_column('account', 'disable_log', 'accounting',     'accounting', false, false, false, 'the business whose resources are being disabled', '1.0a100', null);
select "schema".add_column('account', 'disable_log', 'disabled_by',    'username',   false, false, false, 'the person who disabled the accounts', '1.0a100', null);
select "schema".add_column('account', 'disable_log', 'disable_reason', 'string',      true, false, false, 'the optional reason the accounts were disabled', '1.0a100', null);
