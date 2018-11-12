create table architectures (
  name text
    constraint architectures_pkey primary key,
  bits integer
    not null
);
grant all    on architectures to aoadmin;
grant select on architectures to aoserv_app;
