create table ticket_brand_categories (
  pkey integer primary key,
  brand text not null,
  category integer not null,
  enabled bool not null
);
grant all    on ticket_brand_categories to aoadmin;
grant select on ticket_brand_categories to aoserv_app;
