create sequence         billing."NoticeLog_id_seq" cycle;
grant all            on billing."NoticeLog_id_seq" to aoadmin;
grant select, update on billing."NoticeLog_id_seq" to aoserv_app;

create table billing."NoticeLog" (
  id integer
    default nextval('billing."NoticeLog_id_seq"')
    primary key,
  create_time timestamp with time zone
    default now()
    not null,
  accounting text
    not null,
  billing_contact text
    not null,
  billing_email "com.aoindustries.net"."Email"
    not null,
  notice_type text
    not null,
  transid integer
);

grant all            on billing."NoticeLog" to aoadmin;
grant select, insert on billing."NoticeLog" to aoserv_app;
