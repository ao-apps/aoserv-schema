alter table business_servers
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table business_servers
  add constraint server_fkey
  foreign key (server)
  references server."Server" (pkey)
  on delete restrict
  on update cascade
;
