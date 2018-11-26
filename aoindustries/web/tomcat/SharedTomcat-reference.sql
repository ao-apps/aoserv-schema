alter table "web/tomcat"."SharedTomcat"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."SharedTomcat"
  add constraint version_fkey
  foreign key (version)
  references "web/tomcat"."Version" (version)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."SharedTomcat"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux."UserServer" (id)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."SharedTomcat"
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux."GroupServer" (id)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."SharedTomcat"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (id)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."SharedTomcat"
  add constraint tomcat4_worker_fkey
  foreign key (tomcat4_worker)
  references "web/tomcat"."Worker" (bind)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."SharedTomcat"
  add constraint tomcat4_shutdown_port_fkey
  foreign key (tomcat4_shutdown_port)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
