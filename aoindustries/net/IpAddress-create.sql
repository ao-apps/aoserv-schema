create sequence net."IpAddress_id_seq" cycle;
grant all    on net."IpAddress_id_seq" to aoadmin;
grant select on net."IpAddress_id_seq" to aoserv_app;

create table net."IpAddress" (
  id integer
    default nextval('net."IpAddress_id_seq"')
    primary key,
  "inetAddress" "com.aoindustries.net"."InetAddress"
    not null,
  device integer,
  "isAlias" boolean
    not null,
  hostname "com.aoindustries.net"."DomainName",
  package integer
    not null,
  created timestamp with time zone
    not null
    default now(),
  "isAvailable" boolean
    not null,
  "isOverflow" boolean
    not null
    default false,
  "isDhcp" boolean
    not null
    default false,
  "externalInetAddress" "com.aoindustries.net"."InetAddress",
  netmask text
    not null,
  unique("inetAddress", device),
  check (
    -- Only the unspecified IP addresses may have a null hostname
    ("inetAddress" = '0.0.0.0') = (hostname is null)
  )
);

grant all            on net."IpAddress" to aoadmin;
grant select, update on net."IpAddress" to aoserv_app;
grant select, update on net."IpAddress" to infrastructure;
grant select         on net."IpAddress" to management;
