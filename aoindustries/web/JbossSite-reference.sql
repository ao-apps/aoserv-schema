alter table web."JbossSite"
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references web."TomcatSite" (httpd_site)
  on delete restrict
  on update cascade
;
alter table web."JbossSite"
  add constraint version_fkey
  foreign key (version)
  references web."JbossVersion" (version)
  on delete restrict
  on update cascade
;
alter table web."JbossSite"
  add constraint jnp_bind_fkey
  foreign key (jnp_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table web."JbossSite"
  add constraint webserver_bind_fkey
  foreign key (webserver_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table web."JbossSite"
  add constraint rmi_bind_fkey
  foreign key (rmi_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table web."JbossSite"
  add constraint hypersonic_bind_fkey
  foreign key (hypersonic_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
alter table web."JbossSite"
  add constraint jmx_bind_fkey
  foreign key (jmx_bind)
  references net."Bind" (pkey)
  on delete restrict
  on update cascade
;
