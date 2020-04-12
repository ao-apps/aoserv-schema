create table email."BlackholeAddress" (
  email_address integer
    primary key
);
grant all                    on email."BlackholeAddress" to aoadmin;
grant select, insert, delete on email."BlackholeAddress" to aoserv_app;
