/**********************************************************************
 *
 * The aoserv_howtos table stores all of the howto data for the
 * AOServ documentation.
 *
 * name                a unique name for the howto
 * time                the time the entry was added
 * sort_order          the lower numbers are sorted to the top of the
 *                     category
 * category            the of the howto table
 * title               the title of the page
 * short_title         the short title of the page
 * nav_text            the text used for the navigation image
 * description         the description of the howto
 * keywords            the keywords for the howto web page
 * general_info        the HTML for general info about HOWTO
 * aosh_code           the code used in the aosh
 * simple_client_code  the code used in the simple client
 * full_client_code    the code used in the full client API
 *
 *********************************************************************/
create table aoserv_howtos (
  name text
    not null
    constraint aoserv_howtos_pkey
      primary key,
  time timestamp
    default now()
    not null,
  sort_order real
    not null,
  category text
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
  general_info text,
  aosh_code text,
  simple_client_code text,
  full_client_code text
);
grant all    on aoserv_howtos to aoadmin;
grant select on aoserv_howtos to aoweb_app;
