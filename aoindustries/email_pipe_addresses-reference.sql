alter table email_pipe_addresses
  add constraint email_address_fkey
  foreign key (email_address)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table email_pipe_addresses
  add constraint email_pipe_fkey
  foreign key (email_pipe)
  references email_pipes (pkey)
  on delete restrict
  on update cascade
;
