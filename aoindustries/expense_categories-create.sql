create table expense_categories (
  expense_code text primary key
);
grant all on expense_categories to aoadmin;
grant select on expense_categories to aoserv_app;
