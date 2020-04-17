/*
 * aoindustries.com - https://aoindustries.com/
 * Copyright (C) 2000-2006, 2012, 2018, 2020  AO Industries, Inc.
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

create sequence assets_pkey_seq cycle;
grant all            on assets_pkey_seq to aoadmin;
grant select, update on assets_pkey_seq to aoweb_app;

create table assets (
  pkey integer
    default nextval('assets_pkey_seq')
    primary key,
  label text
    unique,
  contained_by integer,
  location text,
  description text
    not null,
  date_acquired date
    not null,
  vendor text,
  cost numeric(9,2)
    not null,
  date_removed date,
  reason_removed text,
  is_taxed boolean
    default true
    not null
);
grant all                    on assets to aoadmin;
grant select, insert, update on assets to aoweb_app;

create or replace function get_assets_by_pkey (integer)
  returns setof integer
  as '
    select
      as1.pkey
    from
                assets as1
      left join assets as2 on as1.contained_by = as2.pkey
      left join assets as3 on as2.contained_by = as3.pkey
    where
      as1.pkey= $1
      or as1.contained_by= $1
      or as2.contained_by= $1
      or as3.contained_by= $1
    '
  language 'sql'
  stable
;


create or replace function get_assets_by_label (text)
  returns setof integer
  as '
    select
      as1.pkey
    from
                assets as1
      left join assets as2 on as1.contained_by = as2.pkey
      left join assets as3 on as2.contained_by = as3.pkey
      left join assets as4 on as3.contained_by = as4.pkey
    where
      as1.label= $1
      or as2.label= $1
      or as3.label= $1
      or as4.label= $1
    '
  language 'sql'
  stable
;
