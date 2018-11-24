/* TODO
alter table "net/reputation"."ReputationLimiterManualSet"
  add constraint limiter_fkey
  foreign key (limiter)
  references "net/reputation"."ReputationLimiter" (pkey)
  on delete restrict
  on update cascade
;
alter table "net/reputation"."ReputationLimiterManualSet"
  add constraint set_fkey
  foreign key ("set")
  references net."IpSet" (pkey)
  on delete restrict
  on update cascade
;
 */
