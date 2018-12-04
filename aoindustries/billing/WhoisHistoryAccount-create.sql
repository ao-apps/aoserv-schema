create sequence         billing."WhoisHistoryAccount_id_seq" cycle;
grant all            on billing."WhoisHistoryAccount_id_seq" to aoadmin;
grant select, update on billing."WhoisHistoryAccount_id_seq" to aoserv_app;

create table billing."WhoisHistoryAccount" (
  -- Get rid of this id once we support compound keys in client side?  Compound keys OK in all client languages?
  -- However, this is used for protocols <= 1.81.18, so might need to keep it around
  id integer
    default nextval('billing."WhoisHistoryAccount_id_seq"')
    primary key,
  "whoisHistory" integer
    not null,
  account text
    not null,
  unique("whoisHistory", account)
);
grant all                    on billing."WhoisHistoryAccount" to aoadmin;
grant select, insert, delete on billing."WhoisHistoryAccount" to aoserv_app;
