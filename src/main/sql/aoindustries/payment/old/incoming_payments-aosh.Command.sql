select aosh.add_command(
  'add_incoming_payment',
  'payment',
  'incoming_payments',
  'attaches payment data to a transaction',
  '<i>transaction_id</i> <i>enc_cardholder_name</i> <i>enc_card_number</i> <i>enc_expiration_month</i> <i>enc_expiration_year</i>',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'remove_incoming_payment',
  'payment',
  'incoming_payments',
  'removes payment data from a transaction',
  '<i>transaction_id</i>',
  '1.0a100',
  '1.28'
);
