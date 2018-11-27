create sequence net."IpAddress_id_seq" cycle;
grant all    on net."IpAddress_id_seq" to aoadmin;
grant select on net."IpAddress_id_seq" to aoserv_app;

create table net."IpAddress" (
  id integer
    default nextval('net."IpAddress_id_seq"')
    primary key,
  "inetAddress" inet
    not null,
  "netDevice" integer,
  "isAlias" boolean
    not null,
  hostname text,
  package integer
    not null,
  created timestamp with time zone
    not null
    default now(),
  available boolean
    not null,
  "isOverflow" boolean
    not null
    default false,
  "isDhcp" boolean
    not null
    default false,
  "externalInetAddress" inet,
  netmask text
    not null,
  unique("inetAddress", "netDevice"),
  check (
    -- Only the unspecified IP addresses may have a null hostname
    ("inetAddress" = '0.0.0.0') = (hostname is null)
  )
);

grant all            on net."IpAddress" to aoadmin;
grant select, update on net."IpAddress" to aoserv_app;
grant select         on net."IpAddress" to management;
grant select         on net."IpAddress" to monitoring;
