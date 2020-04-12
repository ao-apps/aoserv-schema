create sequence         billing."NoticeLog.balance_id_seq" cycle;
grant all            on billing."NoticeLog.balance_id_seq" to aoadmin;
grant select, update on billing."NoticeLog.balance_id_seq" to aoserv_app;

create table billing."NoticeLog.balance" (
  id integer
    default nextval('billing."NoticeLog.balance_id_seq"')
    primary key,
  "noticeLog" integer not null,
  "balance.currency" char(3) not null,
  "balance.value" numeric not null,
  unique ("noticeLog", "balance.currency")
);

grant all            on billing."NoticeLog.balance" to aoadmin;
grant select, insert on billing."NoticeLog.balance" to aoserv_app;
