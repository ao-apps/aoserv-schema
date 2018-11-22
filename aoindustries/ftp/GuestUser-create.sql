create table ftp."GuestUser" (
  username text
    primary key
);
grant all                    on ftp."GuestUser" to aoadmin;
grant select, insert, delete on ftp."GuestUser" to aoserv_app;
