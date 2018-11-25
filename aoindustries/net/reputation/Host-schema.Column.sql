select "schema".add_column('net/reputation', 'ip_reputation_set_hosts', 'pkey',            'long',       false,  true, false, 'a generated, unique key',                          '1.65', null);
select "schema".add_column('net/reputation', 'ip_reputation_set_hosts', 'set_fkey',        'fkey',       false, false, false, 'the IP Reputation Set',                            '1.65', '1.65');
select "schema".add_column('net/reputation', 'ip_reputation_set_hosts', 'set',             'fkey',       false, false, false, 'the IP Reputation Set',                            '1.66', null);
select "schema".add_column('net/reputation', 'ip_reputation_set_hosts', 'host',            'int',        false, false, false, 'the per-set unique 32-bit IP address, big-endian', '1.65', '1.66');
select "schema".add_column('net/reputation', 'ip_reputation_set_hosts', 'host',            'ip_address', false, false, false, 'the per-set unique IPv4 address',                  '1.67', null);
select "schema".add_column('net/reputation', 'ip_reputation_set_hosts', 'good_reputation', 'short',      false, false, false, 'the current good reputation',                      '1.65', null);
select "schema".add_column('net/reputation', 'ip_reputation_set_hosts', 'bad_reputation',  'short',      false, false, false, 'the current bad repuation',                        '1.65', null);
