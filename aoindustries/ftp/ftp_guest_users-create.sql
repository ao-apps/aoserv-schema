create table ftp_guest_users (
  username text
    primary key
);
grant all                    on ftp_guest_users to aoadmin;
grant select, insert, delete on ftp_guest_users to aoserv_app;
