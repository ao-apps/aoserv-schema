create index "Payment_accounting_fkey" on payment."Payment" (
  accounting
);
create index "Payment_shipping_country_code_fkey" on payment."Payment" (
  shipping_country_code
);
create index "Payment_credit_card_created_by_fkey" on payment."Payment" (
  credit_card_created_by
);
create index "Payment_credit_card_accounting_fkey" on payment."Payment" (
  credit_card_accounting
);
create index "Payment_credit_card_country_code_fkey" on payment."Payment" (
  credit_card_country_code
);
create index "Payment_authorization_username_fkey" on payment."Payment" (
  authorization_username
);
create index "Payment_capture_username_fkey" on payment."Payment" (
  capture_username
);
create index "Payment_void_username_fkey" on payment."Payment" (
  void_username
);
