create sequence technologies_pkey_seq cycle;
grant all on technologies_pkey_seq to aoadmin;
grant select, update on technologies_pkey_seq to aoserv_app;

create table technologies (
  pkey integer
    default nextval('technologies_pkey_seq')
    constraint technologies_pkey primary key,
  name text
    not null,
  class text
    not null,
  unique(name, class)
);
grant all on technologies to aoadmin;
grant select on technologies to aoserv_app;
