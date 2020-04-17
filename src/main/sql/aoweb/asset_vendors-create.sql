/*
 * aoindustries.com - https://aoindustries.com/
 * Copyright (C) 2000-2006, 2018, 2020  AO Industries, Inc.
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

create table asset_vendors (
  "name" text
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
