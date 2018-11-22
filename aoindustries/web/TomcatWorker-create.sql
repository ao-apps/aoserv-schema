create sequence         web."TomcatWorker_pkey_seq" cycle;
grant all            on web."TomcatWorker_pkey_seq" to aoadmin;
grant select, update on web."TomcatWorker_pkey_seq" to aoserv_app;

create table web."TomcatWorker" (
  -- TODO: net_bind is unique, so this does not need its own separate pkey
  pkey integer
    default nextval('web."TomcatWorker_pkey_seq"')
    primary key,
  code character(2)
    not null,
  net_bind integer
    not null
    unique,
  tomcat_site integer
);
grant all                            on web."TomcatWorker" to aoadmin;
grant select, insert, update, delete on web."TomcatWorker" to aoserv_app;
