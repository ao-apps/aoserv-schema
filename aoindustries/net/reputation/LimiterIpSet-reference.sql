/* TODO
alter table "net/reputation"."LimiterIpSet"
  add constraint limiter_fkey
  foreign key (limiter)
  references "net/reputation"."Limiter" (id)
  on delete restrict
  on update cascade
;
alter table "net/reputation"."LimiterIpSet"
  add constraint set_fkey
  foreign key ("set")
  references net."IpSet" (id)
  on delete restrict
  on update cascade
;
 */
