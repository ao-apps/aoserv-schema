create table ftp_guest_users (
  linux_account integer primary key,
  linux_account_type text not null check (linux_account_type='ftponly_account')
);
grant all on ftp_guest_users to aoadmin;
grant select, insert, delete on ftp_guest_users to aoserv_app;
