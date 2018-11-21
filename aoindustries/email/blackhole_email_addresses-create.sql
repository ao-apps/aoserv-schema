create table blackhole_email_addresses (
  email_address integer
    primary key
);
grant all                    on blackhole_email_addresses to aoadmin;
grant select, insert, delete on blackhole_email_addresses to aoserv_app;
