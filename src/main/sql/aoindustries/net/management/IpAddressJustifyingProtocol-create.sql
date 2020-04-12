create table "net.management"."IpAddressJustifyingProtocol" (
  "appProtocol" text
    primary key,
  justied boolean
    not null,
  comment text
);
grant all on "net.management"."IpAddressJustifyingProtocol" to aoadmin;

comment on table "net.management"."IpAddressJustifyingProtocol" is
'The set of protocols that justify alias IP addresses on a server.
When an IP address does not have any of these services running on it, it is
a candidate for release from the server.';
