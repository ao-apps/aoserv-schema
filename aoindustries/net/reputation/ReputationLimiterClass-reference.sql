alter table "net/reputation"."ReputationLimiterClass"
  add constraint limiter_fkey
  foreign key (limiter)
  references "net/reputation"."ReputationLimiter" (pkey)
  on delete restrict
  on update cascade
;
