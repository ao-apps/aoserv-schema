create sequence         billing."WhoisHistory_id_seq" cycle;
grant all            on billing."WhoisHistory_id_seq" to aoadmin;
grant select, update on billing."WhoisHistory_id_seq" to aoserv_app;

create table billing."WhoisHistory" (
  id integer
    default nextval('billing."WhoisHistory_id_seq"')
    primary key,  
  "time" timestamp with time zone
    default now()
    not null,
  accounting text
    not null,
  "zone" text
    not null,
  whois_output text
    not null
);
grant all                    on billing."WhoisHistory" to aoadmin;
grant select, insert, delete on billing."WhoisHistory" to aoserv_app;
-- TODO: accounting in a separate table: "WhoisHistoryAccounts" to reduce storage
