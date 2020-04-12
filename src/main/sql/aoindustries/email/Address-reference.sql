alter table email."Address"
  add constraint domain_fkey
  foreign key ("domain")
  references email."Domain" (id)
  on delete restrict
  on update cascade
;
