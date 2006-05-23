alter table ao_servers
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table ao_servers
  add constraint daemon_bind_fkey
  foreign key (daemon_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table ao_servers
  add constraint failover_server_fkey
  foreign key (failover_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table ao_servers
  add constraint daemon_device_id_fkey
  foreign key (daemon_device_id)
  references net_device_ids (name)
  on delete restrict
  on update cascade
;
alter table ao_servers
  add constraint daemon_connect_bind_fkey
  foreign key (daemon_connect_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table ao_servers
  add constraint time_zone_fkey
  foreign key (time_zone)
  references time_zones (name)
  on delete restrict
  on update cascade
;
alter table ao_servers
  add constraint jilter_bind_fkey
  foreign key (jilter_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
