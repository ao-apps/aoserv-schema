create sequence         billing."WhoisHistory_id_seq" cycle;
grant all            on billing."WhoisHistory_id_seq" to aoadmin;
grant select, update on billing."WhoisHistory_id_seq" to aoserv_app;

-- TODO: Consider a WhoisHistoryClass, which stores the broad category of where used, such as
--       "web", "certificate", "email", ...
create table billing."WhoisHistory" (
  id integer
    default nextval('billing."WhoisHistory_id_seq"')
    primary key,  
  "time" timestamp with time zone
    default now()
    not null,
  accounting text
    not null,
  -- TODO: Change "zone" to "registrableDomain" as type DomainName (without trailing ".")
  "zone" text
    not null,
  whois_output text
    not null
);
grant all                    on billing."WhoisHistory" to aoadmin;
grant select, insert, delete on billing."WhoisHistory" to aoserv_app;
-- TODO: accounting in a separate table: "WhoisHistoryAccounts" to reduce storage
