alter table email_pipe_addresses
  add constraint email_address_fkey
  foreign key (email_address)
  references email."Address" (pkey)
  on delete restrict
  on update cascade
;
alter table email_pipe_addresses
  add constraint email_pipe_fkey
  foreign key (email_pipe)
  references email."Pipe" (pkey)
  on delete restrict
  on update cascade
;
