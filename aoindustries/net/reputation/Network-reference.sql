alter table "net/reputation"."Network"
  add constraint set_fkey
  foreign key ("set")
  references "net/reputation"."Set" (pkey)
  on delete restrict
  on update cascade
;
