/*
 * aoindustries.com - https://aoindustries.com/
 * Copyright (C) 2000-2006, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoindustries.com.
 *
 * aoindustries.com is non-exclusive, non-transferable, non-redistributable.
 *
 * aoindustries.com is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

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
