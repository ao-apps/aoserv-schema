/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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

select "schema".add_column('payment', 'credit_cards', 'pkey',                             'pkey',       false,  true, false, 'primary key value', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'processor_id',                     'string',     false, false, false, 'the unique ID of the merchant services provider that is storing the card number and expiration date', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'accounting',                       'accounting', false, false, false, 'the accounting code for the card', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'group_name',                       'string',      true, false, false, 'any application-specific grouping', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'card_number',                      'string',     false, false, false, 'the encrypted card number', '1.0a100', '1.28');
select "schema".add_column('payment', 'credit_cards', 'card_info',                        'string',     false, false, false, 'the masked card number', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'expirationMonth',                  'short',       true, false, false, 'the card expiration month', '1.82.0', null);
select "schema".add_column('payment', 'credit_cards', 'expirationYear',                   'short',       true, false, false, 'the card expiration year', '1.82.0', null);
select "schema".add_column('payment', 'credit_cards', 'provider_unique_id',               'string',     false, false, false, 'the per-provider unique ID allowing use of this credit card for new transactions', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'expiration_month',                 'string',     false, false, false, 'the encrypted expiration month', '1.0a100', '1.28');
select "schema".add_column('payment', 'credit_cards', 'expiration_year',                  'string',     false, false, false, 'the encrypted expiration year', '1.0a100', '1.28');
select "schema".add_column('payment', 'credit_cards', 'cardholder_name',                  'string',     false, false, false, 'the encrypted card holders name', '1.0a100', '1.28');
select "schema".add_column('payment', 'credit_cards', 'first_name',                       'string',     false, false, false, 'the first name', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'last_name',                        'string',     false, false, false, 'the last name', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'company_name',                     'string',      true, false, false, 'the company name', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'email',                            'email',       true, false, false, 'the email address', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'phone',                            'phone',       true, false, false, 'the daytime phone number', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'fax',                              'phone',       true, false, false, 'the fax number', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'customerId',                       'string',      true, false, false, 'the merchant-specific unique customer ID', '1.82.1', null);
select "schema".add_column('payment', 'credit_cards', 'customer_tax_id',                  'string',      true, false, false, 'the social security number of employer identification number', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'street_address',                   'string',     false, false, false, 'the encrypted card holders street address', '1.0a100', '1.28');
select "schema".add_column('payment', 'credit_cards', 'street_address1',                  'string',     false, false, false, 'the first line of the street address', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'street_address2',                  'string',      true, false, false, 'the second line of the street address', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'city',                             'city',       false, false, false, 'the encrypted card holders city', '1.0a100', '1.28');
select "schema".add_column('payment', 'credit_cards', 'city',                             'city',       false, false, false, 'the card holders city', '1.29', '1.68');
select "schema".add_column('payment', 'credit_cards', 'city',                             'string',     false, false, false, 'the card holders city', '1.69', null);
select "schema".add_column('payment', 'credit_cards', 'state',                            'state',       true, false, false, 'the encrypted card holders state, null indicates out of country', '1.0a100', '1.28');
select "schema".add_column('payment', 'credit_cards', 'state',                            'state',       true, false, false, 'the card holders state', '1.29', '1.68');
select "schema".add_column('payment', 'credit_cards', 'state',                            'string',      true, false, false, 'the card holders state', '1.69', null);
select "schema".add_column('payment', 'credit_cards', 'zip',                              'zip',         true, false, false, 'the encrypted card holders zip code', '1.0a100', '1.28');
select "schema".add_column('payment', 'credit_cards', 'postal_code',                      'zip',         true, false, false, 'the card holders postal code', '1.29', '1.68');
select "schema".add_column('payment', 'credit_cards', 'postal_code',                      'string',      true, false, false, 'the card holders postal code', '1.69', null);
select "schema".add_column('payment', 'credit_cards', 'country_code',                     'country',    false, false, false, 'the two-character country code', '1.29', '1.68');
select "schema".add_column('payment', 'credit_cards', 'country_code',                     'string',     false, false, false, 'the two-character country code', '1.69', null);
select "schema".add_column('payment', 'credit_cards', 'created',                          'time',       false, false, false, 'the time the card was added to the database', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'created_by',                       'username',   false, false, false, 'the business_administrator who added the card to the database', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'principal_name',                   'string',      true, false, false, 'the application-provided principal name of the person added the card to the database', '1.29', null);
select "schema".add_column('payment', 'credit_cards', 'use_monthly',                      'boolean',    false, false, false, 'if <code>true</code> the card will be used monthly', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'active',                           'boolean',    false, false, false, 'if <code>true</code> the card is currently active', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'deactivated_on',                   'time',        true, false, false, 'the time the card was deactivated', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'deactivate_reason',                'string',      true, false, false, 'the reason the card was deactivated', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'priority',                         'int',        false, false, false, 'the priority of the card, lower is used first', '1.0a100', '1.28');
select "schema".add_column('payment', 'credit_cards', 'description',                      'string',      true, false, false, 'any comment or description', '1.0a100', null);
select "schema".add_column('payment', 'credit_cards', 'encrypted_card_number',            'string',      true, false, false, 'the card number stored encrypted', '1.31', null);
select "schema".add_column('payment', 'credit_cards', 'encryption_card_number_from',      'fkey',        true, false, false, 'the from that was used for card number encryption', '1.31', null);
select "schema".add_column('payment', 'credit_cards', 'encryption_card_number_recipient', 'fkey',        true, false, false, 'the recipient that was used for card number encryption', '1.31', null);
select "schema".add_column('payment', 'credit_cards', 'encrypted_expiration',             'string',      true, false, false, 'the expiration stored encrypted', '1.31', '1.81.22');
select "schema".add_column('payment', 'credit_cards', 'encryption_expiration_from',       'fkey',        true, false, false, 'the from that was used for expiration encryption', '1.31', '1.81.22');
select "schema".add_column('payment', 'credit_cards', 'encryption_expiration_recipient',  'fkey',        true, false, false, 'the recipient that was used for expiration encryption', '1.31', '1.81.22');
