create table distribution."Software" (
  "name" text
    primary key,
  image_filename text,
  image_width integer,
  image_height integer,
  image_alt text,
  home_page_url text
);
grant all    on distribution."Software" to aoadmin;
grant select on distribution."Software" to aoserv_app;
