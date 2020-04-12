create table net."AppProtocol" (
  protocol text
    primary key,
  port "com.aoindustries.net"."Port"
    not null,
  "name" text
    not null,
  is_user_service boolean
    not null,
  net_protocol "com.aoindustries.net"."Protocol"
    not null
    -- TODO: Should be TCP, UDP, SCTP only, matching Port class?
);
grant all    on net."AppProtocol" to aoadmin;
grant select on net."AppProtocol" to aoserv_app;
grant select on net."AppProtocol" to management;
