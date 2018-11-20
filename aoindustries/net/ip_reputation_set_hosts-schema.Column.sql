select "schema".add_column('net', 'ip_reputation_set_hosts', 'pkey',            0, 'long',       false, true,  false, 'a generated, unique key',                          '1.65', null);
select "schema".add_column('net', 'ip_reputation_set_hosts', 'set_fkey',        1, 'fkey',       false, false, false, 'the IP Reputation Set',                            '1.65', '1.65');
select "schema".add_column('net', 'ip_reputation_set_hosts', 'set',             2, 'fkey',       false, false, false, 'the IP Reputation Set',                            '1.66', null);
select "schema".add_column('net', 'ip_reputation_set_hosts', 'host',            3, 'int',        false, false, false, 'the per-set unique 32-bit IP address, big-endian', '1.65', '1.66');
select "schema".add_column('net', 'ip_reputation_set_hosts', 'host',            4, 'ip_address', false, false, false, 'the per-set unique IPv4 address',                  '1.67', null);
select "schema".add_column('net', 'ip_reputation_set_hosts', 'good_reputation', 5, 'short',      false, false, false, 'the current good reputation',                      '1.65', null);
select "schema".add_column('net', 'ip_reputation_set_hosts', 'bad_reputation',  6, 'short',      false, false, false, 'the current bad repuation',                        '1.65', null);
