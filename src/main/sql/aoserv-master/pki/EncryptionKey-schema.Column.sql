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

select "schema".add_column('pki', 'encryption_keys', 'pkey',                  'pkey',       false,  true, false, 'a generated unique id', '1.23', null);
select "schema".add_column('pki', 'encryption_keys', 'accounting',            'accounting', false, false, false, 'the accounting code of the business that owns this key', '1.23', null);
select "schema".add_column('pki', 'encryption_keys', 'id',                    'string',     false, false, false, 'the id of the recipient who may decrypt the message', '1.23', null);
select "schema".add_column('pki', 'encryption_keys', 'use_signup_requests',   'boolean',    false, false, false, 'if true, this key may be used for encrypting signup request data (including credit card details)', '1.23', '1.24');
select "schema".add_column('pki', 'encryption_keys', 'signup_signer',         'boolean',    false, false, false, 'if true, this key may be used for signing signup request data (including credit card details)', '1.25', '1.43');
select "schema".add_column('pki', 'encryption_keys', 'signup_recipient',      'boolean',    false, false, false, 'if true, this key may be used for encrypting signup request data (including credit card details)', '1.25', '1.43');
select "schema".add_column('pki', 'encryption_keys', 'use_credit_cards',      'boolean',    false, false, false, 'if true, this key may be used for encrypting credit cards in the credit_cards table', '1.23', '1.24');
select "schema".add_column('pki', 'encryption_keys', 'credit_card_signer',    'boolean',    false, false, false, 'if true, this key may be used for signing credit cards in the credit_cards table', '1.25', '1.30');
select "schema".add_column('pki', 'encryption_keys', 'credit_card_recipient', 'boolean',    false, false, false, 'if true, this key may be used for encrypting credit cards in the credit_cards table', '1.25', '1.30');
