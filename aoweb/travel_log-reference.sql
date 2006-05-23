alter table travel_log
  add constraint vehicle_fkey
  foreign key (vehicle)
  references vehicles (name)
  on delete restrict
  on update cascade
;
