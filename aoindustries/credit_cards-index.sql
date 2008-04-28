create unique index credit_cards_uni on credit_cards (processor_id, provider_unique_id);
create index credit_cards_accounting_idx on credit_cards (accounting);
create index credit_cards_country_code_idx on credit_cards (country_code);
create index credit_cards_created_by_idx on credit_cards (created_by);
create index credit_cards_encryption_card_number_from_idx on credit_cards (encryption_card_number_from);
create index credit_cards_encryption_card_number_recipient_idx on credit_cards (encryption_card_number_recipient);
create index credit_cards_encryption_expiration_from_idx on credit_cards (encryption_expiration_from);
create index credit_cards_encryption_expiration_recipient_idx on credit_cards (encryption_expiration_recipient);
