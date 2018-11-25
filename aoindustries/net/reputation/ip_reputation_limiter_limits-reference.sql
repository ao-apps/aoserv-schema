alter table ip_reputation_limiter_limits
  add constraint limiter_fkey
  foreign key (limiter)
  references ip_reputation_limiters (pkey)
  on delete restrict
  on update cascade
;
