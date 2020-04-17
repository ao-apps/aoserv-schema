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

select "schema".add_column('payment', 'credit_card_processors', 'provider_id',          'string',     false,  true, false, 'the unique ID of this processor', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'accounting',           'accounting', false, false, false, 'the accounting code of the business owning the merchant account', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'class_name',           'string',     false, false, false, 'the classname of the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'param1',               'string',      true, false, false, 'the optional parameters for the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'param2',               'string',      true, false, false, 'the optional parameters for the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'param3',               'string',      true, false, false, 'the optional parameters for the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'param4',               'string',      true, false, false, 'the optional parameters for the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'enabled',              'boolean',    false, false, false, 'the enabled flag', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'weight',               'int',        false, false, false, 'the weight used for multi-processor weighted transaction distribution', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'description',          'string',      true, false, false, 'an optional description of the processor', '1.29', null);
select "schema".add_column('payment', 'credit_card_processors', 'encryption_from',      'fkey',       false, false, false, 'the from that will be used for encryption', '1.31', null);
select "schema".add_column('payment', 'credit_card_processors', 'encryption_recipient', 'fkey',       false, false, false, 'the recipient that will be used for encryption', '1.31', null);
