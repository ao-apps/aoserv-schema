alter table "web/tomcat"."TomcatWorker"
  add constraint bind_fkey
  foreign key (bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."TomcatWorker"
  add constraint name_fkey
  foreign key ("name")
  references "web/tomcat"."TomcatWorkerName" (code)
  on delete restrict
  on update cascade
;
alter table "web/tomcat"."TomcatWorker"
  add constraint "tomcatSite_fkey"
  foreign key ("tomcatSite")
  references "web/tomcat"."TomcatSite" (httpd_site)
  on delete restrict
  on update cascade
;
