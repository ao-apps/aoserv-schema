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
 * The info_pages table stores all of the info data for one page
 * in one category of one type.
 *
 * pkey         a generated unique ID
 * time         the time the entry was added
 * sort_order   the lower numbers are sorted to the top of the info_category
 * category     the pkey of the category this is part of
 * name         a unique name within the category and type
 * title        the title of the page
 * short_title  the short title of the page
 * nav_text     the text used for the navigation image
 * description  the description of the page
 * keywords     the keywords for the web page
 * content      the content of the page
 *
 *********************************************************************/
create sequence info_pages_pkey_seq cycle;
grant all            on info_pages_pkey_seq to aoadmin;
grant select, update on info_pages_pkey_seq to aoweb_app;

create table info_pages (
  pkey integer
    default nextval('info_pages_pkey_seq')
    primary key,
  enabled boolean
    not null
    default true,
  time timestamp
    default now()
    not null,
  sort_order real
    not null,
  category integer
    not null,
  name text
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
  content text
    not null,
  unique(category, name)
);
grant all    on info_pages to aoadmin;
grant select on info_pages to aoweb_app;
