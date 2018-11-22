create sequence         web."TomcatContextParameter_pkey_seq" cycle;
grant all            on web."TomcatContextParameter_pkey_seq" to aoadmin;
grant select, update on web."TomcatContextParameter_pkey_seq" to aoserv_app;

create table web."TomcatContextParameter" (
  pkey integer
    default nextval('web."TomcatContextParameter_pkey_seq"')
    primary key,
  tomcat_context integer
    not null,
  "name" text
    not null,
  "value" text
    not null,
  override boolean
    not null
    default true,
  description text,
  unique(tomcat_context, "name")
);
grant all                            on web."TomcatContextParameter" to aoadmin;
grant select, insert, update, delete on web."TomcatContextParameter" to aoserv_app;
