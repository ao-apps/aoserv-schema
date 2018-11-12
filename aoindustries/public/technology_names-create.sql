create table technology_names (
  name text
    constraint technology_names_pkey primary key,
  image_filename text,
  image_width integer,
  image_height integer,
  image_alt text,
  home_page_url text
);
grant all on technology_names to aoadmin;
grant select, update on technology_names to aoserv_app;
