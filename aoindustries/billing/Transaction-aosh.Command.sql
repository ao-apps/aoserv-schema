select aosh.add_command(
  'add_transaction',
  'billing',
  'transactions',
  'adds a new transaction to a business account',
  '<i>business</i> <i>source_business</i> <i>business_administrator</i> <i>type</i> <i>description</i> <i>quantity</i> <i>rate</i> {""|<i>payment_type</i>} {""|<i>payment_info</i>} {<b>Y</b>|<b>N</b>|<b>W</b>}',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'add_transaction',
  'billing',
  'transactions',
  'adds a new transaction to a business account',
  '<i>business</i> <i>source_business</i> <i>business_administrator</i> <i>type</i> <i>description</i> <i>quantity</i> <i>rate</i> {""|<i>payment_type</i>} {""|<i>payment_info</i>} {""|<i>processor</i>} {<b>Y</b>|<b>N</b>|<b>W</b>}',
  '1.29',
  '1.82.1'
);
select aosh.add_command(
  'billing.Transaction.add',
  'billing',
  'transactions',
  'adds a new transaction to an account',
  '{<b>now</b>|<b>today</b>|<i>YYYY-MM-DD</i>|<i>YYYY-MM-DD HH:MM[:SS[.nnnnnnnnn]]</i>} <i>account</i> <i>sourceAccount</i> <i>administrator</i> <i>type</i> <i>description</i> <i>quantity</i> <i>currency</i> <i>rate</i> {""|<i>paymentType</i>} {""|<i>paymentInfo</i>} {""|<i>processor</i>} {<b>Pending</b>|<b>Confirmed</b>|<b>Failed</b>}',
  '1.83.0',
  null
);
select aosh.add_command(
  'approve_transaction',
  'billing',
  'transactions',
  'flags a transaction as approved',
  '<i>transaction_id</i> <i>payment_type</i> <i>payment_info</i> <i>merchant_account</i> <i>apr_num</i>',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'decline_transaction',
  'billing',
  'transactions',
  'flags a transaction as declined',
  '<i>transaction_id</i> <i>payment_type</i> <i>payment_info</i> <i>merchant_account</i>',
  '1.0a100',
  '1.28'
);
