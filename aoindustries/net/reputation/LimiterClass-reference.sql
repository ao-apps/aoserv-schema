alter table "net/reputation"."LimiterClass"
  add constraint limiter_fkey
  foreign key (limiter)
  references "net/reputation"."Limiter" (pkey)
  on delete restrict
  on update cascade
;
