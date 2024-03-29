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

select "schema".add_column('payment', 'credit_card_transactions', 'pkey',                                                    'pkey',        false,  true, false, 'the unique ID of this transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'processor_id',                                            'string',      false, false, false, 'the name of the processor used for this transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'accounting',                                              'accounting',  false, false, false, 'the accounting code for the source of this transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'group_name',                                              'string',       true, false, false, 'the application-provided grouping for this transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'test_mode',                                               'boolean',     false, false, false, 'indicates this is a test transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'duplicate_window',                                        'int',         false, false, false, 'the number of seconds for duplicate transaction detection', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'order_number',                                            'string',       true, false, false, 'the merchant-provided order number for this transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'currency_code',                                           'string',      false, false, false, 'the 3-character ISO 4217 country code for the currency used in this transaction', '1.29', '1.82.1');
select "schema".add_column('payment', 'credit_card_transactions', 'amount',                                                  'decimal_2',   false, false, false, 'the amount of the transaction', '1.29', '1.30');
select "schema".add_column('payment', 'credit_card_transactions', 'amount',                                                  'big_decimal', false, false, false, 'the amount of the transaction', '1.31', '1.82.1');
select "schema".add_column('payment', 'credit_card_transactions', 'amount',                                                  'money',       false, false, false, 'the amount of the transaction', '1.83.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'tax_amount',                                              'decimal_2',    true, false, false, 'the tax amount of the transaction', '1.29', '1.30');
select "schema".add_column('payment', 'credit_card_transactions', 'tax_amount',                                              'big_decimal',  true, false, false, 'the tax amount of the transaction', '1.31', '1.82.1');
select "schema".add_column('payment', 'credit_card_transactions', 'taxAmount',                                               'money',        true, false, false, 'the tax amount of the transaction', '1.83.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'tax_exempt',                                              'boolean',     false, false, false, 'the taxExempt flag for this transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_amount',                                         'decimal_2',    true, false, false, 'the shipping amount for this transaction', '1.29', '1.30');
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_amount',                                         'big_decimal',  true, false, false, 'the shipping amount for this transaction', '1.31', '1.82.1');
select "schema".add_column('payment', 'credit_card_transactions', 'shippingAmount',                                          'money',        true, false, false, 'the shipping amount for this transaction', '1.83.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'duty_amount',                                             'decimal_2',    true, false, false, 'the duty amount for this transaction', '1.29', '1.30');
select "schema".add_column('payment', 'credit_card_transactions', 'duty_amount',                                             'big_decimal',  true, false, false, 'the duty amount for this transaction', '1.31', '1.82.1');
select "schema".add_column('payment', 'credit_card_transactions', 'dutyAmount',                                              'money',        true, false, false, 'the duty amount for this transaction', '1.83.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_first_name',                                     'string',       true, false, false, 'the shipping first name', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_last_name',                                      'string',       true, false, false, 'the shipping last name', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_company_name',                                   'string',       true, false, false, 'the shipping company name', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_street_address1',                                'string',       true, false, false, 'the shipping address line 1', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_street_address2',                                'string',       true, false, false, 'the shipping address line 2', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_city',                                           'city',         true, false, false, 'the shipping city', '1.29', '1.68');
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_city',                                           'string',       true, false, false, 'the shipping city', '1.69', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_state',                                          'state',        true, false, false, 'the shipping state', '1.29', '1.68');
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_state',                                          'string',       true, false, false, 'the shipping state', '1.69', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_postal_code',                                    'zip',          true, false, false, 'the shipping postal code', '1.29', '1.68');
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_postal_code',                                    'string',       true, false, false, 'the shipping postal code', '1.69', null);
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_country_code',                                   'country',      true, false, false, 'the shipping two-digit ISO 3166-1 alpha-2 country code', '1.29', '1.68');
select "schema".add_column('payment', 'credit_card_transactions', 'shipping_country_code',                                   'string',       true, false, false, 'the shipping two-digit ISO 3166-1 alpha-2 country code', '1.69', null);
select "schema".add_column('payment', 'credit_card_transactions', 'email_customer',                                          'boolean',     false, false, false, 'the flag indicating the API should generate an email to the customer', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'merchant_email',                                          'email',        true, false, false, 'the email address of the merchant', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'invoice_number',                                          'string',       true, false, false, 'the merchant-provided invoice number', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'purchase_order_number',                                   'string',       true, false, false, 'the merchant-provided purchase order number', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'description',                                             'string',       true, false, false, 'the merchant-provided description of this transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_created_by',                                  'username',    false, false, false, 'the business administrator account that provided this credit card', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_principal_name',                              'string',       true, false, false, 'the application-provided principal who provided this credit card', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_accounting',                                  'accounting',  false, false, false, 'the accounting code of the business that provided this credit card', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_group_name',                                  'string',       true, false, false, 'any application-specific grouping', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_provider_unique_id',                          'string',       true, false, false, 'the unique ID provided by the merchant services provider storage mechanism', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_masked_card_number',                          'string',      false, false, false, 'the masked card number', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'creditCard.expirationMonth',                              'short',        true, false, false, 'the card expiration month', '1.82.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'creditCard.expirationYear',                               'short',        true, false, false, 'the card expiration year', '1.82.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_first_name',                                  'string',      false, false, false, 'the first name of the card holder', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_last_name',                                   'string',      false, false, false, 'the last name of the card holder', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_company_name',                                'string',       true, false, false, 'the company name for the credit card', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_email',                                       'email',        true, false, false, 'the email address of the card holder', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_phone',                                       'phone',        true, false, false, 'the phone number of the card holder', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_fax',                                         'phone',        true, false, false, 'the fax number of the card holder', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'creditCard.customerId',                                   'string',       true, false, false, 'the merchant-specific unique customer ID', '1.82.1', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_customer_tax_id',                             'string',       true, false, false, 'the tax ID of the card holder', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_street_address1',                             'string',      false, false, false, 'the street address of the card holder (line 1)', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_street_address2',                             'string',       true, false, false, 'the street address of the card holder (line 2)', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_city',                                        'city',        false, false, false, 'the city of the card holder', '1.29', '1.68');
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_city',                                        'string',      false, false, false, 'the city of the card holder', '1.69', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_state',                                       'state',        true, false, false, 'the state/province/prefecture of the card holder', '1.29', '1.68');
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_state',                                       'string',       true, false, false, 'the state/province/prefecture of the card holder', '1.69', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_postal_code',                                 'zip',          true, false, false, 'the postal code of the card holder', '1.29', '1.68');
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_postal_code',                                 'string',       true, false, false, 'the postal code of the card holder', '1.69', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_country_code',                                'country',     false, false, false, 'the two-digit ISO 3166-1 alpha-2 country code of the card holder', '1.29', '1.68');
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_country_code',                                'string',      false, false, false, 'the two-digit ISO 3166-1 alpha-2 country code of the card holder', '1.69', null);
select "schema".add_column('payment', 'credit_card_transactions', 'credit_card_comments',                                    'string',       true, false, false, 'any comments associated with the credit card', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_time',                                      'time',        false, false, false, 'the time the authorization was attempted', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_username',                                  'username',    false, false, false, 'the username of the business_administrator account that processed the transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_principal_name',                            'string',       true, false, false, 'an application-provided identity of the user who initiated the transaction', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_communication_result',                      'string',       true, false, false, 'the authorization communication result', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_provider_error_code',                       'string',       true, false, false, 'the provider-specific error code', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_error_code',                                'string',       true, false, false, 'the provider-neutral error code', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_provider_error_message',                    'string',       true, false, false, 'the provider-specific error message', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_provider_unique_id',                        'string',       true, false, false, 'the per-provider unique ID', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorizationResult.providerReplacementMaskedCardNumber', 'string',       true, false, false, 'the provider-specific replacement masked card number', '1.82.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorizationResult.replacementMaskedCardNumber',         'string',       true, false, false, 'the replacement masked card number', '1.82.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorizationResult.providerReplacementExpiration',       'string',       true, false, false, 'the provider-specific replacement expiration date', '1.82.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorizationResult.replacementExpirationMonth',          'short',        true, false, false, 'the replacement card expiration month', '1.82.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorizationResult.replacementExpirationYear',           'short',        true, false, false, 'the replacement card expiration year', '1.82.0', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_provider_approval_result',                  'string',       true, false, false, 'the provider-specific approval result', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_approval_result',                           'string',       true, false, false, 'the provider-neutral approval result', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_provider_decline_reason',                   'string',       true, false, false, 'the provider-specific decline reason', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_decline_reason',                            'string',       true, false, false, 'the provider-neutral decline reason', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_provider_review_reason',                    'string',       true, false, false, 'the provider-specific review reason', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_review_reason',                             'string',       true, false, false, 'the provider-neutral review reason', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_provider_cvv_result',                       'string',       true, false, false, 'the provider-specific CVV result', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_cvv_result',                                'string',       true, false, false, 'the provider-neutral CVV result', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_provider_avs_result',                       'string',       true, false, false, 'the provider-specific AVS result', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_avs_result',                                'string',       true, false, false, 'the provider-neutral AVS result', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'authorization_approval_code',                             'string',       true, false, false, 'the approval code', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'capture_time',                                            'time',         true, false, false, 'the time the capture was attempted', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'capture_username',                                        'username',     true, false, false, 'the username of the business_administrator account that processed the capture', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'capture_principal_name',                                  'string',       true, false, false, 'an application-provided identity of the user who initiated the capture', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'capture_communication_result',                            'string',       true, false, false, 'the capture communication result', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'capture_provider_error_code',                             'string',       true, false, false, 'the provider-specific error code', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'capture_error_code',                                      'string',       true, false, false, 'the provider-neutral error code', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'capture_provider_error_message',                          'string',       true, false, false, 'the provider-specific error message', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'capture_provider_unique_id',                              'string',       true, false, false, 'the per-provider unique ID', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'void_time',                                               'time',         true, false, false, 'the time the void was attempted', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'void_username',                                           'username',     true, false, false, 'the username of the business_administrator account that processed the void', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'void_principal_name',                                     'string',       true, false, false, 'an application-provided identity of the user who initiated the void', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'void_communication_result',                               'string',       true, false, false, 'the void communication result', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'void_provider_error_code',                                'string',       true, false, false, 'the provider-specific error code', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'void_error_code',                                         'string',       true, false, false, 'the provider-neutral error code', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'void_provider_error_message',                             'string',       true, false, false, 'the provider-specific error message', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'void_provider_unique_id',                                 'string',       true, false, false, 'the per-provider unique ID', '1.29', null);
select "schema".add_column('payment', 'credit_card_transactions', 'status',                                                  'string',      false, false, false, 'the status of the transaction', '1.29', null);
