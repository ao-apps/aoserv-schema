alter table "net/reputation"."Host"
  add constraint set_fkey
  foreign key ("set")
  references "net/reputation"."Set" (id)
  on delete restrict
  on update cascade
;
