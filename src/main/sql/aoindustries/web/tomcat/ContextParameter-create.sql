create sequence         "web.tomcat"."ContextParameter_id_seq" cycle;
grant all            on "web.tomcat"."ContextParameter_id_seq" to aoadmin;
grant select, update on "web.tomcat"."ContextParameter_id_seq" to aoserv_app;

create table "web.tomcat"."ContextParameter" (
  id integer
    default nextval('"web.tomcat"."ContextParameter_id_seq"')
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
grant all                            on "web.tomcat"."ContextParameter" to aoadmin;
grant select, insert, update, delete on "web.tomcat"."ContextParameter" to aoserv_app;
