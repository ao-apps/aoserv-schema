select "schema".add_column('credit_card_transactions', 'pkey', 0, 'pkey', false, true, false, 'the unique ID of this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'processor_id', 1, 'string', false, false, false, 'the name of the processor used for this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'accounting', 2, 'accounting', false, false, false, 'the accounting code for the source of this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'group_name', 3, 'string', true, false, false, 'the application-provided grouping for this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'test_mode', 4, 'boolean', false, false, false, 'indicates this is a test transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'duplicate_window', 5, 'int', false, false, false, 'the number of seconds for duplicate transaction detection', '1.29', null);
select "schema".add_column('credit_card_transactions', 'order_number', 6, 'string', true, false, false, 'the merchant-provided order number for this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'currency_code', 7, 'string', false, false, false, 'the 3-character ISO 4217 country code for the currency used in this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'amount', 8, 'decimal_2', false, false, false, 'the amount of the transaction', '1.29', '1.30');
select "schema".add_column('credit_card_transactions', 'amount', 9, 'big_decimal', false, false, false, 'the amount of the transaction', '1.31', null);
select "schema".add_column('credit_card_transactions', 'tax_amount', 10, 'decimal_2', true, false, false, 'the tax amount of the transaction', '1.29', '1.30');
select "schema".add_column('credit_card_transactions', 'tax_amount', 11, 'big_decimal', true, false, false, 'the tax amount of the transaction', '1.31', null);
select "schema".add_column('credit_card_transactions', 'tax_exempt', 12, 'boolean', false, false, false, 'the taxExempt flag for this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_amount', 13, 'decimal_2', true, false, false, 'the shipping amount for this transaction', '1.29', '1.30');
select "schema".add_column('credit_card_transactions', 'shipping_amount', 14, 'big_decimal', true, false, false, 'the shipping amount for this transaction', '1.31', null);
select "schema".add_column('credit_card_transactions', 'duty_amount', 15, 'decimal_2', true, false, false, 'the duty amount for this transaction', '1.29', '1.30');
select "schema".add_column('credit_card_transactions', 'duty_amount', 16, 'big_decimal', true, false, false, 'the duty amount for this transaction', '1.31', null);
select "schema".add_column('credit_card_transactions', 'shipping_first_name', 17, 'string', true, false, false, 'the shipping first name', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_last_name', 18, 'string', true, false, false, 'the shipping last name', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_company_name', 19, 'string', true, false, false, 'the shipping company name', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_street_address1', 20, 'string', true, false, false, 'the shipping address line 1', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_street_address2',               21, 'string', true, false, false, 'the shipping address line 2', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_city',                          22, 'city', true, false, false, 'the shipping city', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'shipping_city',                          23, 'string', true, false, false, 'the shipping city', '1.69', null);
select "schema".add_column('credit_card_transactions', 'shipping_state',                         24, 'state', true, false, false, 'the shipping state', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'shipping_state',                         25, 'string', true, false, false, 'the shipping state', '1.69', null);
select "schema".add_column('credit_card_transactions', 'shipping_postal_code',                   26, 'zip', true, false, false, 'the shipping postal code', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'shipping_postal_code',                   27, 'string', true, false, false, 'the shipping postal code', '1.69', null);
select "schema".add_column('credit_card_transactions', 'shipping_country_code',                  28, 'country', true, false, false, 'the shipping two-digit ISO 3166-1 alpha-2 country code', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'shipping_country_code',                  29, 'string', true, false, false, 'the shipping two-digit ISO 3166-1 alpha-2 country code', '1.69', null);
select "schema".add_column('credit_card_transactions', 'email_customer',                         30, 'boolean', false, false, false, 'the flag indicating the API should generate an email to the customer', '1.29', null);
select "schema".add_column('credit_card_transactions', 'merchant_email',                         31, 'email', true, false, false, 'the email address of the merchant', '1.29', null);
select "schema".add_column('credit_card_transactions', 'invoice_number',                         32, 'string', true, false, false, 'the merchant-provided invoice number', '1.29', null);
select "schema".add_column('credit_card_transactions', 'purchase_order_number',                  33, 'string', true, false, false, 'the merchant-provided purchase order number', '1.29', null);
select "schema".add_column('credit_card_transactions', 'description',                            34, 'string', true, false, false, 'the merchant-provided description of this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_created_by',                 35, 'username', false, false, false, 'the business administrator account that provided this credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_principal_name',             36, 'string', true, false, false, 'the application-provided principal who provided this credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_accounting',                 37, 'accounting', false, false, false, 'the accounting code of the business that provided this credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_group_name',                 38, 'string', true, false, false, 'any application-specific grouping', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_provider_unique_id',         39, 'string', true, false, false, 'the unique ID provided by the merchant services provider storage mechanism', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_masked_card_number',         40, 'string', false, false, false, 'the masked card number', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_first_name',                 41, 'string', false, false, false, 'the first name of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_last_name',                  42, 'string', false, false, false, 'the last name of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_company_name',               43, 'string', true, false, false, 'the company name for the credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_email',                      44, 'email', true, false, false, 'the email address of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_phone',                      45, 'phone', true, false, false, 'the phone number of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_fax',                        46, 'phone', true, false, false, 'the fax number of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_customer_tax_id',            47, 'string', true, false, false, 'the tax ID of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_street_address1',            48, 'string', false, false, false, 'the street address of the card holder (line 1)', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_street_address2',            49, 'string', true, false, false, 'the street address of the card holder (line 2)', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_city',                       50, 'city', false, false, false, 'the city of the card holder', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'credit_card_city',                       51, 'string', false, false, false, 'the city of the card holder', '1.69', null);
select "schema".add_column('credit_card_transactions', 'credit_card_state',                      52, 'state', true, false, false, 'the state/province/prefecture of the card holder', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'credit_card_state',                      53, 'string', true, false, false, 'the state/province/prefecture of the card holder', '1.69', null);
select "schema".add_column('credit_card_transactions', 'credit_card_postal_code',                54, 'zip', true, false, false, 'the postal code of the card holder', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'credit_card_postal_code',                55, 'string', true, false, false, 'the postal code of the card holder', '1.69', null);
select "schema".add_column('credit_card_transactions', 'credit_card_country_code',               56, 'country', false, false, false, 'the two-digit ISO 3166-1 alpha-2 country code of the card holder', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'credit_card_country_code',               57, 'string', false, false, false, 'the two-digit ISO 3166-1 alpha-2 country code of the card holder', '1.69', null);
select "schema".add_column('credit_card_transactions', 'credit_card_comments',                   58, 'string', true, false, false, 'any comments associated with the credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_time',                     59, 'time', false, false, false, 'the time the authorization was attempted', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_username',                 60, 'username', false, false, false, 'the username of the business_administrator account that processed the transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_principal_name',           61, 'string', true, false, false, 'an application-provided identity of the user who initiated the transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_communication_result',     62, 'string', true, false, false, 'the authorization communication result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_error_code',      63, 'string', true, false, false, 'the provider-specific error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_error_code',               64, 'string', true, false, false, 'the provider-neutral error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_error_message',   65, 'string', true, false, false, 'the provider-specific error message', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_unique_id',       66, 'string', true, false, false, 'the per-provider unique ID', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_approval_result', 67, 'string', true, false, false, 'the provider-specific approval result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_approval_result',          68, 'string', true, false, false, 'the provider-neutral approval result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_decline_reason',  69, 'string', true, false, false, 'the provider-specific decline reason', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_decline_reason',           70, 'string', true, false, false, 'the provider-neutral decline reason', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_review_reason',   71, 'string', true, false, false, 'the provider-specific review reason', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_review_reason',            72, 'string', true, false, false, 'the provider-neutral review reason', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_cvv_result',      73, 'string', true, false, false, 'the provider-specific CVV result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_cvv_result',               74, 'string', true, false, false, 'the provider-neutral CVV result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_avs_result',      75, 'string', true, false, false, 'the provider-specific AVS result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_avs_result',               76, 'string', true, false, false, 'the provider-neutral AVS result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_approval_code',            77, 'string', true, false, false, 'the approval code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_time',                           78, 'time', true, false, false, 'the time the capture was attempted', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_username',                       79, 'username', true, false, false, 'the username of the business_administrator account that processed the capture', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_principal_name',                 80, 'string', true, false, false, 'an application-provided identity of the user who initiated the capture', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_communication_result',           81, 'string', true, false, false, 'the capture communication result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_provider_error_code',            82, 'string', true, false, false, 'the provider-specific error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_error_code',                     83, 'string', true, false, false, 'the provider-neutral error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_provider_error_message',         84, 'string', true, false, false, 'the provider-specific error message', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_provider_unique_id',             85, 'string', true, false, false, 'the per-provider unique ID', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_time',                              86, 'time', true, false, false, 'the time the void was attempted', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_username',                          87, 'username', true, false, false, 'the username of the business_administrator account that processed the void', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_principal_name',                    88, 'string', true, false, false, 'an application-provided identity of the user who initiated the void', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_communication_result',              89, 'string', true, false, false, 'the void communication result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_provider_error_code',               90, 'string', true, false, false, 'the provider-specific error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_error_code',                        91, 'string', true, false, false, 'the provider-neutral error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_provider_error_message',            92, 'string', true, false, false, 'the provider-specific error message', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_provider_unique_id',                93, 'string', true, false, false, 'the per-provider unique ID', '1.29', null);
select "schema".add_column('credit_card_transactions', 'status',                                 94, 'string', false, false, false, 'the status of the transaction', '1.29', null);
