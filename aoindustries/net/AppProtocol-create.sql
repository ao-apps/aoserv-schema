create table net."AppProtocol" (
  protocol text
    primary key,
  port integer
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
