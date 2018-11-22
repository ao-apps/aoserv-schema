create index "JbossSite_version_fkey" on web."JbossSite" (
  version
);
create index "JbossSite_jnp_bind_fkey" on web."JbossSite" (
  jnp_bind
);
create index "JbossSite_webserver_bind_fkey" on web."JbossSite" (
  webserver_bind
);
create index "JbossSite_rmi_bind_fkey" on web."JbossSite" (
  rmi_bind
);
create index "JbossSite_hypersonic_bind_fkey" on web."JbossSite" (
  hypersonic_bind
);
create index "JbossSite_jmx_bind_fkey" on web."JbossSite" (
  jmx_bind
);

