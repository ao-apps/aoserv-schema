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
    not null
    constraint aoserv_howto_categories_pkey
      primary key,
  sort_order float4
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
grant all on aoserv_howto_categories to aoadmin;
grant select on aoserv_howto_categories to aoweb_app;
