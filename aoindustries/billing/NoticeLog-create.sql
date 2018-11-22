create sequence         billing."NoticeLog_pkey_seq" cycle;
grant all            on billing."NoticeLog_pkey_seq" to aoadmin;
grant select, update on billing."NoticeLog_pkey_seq" to aoserv_app;

create table billing."NoticeLog" (
  pkey integer
    default nextval('billing."NoticeLog_pkey_seq"')
    primary key,  
  create_time timestamp with time zone
    default now()
    not null,
  accounting text
    not null,
  billing_contact text
    not null,
  billing_email text
    not null,
  balance numeric(9,2)
    not null,
  notice_type text
    not null,
  transid integer
);
grant all            on billing."NoticeLog" to aoadmin;
grant select, insert on billing."NoticeLog" to aoserv_app;
