create table package_categories (
  name text
    constraint package_categories_pkey primary key
);
grant all on package_categories to aoadmin;
grant select on package_categories to aoserv_app;
