alter table httpd_jboss_sites
  add constraint tomcat_site_fkey
  foreign key (tomcat_site)
  references httpd_tomcat_sites (httpd_site)
  on delete restrict
  on update cascade
;
alter table httpd_jboss_sites
  add constraint version_fkey
  foreign key (version)
  references httpd_jboss_versions (version)
  on delete restrict
  on update cascade
;
alter table httpd_jboss_sites
  add constraint jnp_bind_fkey
  foreign key (jnp_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_jboss_sites
  add constraint webserver_bind_fkey
  foreign key (webserver_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_jboss_sites
  add constraint rmi_bind_fkey
  foreign key (rmi_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_jboss_sites
  add constraint hypersonic_bind_fkey
  foreign key (hypersonic_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table httpd_jboss_sites
  add constraint jmx_bind_fkey
  foreign key (jmx_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
