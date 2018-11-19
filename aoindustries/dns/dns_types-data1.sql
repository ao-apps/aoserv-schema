begin;
--                            type     description      has_priority  has_weight  has_port  param_ip
insert into dns_types values('A',     'IPv4 Address',   false,        false,      false,    true);
insert into dns_types values('AAAA',  'IPv6 Address',   false,        false,      false,    true);
insert into dns_types values('CNAME', 'Canonical Name', false,        false,      false,    false);
insert into dns_types values('MX',    'Mail Exchanger', true,         false,      false,    false);
insert into dns_types values('NS',    'Name Server',    false,        false,      false,    false);
insert into dns_types values('PTR',   'Pointer',        false,        false,      false,    false);
insert into dns_types values('SRV',   'Service',        true,         true,       true,     false);
insert into dns_types values('TXT',   'Text Record',    false,        false,      false,    false);
commit;
