/**********************************************************************
 *
 * Assets are tracked with this database and asset labels.
 *
 *********************************************************************/
create table asset_locations (
  name text
    constraint asset_locations_pkey
      primary key,
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
  contact text
    not null,
  phone_number text
    not null
);
grant all on asset_locations to aoadmin;
grant select on asset_locations to aoweb_app;
