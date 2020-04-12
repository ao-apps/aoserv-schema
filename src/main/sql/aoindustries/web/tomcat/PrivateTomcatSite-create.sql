create table "web.tomcat"."PrivateTomcatSite" (
  tomcat_site integer
    primary key,
  tomcat4_shutdown_port integer
    unique,
  tomcat4_shutdown_key text,
  max_post_size integer
    check (max_post_size is null or max_post_size >= 0),
  unpack_wars boolean not null
    default true,
  auto_deploy boolean not null
    default true,
  "tomcatAuthentication" boolean not null
    default true
);
grant all                            on "web.tomcat"."PrivateTomcatSite" to aoadmin;
grant select, insert, update, delete on "web.tomcat"."PrivateTomcatSite" to aoserv_app;
