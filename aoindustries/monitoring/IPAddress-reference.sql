alter table monitoring."IPAddress"
  add constraint id_fkey
  foreign key (id)
  references public."IPAddress" (id)
  on delete cascade
  on update cascade
;
