create table architectures (
  name text
    primary key,
  bits integer
    not null
);
grant all    on architectures to aoadmin;
grant select on architectures to aoserv_app;
