alter table operating_system_versions
  add constraint operating_system_fkey
  foreign key (operating_system)
  references operating_systems ("name")
  on delete restrict
  on update cascade
;
alter table operating_system_versions
  add constraint architecture_fkey
  foreign key (architecture)
  references distribution."Architecture" ("name")
  on delete restrict
  on update cascade
;
