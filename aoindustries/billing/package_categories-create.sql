create table package_categories (
  "name" text
    primary key
);
grant all    on package_categories to aoadmin;
grant select on package_categories to aoserv_app;
