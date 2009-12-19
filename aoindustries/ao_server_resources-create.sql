create table ao_server_resources (
  resource integer primary key,
  resource_type text not null, -- Used as hidden constant type reference constraint
  accounting text not null, -- Used as hidden reference to business_servers only
  ao_server integer not null
);
grant all on ao_server_resources to aoadmin;
grant select, update, insert, delete on ao_server_resources to aoserv_app;
