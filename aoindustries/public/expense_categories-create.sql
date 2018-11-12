create table expense_categories (
  expense_code text
    constraint expense_categories_pkey primary key
);
grant all            on expense_categories to aoadmin;
grant select, update on expense_categories to aoserv_app;
