create index httpd_jboss_sites_version_idx on httpd_jboss_sites (
  version
);
create index httpd_jboss_sites_jnp_bind_idx on httpd_jboss_sites (
  jnp_bind
);
create index httpd_jboss_sites_webserver_bind_idx on httpd_jboss_sites (
  webserver_bind
);
create index httpd_jboss_sites_rmi_bind_idx on httpd_jboss_sites (
  rmi_bind
);
create index httpd_jboss_sites_hypersonic_bind_idx on httpd_jboss_sites (
  hypersonic_bind
);
create index httpd_jboss_sites_jmx_bind_idx on httpd_jboss_sites (
  jmx_bind
);
