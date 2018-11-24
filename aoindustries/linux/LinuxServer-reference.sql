alter table linux."LinuxServer"
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table linux."LinuxServer"
  add constraint daemon_bind_fkey
  foreign key (daemon_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table linux."LinuxServer"
  add constraint failover_server_fkey
  foreign key (failover_server)
  references linux."LinuxServer" (server)
  on delete restrict
  on update cascade
;
alter table linux."LinuxServer"
  add constraint "daemonDeviceID_fkey"
  foreign key ("daemonDeviceID")
  references net_device_ids ("name")
  on delete restrict
  on update cascade
;
alter table linux."LinuxServer"
  add constraint daemon_connect_bind_fkey
  foreign key (daemon_connect_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table linux."LinuxServer"
  add constraint time_zone_fkey
  foreign key (time_zone)
  references linux."TimeZone" ("name")
  on delete restrict
  on update cascade
;
alter table linux."LinuxServer"
  add constraint jilter_bind_fkey
  foreign key (jilter_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
