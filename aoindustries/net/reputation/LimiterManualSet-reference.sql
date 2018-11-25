/* TODO
alter table "net/reputation"."LimiterManualSet"
  add constraint limiter_fkey
  foreign key (limiter)
  references "net/reputation"."Limiter" (pkey)
  on delete restrict
  on update cascade
;
alter table "net/reputation"."LimiterManualSet"
  add constraint set_fkey
  foreign key ("set")
  references net."IpSet" (pkey)
  on delete restrict
  on update cascade
;
 */
