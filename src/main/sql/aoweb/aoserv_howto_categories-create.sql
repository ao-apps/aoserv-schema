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
 * The aoserv_howto_categories table stores all of the howto categories
 * in the AOServ documentation.
 *
 * category     the unique name of the category
 * sort_order   the lower numbers are sorted to the top
 * title        the long title of the category
 * short_title  the short title of the category
 * nav_text     the text used in navigation images
 * description  the description for the category
 * keywords     the keywords for the category
 *
 *********************************************************************/
create table aoserv_howto_categories (
  category text
    primary key,
  sort_order real
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
    not null
);
grant all    on aoserv_howto_categories to aoadmin;
grant select on aoserv_howto_categories to aoweb_app;
