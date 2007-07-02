create table credit_card_processors (
  provider_id text
    constraint credit_card_processors_pkey primary key,
  accounting text
    not null,
  class_name text not null,
  param1 text,
  param2 text,
  param3 text,
  param4 text,
  enabled bool not null,
  weight integer not null,
  description text
);
grant all on credit_card_processors to aoadmin;
grant select on credit_card_processors to aoserv_app;
