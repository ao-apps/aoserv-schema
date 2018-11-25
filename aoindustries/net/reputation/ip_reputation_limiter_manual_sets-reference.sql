/* TODO
alter table ip_reputation_limiter_manual_sets
  add constraint limiter_fkey
  foreign key (limiter)
  references "net/reputation"."ReputationLimiter" (pkey)
  on delete restrict
  on update cascade
;
alter table ip_reputation_limiter_manual_sets
  add constraint set_fkey
  foreign key ("set")
  references net."IpSet" (pkey)
  on delete restrict
  on update cascade
;
 */
