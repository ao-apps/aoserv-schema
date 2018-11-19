select "schema".add_column('transactions', 'time', 0, 'time', false, false, false, 'the time the transaction occured', '1.0a100', null);
select "schema".add_column('transactions', 'transid', 1, 'int', false, true, false, 'the unique identifier for this transaction', '1.0a100', '1.68');
select "schema".add_column('transactions', 'transid', 2, 'pkey', false, true, false, 'the unique identifier for this transaction', '1.69', null);
select "schema".add_column('transactions', 'accounting', 3, 'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.0a100', null);
select "schema".add_column('transactions', 'source_accounting', 4, 'accounting', false, false, false, 'the source of the charge to this account', '1.0a100', null);
select "schema".add_column('transactions', 'username', 5, 'username', false, false, false, 'the identifier for the admin involved in the transaction (see business_administrators)', '1.0a100', null);
select "schema".add_column('transactions', 'type', 6, 'string', false, false, false, 'the type of transaction', '1.0a100', null);
select "schema".add_column('transactions', 'description', 7, 'string', false, false, false, 'description of the transaction', '1.0a100', null);
select "schema".add_column('transactions', 'quantity', 8, 'decimal_3', false, false, false, 'the number of times to charge the account', '1.0a100', null);
select "schema".add_column('transactions', 'rate', 9, 'decimal_2', false, false, false, 'the amount per unit of quantity', '1.0a100', null);
select "schema".add_column(
    'transactions',
    'payment_type',
    10,
    'string',
    true,
    false,
    false,
    'the type of payment made<br>
check - check, check number will be in payment_info<br>
money_order - money order<br>
visa - visa card, last four in payment_info<br>
mastercard - mastercard, last four in payment_info<br>
amex - amex card, last four in payment_info<br>
discover - discover card, last four in payment_info',
    '1.0a100',
    null
);
select "schema".add_column('transactions', 'payment_info', 11, 'string', true, false, false, 'the payment info, such as last four of credit card number of check number', '1.0a100', null);
select "schema".add_column('transactions', 'merchant_account', 12, 'string', true, false, false, 'the merchant account that the payment was processed through', '1.0a100', '1.28');
select "schema".add_column('transactions', 'processor', 13, 'string', true, false, false, 'the credit card processor that handled the payment', '1.29', null);
select "schema".add_column('transactions', 'credit_card_transaction', 14, 'fkey', true, false, false, 'the credit card transaction for this transaction', '1.29', null);
select "schema".add_column('transactions', 'apr_num', 15, 'int', true, false, false, 'the approval number for given transaction', '1.0a100', '1.0a127');
select "schema".add_column('transactions', 'apr_num', 16, 'string', true, false, false, 'the approval number for given transaction', '1.0a128', '1.28');
select "schema".add_column(
    'transactions',
    'payment_confirmed',
    17,
    'string',
    false,
    false,
    false,
    '''Y'' if the payment is confirmed<br>
''W'' if waiting confirmation<br>
''N'' if confirmation failed',
    '1.0a100',
    null
);
