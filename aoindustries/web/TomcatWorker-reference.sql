alter table web."TomcatWorker"
  add constraint bind_fkey
  foreign key (bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table web."TomcatWorker"
  add constraint name_fkey
  foreign key ("name")
  references web."TomcatWorkerName" (code)
  on delete restrict
  on update cascade
;
alter table web."TomcatWorker"
  add constraint "tomcatSite_fkey"
  foreign key ("tomcatSite")
  references web."TomcatSite" (httpd_site)
  on delete restrict
  on update cascade
;
