-- TODO: Make an enum both in PostgreSQL and Java??? What happens if new values appear in the future?
create table "web.tomcat"."JkProtocol" (
  protocol text
    primary key
);
grant all    on "web.tomcat"."JkProtocol" to aoadmin;
grant select on "web.tomcat"."JkProtocol" to aoserv_app;
