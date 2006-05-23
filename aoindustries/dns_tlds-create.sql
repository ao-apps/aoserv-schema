create table dns_tlds (
  domain text
    constraint dns_tlds_pkey primary key,
  description text
    not null
);
grant all on dns_tlds to aoadmin;
grant select on dns_tlds to aoserv_app;
