alter table "net.reputation"."LimiterSet"
  add constraint limiter_fkey
  foreign key (limiter)
  references "net.reputation"."Limiter" (id)
  on delete restrict
  on update cascade
;
alter table "net.reputation"."LimiterSet"
  add constraint set_fkey
  foreign key ("set")
  references "net.reputation"."Set" (id)
  on delete restrict
  on update cascade
;
