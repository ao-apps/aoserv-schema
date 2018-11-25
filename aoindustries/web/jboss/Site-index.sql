create index "Site_version_fkey" on "web/jboss"."Site" (
  version
);
create index "Site_jnp_bind_fkey" on "web/jboss"."Site" (
  jnp_bind
);
create index "Site_webserver_bind_fkey" on "web/jboss"."Site" (
  webserver_bind
);
create index "Site_rmi_bind_fkey" on "web/jboss"."Site" (
  rmi_bind
);
create index "Site_hypersonic_bind_fkey" on "web/jboss"."Site" (
  hypersonic_bind
);
create index "Site_jmx_bind_fkey" on "web/jboss"."Site" (
  jmx_bind
);

