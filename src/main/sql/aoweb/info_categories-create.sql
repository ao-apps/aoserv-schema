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

/**********************************************************************
 *
 * The info_categories table stores all of the various categories of
 * info, on a per-type basis.
 *
 * pkey         a generated unique ID
 * type         the unique name of the type
 * category     the unique category per type
 * sort_order   the lower numbers are sorted to the top
 * title        the long title of the type
 * short_title  the short title of the type
 * nav_text     the text used in navigation images
 * description  the description for the type
 * keywords     the keywords for the type
 *
 *********************************************************************/
create sequence info_categories_pkey_seq cycle;
grant all            on info_categories_pkey_seq to aoadmin;
grant select, update on info_categories_pkey_seq to aoweb_app;

create table info_categories (
  pkey integer
    default nextval('info_categories_pkey_seq')
    primary key,
  type text
    not null,
  category text
    not null,
  sort_order integer
    not null,
  title text
    not null,
  short_title text
    not null,
  nav_text text
    not null,
  description text
    not null,
  keywords text
    not null,
  unique(type, category)
);
grant all    on info_categories to aoadmin;
grant select on info_categories to aoweb_app;
