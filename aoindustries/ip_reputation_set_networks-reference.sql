alter table ip_reputation_set_networks
  add constraint set_fkey
  foreign key ("set")
  references ip_reputation_sets (pkey)
  on delete restrict
  on update cascade
;
