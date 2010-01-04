create sequence whois_history_pkey_seq cycle;
grant all on whois_history_pkey_seq to aoadmin;
grant select, update on whois_history_pkey_seq to aoserv_app;

create table whois_history (
  pkey integer
    default nextval('whois_history_pkey_seq')
    constraint whois_history_pkey primary key,  
  "time" timestamp
    default now()
    not null,
  accounting text
    not null,
  zone text
    not null,
  whois_output text
    not null
);
grant all on whois_history to aoadmin;
grant select, insert, delete on whois_history to aoserv_app;
