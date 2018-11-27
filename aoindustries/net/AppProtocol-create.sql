create table net."AppProtocol" (
  protocol text
    primary key,
  port net."Port"
    not null,
  "name" text
    not null,
  is_user_service boolean
    not null,
  net_protocol net."NetProtocol"
    not null
);
grant all    on net."AppProtocol" to aoadmin;
grant select on net."AppProtocol" to aoserv_app;
grant select on net."AppProtocol" to management;
