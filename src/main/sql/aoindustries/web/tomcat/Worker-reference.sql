alter table "web.tomcat"."Worker"
  add constraint bind_fkey
  foreign key (bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
alter table "web.tomcat"."Worker"
  add constraint name_fkey
  foreign key ("name")
  references "web.tomcat"."WorkerName" (code)
  on delete restrict
  on update cascade
;
alter table "web.tomcat"."Worker"
  add constraint "tomcatSite_fkey"
  foreign key ("tomcatSite")
  references "web.tomcat"."Site" (httpd_site)
  on delete restrict
  on update cascade
;
