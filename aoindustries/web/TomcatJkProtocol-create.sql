-- TODO: Make an enum both in PostgreSQL and Java??? What happens if new values appear in the future?
create table web."TomcatJkProtocol" (
  protocol text
    primary key
);
grant all    on web."TomcatJkProtocol" to aoadmin;
grant select on web."TomcatJkProtocol" to aoserv_app;
