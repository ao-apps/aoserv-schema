create table asset_vendors (
  name text
    constraint asset_vendors_pkey
      primary key,
  full_name text
    not null,
  url text,
  address1 text
    not null,
  address2 text
    not null,
  city text
    not null,
  state text
    not null,
  zip text
    not null,
  phone_number text
    not null
);
grant all    on asset_vendors to aoadmin;
grant select on asset_vendors to aoweb_app;
