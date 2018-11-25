/* TODO
create sequence net."IpSet_pkey_seq" cycle;
grant all       on net."IpSet_pkey_seq" to aoadmin;
grant select    on net."IpSet_pkey_seq" to aoserv_app;

create table net."IpSet" (
  pkey integer
    default nextval('net."IpSet_pkey_seq"')
    primary key,
  accounting text
    not null,
  identifier text
    not null
    check (
      net."validateIpSetIdentifier"(identifier) IS NULL
    )
    unique,
  description text not null,
  -- Allows a subaccount to use the set.  They cannot query the specific set members, however.
  allow_subaccount_use boolean
    not null
);
grant all    on net."IpSet" to aoadmin;
grant select on net."IpSet" to aoserv_app;

BEGIN;
INSERT INTO net."IpSet" VALUES (
    1,
    'AOINDUSTRIES',
    'admins',
    'Service Provider Administrators',
    true
);
INSERT INTO net."IpSet" VALUES (
    2,
    'AOINDUSTRIES',
    'nameservers',
    'Service Provider Name Servers',
    true
);
INSERT INTO net."IpSet" VALUES (
    3,
    'AOINDUSTRIES',
    'master',
    'Service Provider Master Servers',
    true
);
INSERT INTO net."IpSet" VALUES (
    4,
    'AOINDUSTRIES',
    'monitoring',
    'Service Provider Monitoring Servers',
    true
);
INSERT INTO net."IpSet" VALUES (
    5,
    'AOINDUSTRIES',
    'javatator',
    'Javatator Database Administration Web Interface',
    false
);
SELECT setval('net."IpSet_pkey_seq"', 6, false);
COMMIT;
 */
