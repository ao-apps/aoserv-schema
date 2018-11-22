/**********************************************************************
 *
 * The info_types table stores all of the various types of info, such
 * as FAQs and Articles.
 *
 * type         the unique name of the type
 * title        the long title of the type
 * short_title  the short title of the type
 * nav_text     the text used in navigation images
 * description  the description for the type
 * keywords     the keywords for the type
 *
 *********************************************************************/
create table info_types (
  "type" text
    primary key,
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
grant all    on info_types to aoadmin;
grant select on info_types to aoweb_app;
