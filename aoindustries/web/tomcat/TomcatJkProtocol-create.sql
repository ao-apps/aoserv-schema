-- TODO: Make an enum both in PostgreSQL and Java??? What happens if new values appear in the future?
create table "web/tomcat"."TomcatJkProtocol" (
  protocol text
    primary key
);
grant all    on "web/tomcat"."TomcatJkProtocol" to aoadmin;
grant select on "web/tomcat"."TomcatJkProtocol" to aoserv_app;
