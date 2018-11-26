alter table "net.reputation"."Network"
  add constraint set_fkey
  foreign key ("set")
  references "net.reputation"."Set" (id)
  on delete restrict
  on update cascade
;
