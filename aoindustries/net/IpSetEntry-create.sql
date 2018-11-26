/* TODO
-- Tracks the entries for ip sets
create sequence         net."IpSetEntry_id_seq" cycle;
grant all            on net."IpSetEntry_id_seq" to aoadmin;
grant select, update on net."IpSetEntry_id_seq" to aoserv_app;

create table net."IpSetEntry" (
  id bigint
    default nextval('net."IpSetEntry_id_seq"')
    primary key,
  "set" integer
    not null,
  -- TODO: Switch to "inet" type
  entry integer -- The big-endian 32-bit IP address/network.
    not null,
  "prefix" smallint
    not null
    check ("prefix">=1 and "prefix"<=32),
  created timestamp with time zone
    not null,
  created_by text
    not null,
  expiration timestamp with time zone, -- TODO: Write daemon component to remove from ipset once expired
  description text not null,
  check (
    expiration is null or expiration>=created
  ),
  unique("set", entry, "prefix")
);
grant all            on net."IpSetEntry" to aoadmin;
grant select, insert on net."IpSetEntry" to aoserv_app;
 */
