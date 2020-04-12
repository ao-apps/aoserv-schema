create table billing."NoticeType" (
  "type" text
    primary key,
  description text
    not null
);
grant all    on billing."NoticeType" to aoadmin;
grant select on billing."NoticeType" to aoserv_app;
