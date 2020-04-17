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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

select "schema".add_column('account', 'businesses', 'accounting',             'accounting', false,  true, false, 'the unique identifier for this business.', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'contract_version',      'string',       true, false, false, 'the version number of the contract', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'created',               'time',        false, false, false, 'the time the account was created', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'canceled',              'time',         true, false, false, 'the time the account was deactivated', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'cancel_reason',         'string',       true, false, false, 'the reason the account was canceled', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'parent',                'accounting',   true, false, false, 'the parent business to this one', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'can_add_backup_server', 'boolean',     false, false, false, 'the business may add servers to the backup system', '1.0a102', null);
select "schema".add_column('account', 'businesses', 'can_add_businesses',    'boolean',     false, false, false, E'if <code>true</code> this business can create\nand be the parent of other businesses', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'can_set_prices',        'boolean',     false, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('account', 'businesses', 'can_see_prices',        'boolean',     false, false, false, 'if <code>false</code>, prices are filtered', '1.0a103', null);
select "schema".add_column('account', 'businesses', 'disable_log',           'fkey',         true, false, false, 'indicates the business is disabled', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'do_not_disable_reason', 'string',       true, false, false, 'a reason why we should not disable the account', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'auto_enable',           'boolean',     false, false, false, E'allows the account to be automatically reenabled\non payment', '1.0a100', null);
select "schema".add_column('account', 'businesses', 'bill_parent',           'boolean',     false, false, false, E'if <code>true</code>, the parent business will\nbe charged for all resources used by this\naccount', '1.0a100', null);
