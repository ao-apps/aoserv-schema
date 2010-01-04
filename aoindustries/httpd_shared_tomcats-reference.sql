alter table httpd_shared_tomcats
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table httpd_shared_tomcats
  add constraint version_fkey
  foreign key (version)
  references httpd_tomcat_versions (version)
  on delete restrict
  on update cascade
;
alter table httpd_shared_tomcats
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux_accounts (ao_server_resource)
  on delete restrict
  on update cascade
;
alter table httpd_shared_tomcats
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux_groups (ao_server_resource)
  on delete restrict
  on update cascade
;
alter table httpd_shared_tomcats
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_shared_tomcats
  add constraint tomcat4_worker_fkey
  foreign key (tomcat4_worker)
  references httpd_workers (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_shared_tomcats
  add constraint tomcat4_shutdown_port_fkey
  foreign key (tomcat4_shutdown_port)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
