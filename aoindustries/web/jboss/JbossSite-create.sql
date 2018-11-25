create table "web/jboss"."JbossSite" (
  tomcat_site integer
    primary key,
  version integer
    not null,
  jnp_bind integer -- TODO: Should this be unique?
    not null,
  webserver_bind integer -- TODO: Should this be unique?
    not null,
  rmi_bind integer -- TODO: Should this be unique?
    not null,
  hypersonic_bind integer -- TODO: Should this be unique?
    not null,
  jmx_bind integer -- TODO: Should this be unique?
    not null
);
grant all                            on "web/jboss"."JbossSite" to aoadmin;
grant select, insert, update, delete on "web/jboss"."JbossSite" to aoserv_app;
