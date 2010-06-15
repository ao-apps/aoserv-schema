create table currencies (
  code char(3) primary key
);
grant all on currencies to aoadmin;
grant select on currencies to aoserv_app;
