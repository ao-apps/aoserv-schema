create sequence         billing."WhoisHistory_pkey_seq" cycle;
grant all            on billing."WhoisHistory_pkey_seq" to aoadmin;
grant select, update on billing."WhoisHistory_pkey_seq" to aoserv_app;

create table billing."WhoisHistory" (
  pkey integer
    default nextval('billing."WhoisHistory_pkey_seq"')
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
