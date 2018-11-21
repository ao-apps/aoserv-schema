create sequence racks_pkey_seq cycle;
grant all    on racks_pkey_seq to aoadmin;
grant select on racks_pkey_seq to aoserv_app;

create table racks (
  pkey integer
    default nextval('racks_pkey_seq')
    primary key,
  farm text
    not null,
  "name" text
    not null,
  max_power real
    check (max_power is null or max_power>0),
  total_rack_units integer
    check (total_rack_units is null or total_rack_units>0),
  unique(farm, "name")
);
grant all    on racks to aoadmin;
grant select on racks to aoserv_app;
