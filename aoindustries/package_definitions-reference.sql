alter table package_definitions
  add constraint category_fkey
  foreign key (category)
  references package_categories (name)
  on delete restrict
  on update cascade
;
alter table package_definitions
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table package_definitions
  add constraint setup_fee_transaction_type_fkey
  foreign key (setup_fee_transaction_type)
  references transaction_types (name)
  on delete restrict
  on update cascade
;
alter table package_definitions
  add constraint monthly_rate_transaction_type_fkey
  foreign key (monthly_rate_transaction_type)
  references transaction_types (name)
  on delete restrict
  on update cascade
;
