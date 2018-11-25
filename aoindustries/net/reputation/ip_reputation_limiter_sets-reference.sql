alter table ip_reputation_limiter_sets
  add constraint limiter_fkey
  foreign key (limiter)
  references ip_reputation_limiters (pkey)
  on delete restrict
  on update cascade
;
alter table ip_reputation_limiter_sets
  add constraint set_fkey
  foreign key ("set")
  references ip_reputation_sets (pkey)
  on delete restrict
  on update cascade
;
