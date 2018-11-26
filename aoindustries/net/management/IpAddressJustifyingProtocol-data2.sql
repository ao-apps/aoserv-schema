begin;

-- Mail server
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'submission',
  true,
  'Mail server'
);
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'SMTP',
  true,
  'Mail server'
);
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'POP3',
  true,
  'Mail server'
);
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'IMAP2',
  true,
  'Mail server'
);
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'SIMAP',
  true,
  'Mail server'
);
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'SPOP3',
  true,
  'Mail server'
);
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'SMTPS',
  true,
  'Mail server'
);

-- Web server
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'HTTP',
  false,
  'Web server'
);
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'HTTPS',
  true,
  'Web server'
);

-- FTP server
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'FTP-DATA',
  false,
  'FTP server'
);
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'FTP',
  false,
  'FTP server'
);

-- Other
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'DNS',
  true,
  'Nameservers'
);
insert into "net.management"."IpAddressJustifyingProtocol" values (
  'user',
  true,
  'Custom user process'
);

commit;
