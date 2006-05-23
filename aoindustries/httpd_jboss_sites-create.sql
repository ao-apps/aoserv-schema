create table httpd_jboss_sites (
  tomcat_site integer
    constraint httpd_jboss_sites_pkey primary key,
  version integer
    not null,
  jnp_bind integer
    not null,
  webserver_bind integer
    not null,
  rmi_bind integer
    not null,
  hypersonic_bind integer
    not null,
  jmx_bind integer
    not null
);
grant all on httpd_jboss_sites to aoadmin;
grant select, insert, update, delete on httpd_jboss_sites to aoserv_app;
