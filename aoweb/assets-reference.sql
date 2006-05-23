alter table assets
  add constraint contained_by_fkey
  foreign key (contained_by)
  references assets (pkey)
  on delete restrict
  on update cascade
;
alter table assets
  add constraint location_fkey
  foreign key (location)
  references asset_locations (name)
  on delete restrict
  on update cascade
;
alter table assets
  add constraint vendor_fkey
  foreign key (vendor)
  references asset_vendors (name)
  on delete restrict
  on update cascade
;
