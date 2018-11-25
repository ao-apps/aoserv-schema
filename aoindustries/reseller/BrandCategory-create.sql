create table reseller."BrandCategory" (
  pkey integer primary key,
  brand text not null,
  category integer not null,
  enabled boolean not null
);
grant all    on reseller."BrandCategory" to aoadmin;
grant select on reseller."BrandCategory" to aoserv_app;
