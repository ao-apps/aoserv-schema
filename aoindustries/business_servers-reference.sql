alter table business_servers
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table business_servers
  add constraint server_fkey
  foreign key (server)
  references servers (resource)
  on delete restrict
  on update cascade
;
