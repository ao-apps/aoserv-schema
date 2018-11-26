create table "web.tomcat"."Version" (
  version integer
    primary key,
  install_dir text
    not null,
  requires_mod_jk boolean
    not null
);
grant all    on "web.tomcat"."Version" to aoadmin;
grant select on "web.tomcat"."Version" to aoserv_app;
