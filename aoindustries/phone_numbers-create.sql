create sequence phone_numbers_pkey_seq cycle;
grant all on phone_numbers_pkey_seq to aoadmin;
grant select, update on phone_numbers_pkey_seq to aoserv_app;

create table phone_numbers (
  pkey integer
    default nextval('phone_numbers_pkey_seq')
    constraint phone_numbers_pkey primary key,
  created timestamp
    not null
    default now(),
  business text,
  person text,
  work text,
  cell text,
  home text,
  fax text
);
grant all on phone_numbers to aoadmin;
grant select on phone_numbers to aoserv_app;
