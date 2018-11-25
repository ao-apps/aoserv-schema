alter table "net/reputation"."Host"
  add constraint set_fkey
  foreign key ("set")
  references "net/reputation"."Set" (pkey)
  on delete restrict
  on update cascade
;
