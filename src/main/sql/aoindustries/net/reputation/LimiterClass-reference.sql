alter table "net.reputation"."LimiterClass"
  add constraint limiter_fkey
  foreign key (limiter)
  references "net.reputation"."Limiter" (id)
  on delete restrict
  on update cascade
;
