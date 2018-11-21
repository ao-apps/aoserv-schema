create sequence "IPAddress_id_seq" cycle;
grant all    on "IPAddress_id_seq" to aoadmin;
grant select on "IPAddress_id_seq" to aoserv_app;

create table "IPAddress" (
  id integer
    default nextval('"IPAddress_id_seq"')
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

grant all            on "IPAddress" to aoadmin;
grant select, update on "IPAddress" to aoserv_app;
