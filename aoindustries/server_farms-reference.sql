alter table server_farms
  add constraint owner_fkey
  foreign key (owner)
  references packages (pkey)
  on delete restrict
  on update cascade
;
