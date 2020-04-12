begin;
--                                   type     description      has_priority  has_weight  has_port  param_ip
insert into dns."RecordType" values('A',     'IPv4 Address',   false,        false,      false,    true);
insert into dns."RecordType" values('AAAA',  'IPv6 Address',   false,        false,      false,    true);
insert into dns."RecordType" values('CNAME', 'Canonical Name', false,        false,      false,    false);
insert into dns."RecordType" values('MX',    'Mail Exchanger', true,         false,      false,    false);
insert into dns."RecordType" values('NS',    'Name Server',    false,        false,      false,    false);
insert into dns."RecordType" values('PTR',   'Pointer',        false,        false,      false,    false);
insert into dns."RecordType" values('SRV',   'Service',        true,         true,       true,     false);
insert into dns."RecordType" values('TXT',   'Text Record',    false,        false,      false,    false);
commit;
