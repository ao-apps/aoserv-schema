alter table email."Address"
  add constraint domain_fkey
  foreign key ("domain")
  references email."Domain" (pkey)
  on delete restrict
  on update cascade
;
