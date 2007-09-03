create index credit_card_transactions_accounting_idx on credit_card_transactions (
  accounting
);
create index credit_card_transactions_shipping_country_code_idx on credit_card_transactions (
  shipping_country_code
);
create index credit_card_transactions_credit_card_created_by_idx on credit_card_transactions (
  credit_card_created_by
);
create index credit_card_transactions_credit_card_accounting_idx on credit_card_transactions (
  credit_card_accounting
);
create index credit_card_transactions_credit_card_country_code_idx on credit_card_transactions (
  credit_card_country_code
);
create index credit_card_transactions_authorization_username_idx on credit_card_transactions (
  authorization_username
);
create index credit_card_transactions_capture_username_idx on credit_card_transactions (
  capture_username
);
create index credit_card_transactions_void_username_idx on credit_card_transactions (
  void_username
);
