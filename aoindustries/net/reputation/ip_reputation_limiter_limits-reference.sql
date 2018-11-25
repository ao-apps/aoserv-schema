alter table ip_reputation_limiter_limits
  add constraint limiter_fkey
  foreign key (limiter)
  references "net/reputation"."ReputationLimiter" (pkey)
  on delete restrict
  on update cascade
;
