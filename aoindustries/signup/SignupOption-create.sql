create sequence         signup."SignupOption_pkey_seq" cycle;
grant all            on signup."SignupOption_pkey_seq" to aoadmin;
grant select, update on signup."SignupOption_pkey_seq" to aoserv_app;

create table signup."SignupOption" (
  pkey integer
    default nextval('signup."SignupOption_pkey_seq"')
    primary key,
  request integer
    not null,
  "name" text
    not null,
  value text,
  unique(request, "name")
);
grant all                    on signup."SignupOption" to aoadmin;
grant select, insert, delete on signup."SignupOption" to aoserv_app;
