create sequence         distribution.technologies_pkey_seq cycle;
grant all            on distribution.technologies_pkey_seq to aoadmin;
grant select, update on distribution.technologies_pkey_seq to aoserv_app;

create table technologies (
  pkey integer
    default nextval('distribution.technologies_pkey_seq')
    primary key,
  name text
    not null,
  class text
    not null,
  unique(name, class)
);
grant all    on technologies to aoadmin;
grant select on technologies to aoserv_app;
