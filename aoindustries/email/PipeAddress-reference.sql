alter table email."PipeAddress"
  add constraint email_address_fkey
  foreign key (email_address)
  references email."Address" (id)
  on delete restrict
  on update cascade
;
alter table email."PipeAddress"
  add constraint email_pipe_fkey
  foreign key (email_pipe)
  references email."Pipe" (id)
  on delete restrict
  on update cascade
;
