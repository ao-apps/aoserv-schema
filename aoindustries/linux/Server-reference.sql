alter table linux."Server"
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint daemon_bind_fkey
  foreign key (daemon_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint failover_server_fkey
  foreign key (failover_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint "daemonDeviceID_fkey"
  foreign key ("daemonDeviceID")
  references net."DeviceId" ("name")
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint daemon_connect_bind_fkey
  foreign key (daemon_connect_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint time_zone_fkey
  foreign key (time_zone)
  references linux."TimeZone" ("name")
  on delete restrict
  on update cascade
;
alter table linux."Server"
  add constraint jilter_bind_fkey
  foreign key (jilter_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
