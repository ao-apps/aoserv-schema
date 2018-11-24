alter table web."SharedTomcat"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."LinuxServer" (server)
  on delete restrict
  on update cascade
;
alter table web."SharedTomcat"
  add constraint version_fkey
  foreign key (version)
  references web."TomcatVersion" (version)
  on delete restrict
  on update cascade
;
alter table web."SharedTomcat"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux."LinuxUserServer" (pkey)
  on delete restrict
  on update cascade
;
alter table web."SharedTomcat"
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux."LinuxGroupServer" (pkey)
  on delete restrict
  on update cascade
;
alter table web."SharedTomcat"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
alter table web."SharedTomcat"
  add constraint tomcat4_worker_fkey
  foreign key (tomcat4_worker)
  references web."TomcatWorker" (bind)
  on delete restrict
  on update cascade
;
alter table web."SharedTomcat"
  add constraint tomcat4_shutdown_port_fkey
  foreign key (tomcat4_shutdown_port)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
