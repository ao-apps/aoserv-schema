alter table account."AccountHost"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table account."AccountHost"
  add constraint server_fkey
  foreign key (server)
  references net."Host" (id)
  on delete restrict
  on update cascade
;
