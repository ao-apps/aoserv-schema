alter table "net/reputation"."ReputationLimiterSet"
  add constraint limiter_fkey
  foreign key (limiter)
  references "net/reputation"."ReputationLimiter" (pkey)
  on delete restrict
  on update cascade
;
alter table "net/reputation"."ReputationLimiterSet"
  add constraint set_fkey
  foreign key ("set")
  references "net/reputation"."ReputationSet" (pkey)
  on delete restrict
  on update cascade
;
