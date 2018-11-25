create index "JbossSite_version_fkey" on "web/jboss"."JbossSite" (
  version
);
create index "JbossSite_jnp_bind_fkey" on "web/jboss"."JbossSite" (
  jnp_bind
);
create index "JbossSite_webserver_bind_fkey" on "web/jboss"."JbossSite" (
  webserver_bind
);
create index "JbossSite_rmi_bind_fkey" on "web/jboss"."JbossSite" (
  rmi_bind
);
create index "JbossSite_hypersonic_bind_fkey" on "web/jboss"."JbossSite" (
  hypersonic_bind
);
create index "JbossSite_jmx_bind_fkey" on "web/jboss"."JbossSite" (
  jmx_bind
);

