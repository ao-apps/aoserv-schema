create table dns_zones (
  resource integer primary key,
  resource_type text not null check (resource_type='dns_zone'), -- Used as hidden constant type reference constraint
  accounting text not null, -- Used as hidden reference to resources
  "zone" text not null check (
    "zone"=lower("zone") -- Must be lowercase
    and "zone"!='apple.com' and "zone" not like '%.apple.com'
    and "zone"!='berkeley.edu' and "zone" not like '%.berkeley.edu'
    and "zone"!='centos.org' and "zone" not like '%.centos.org'
    and "zone"!='cnet.com' and "zone" not like '%.cnet.com'
    and "zone"!='connectiv.com' and "zone" not like '%.connectiv.com'
    and "zone"!='dec.com' and "zone" not like '%.dec.com'
    and "zone"!='google.com' and "zone" not like '%.google.com'
    and "zone"!='hotbot.com' and "zone" not like '%.hotbot.com'
    and "zone"!='hp.com' and "zone" not like '%.hp.com'
    and "zone"!='ibm.com' and "zone" not like '%.ibm.com'
    and "zone"!='isc.org' and "zone" not like '%.isc.org'
    and "zone"!='isi.edu' and "zone" not like '%.isi.edu'
    and "zone"!='lycos.com' and "zone" not like '%.lycos.com'
    and "zone"!='mandrake.com' and "zone" not like '%.mandrake.com'
    and "zone"!='mandriva.com' and "zone" not like '%.mandriva.com'
    and "zone"!='metacrawler.com' and "zone" not like '%.metacrawler.com'
    and "zone"!='microsoft.com' and "zone" not like '%.microsoft.com'
    and "zone"!='mit.edu' and "zone" not like '%.mit.edu'
    and "zone"!='nasa.gov' and "zone" not like '%.nasa.gov'
    and "zone"!='navy.mil' and "zone" not like '%.navy.mil'
    and "zone"!='okstate.edu' and "zone" not like '%.okstate.edu'
    and "zone"!='psu.edu' and "zone" not like '%.psu.edu'
    and "zone"!='redhat.com' and "zone" not like '%.redhat.com'
    and "zone"!='rpmfind.net' and "zone" not like '%.rpmfind.net'
    and "zone"!='search.com' and "zone" not like '%.search.com'
    and "zone"!='sun.com' and "zone" not like '%.sun.com'
    and "zone"!='surfnet.nl' and "zone" not like '%.surfnet.nl'
    and "zone"!='truetime.com' and "zone" not like '%.truetime.com'
    and "zone"!='via.net' and "zone" not like '%.via.net'
    and "zone"!='wustl.edu' and "zone" not like '%.wustl.edu'
    and "zone"!='xmission.com' and "zone" not like '%.xmission.com'
    and "zone"!='yahoo.com' and "zone" not like '%.yahoo.com'
  ),
  "file" text not null check ("file" not like '%/%'),
  hostmaster text not null,
  serial int8 not null check (serial>0),
  ttl integer not null check (ttl>0)
);
grant all on dns_zones to aoadmin;
grant select, insert, update, delete on dns_zones to aoserv_app;
