alter table web."TomcatWorker"
  add constraint code_fkey
  foreign key (code)
  references web."TomcatWorkerName" (code)
  on delete restrict
  on update cascade
;
alter table web."TomcatWorker"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table web."TomcatWorker"
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references web."TomcatSite" (httpd_site)
  on delete restrict
  on update cascade
;
