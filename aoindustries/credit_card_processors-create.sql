create table credit_card_processors (
  provider_id text primary key,
  accounting text not null,
  class_name text not null,
  param1 text,
  param2 text,
  param3 text,
  param4 text,
  enabled bool not null,
  weight integer not null,
  description text,
  encryption_from integer,
  encryption_recipient integer,
  check (
    (encryption_from is null and encryption_recipient is null)
    or (encryption_from is not null and encryption_recipient is not null)
  )
);
grant all on credit_card_processors to aoadmin;
grant select on credit_card_processors to aoserv_app;
