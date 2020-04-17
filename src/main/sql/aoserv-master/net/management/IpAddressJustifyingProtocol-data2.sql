/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

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
