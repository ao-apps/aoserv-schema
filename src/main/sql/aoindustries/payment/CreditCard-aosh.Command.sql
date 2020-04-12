select aosh.add_command(
  'add_credit_card',
  'payment',
  'credit_cards',
  'adds a credit card to a business',
  '<i>business</i> <i>enc_card_number</i> <i>card_info</i> <i>enc_expiration_month</i> <i>enc_expiration_year</i> <i>enc_cardholder_name</i> <i>enc_street_address</i> <i>enc_city</i> {""|<i>enc_state</i>} {""|<i>enc_zip</i>} <i>use_monthly</i> {""|<i>description</i>}',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'decline_credit_card',
  'payment',
  'credit_cards',
  'declines and disables a credit card',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_credit_card',
  'payment',
  'credit_cards',
  'removes a credit card from a business',
  '<i>pkey</i>',
  '1.0a100',
  null
);
