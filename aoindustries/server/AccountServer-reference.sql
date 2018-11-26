alter table server."AccountServer"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table server."AccountServer"
  add constraint server_fkey
  foreign key (server)
  references server."Server" (id)
  on delete restrict
  on update cascade
;
