create sequence net."FirewallZone_pkey_seq" cycle;
grant all    on net."FirewallZone_pkey_seq" to aoadmin;
-- grant select on net."FirewallZone_pkey_seq" to aoserv_app;

create table net."FirewallZone" (
  pkey integer
    default nextval('net."FirewallZone_pkey_seq"')
    primary key,
  -- TODO: Should we allow zones to span multiple servers?
  --       A zone exists, and servers are added to it, versus a zone being duplicated across servers?
  --       This might become more important once we're tracking the IP addresses in the zone within AOServ
  server integer
    not null,
  "name" text
    not null,
  short text,
  description text,
  fail2ban boolean
    not null
    default "name" in ('dmz', 'external', 'public'),
  unique(server, "name")
);
grant all    on net."FirewallZone" to aoadmin;
grant select on net."FirewallZone" to aoserv_app;
