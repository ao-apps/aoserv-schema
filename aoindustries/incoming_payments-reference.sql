alter table incoming_payments
  add constraint transid_fkey
  foreign key (transid)
  references transactions (transid)
  on delete restrict
  on update cascade
;
