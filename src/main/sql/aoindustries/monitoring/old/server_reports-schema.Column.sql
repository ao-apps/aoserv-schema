select "schema".add_column('monitoring', 'server_reports', 'pkey',            'pkey',     false,  true, false, 'a unique, generated key', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'server_reports', 'time',            'time',     false, false, false, 'time these stats were reported (the ending time of the interval)', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'server_reports', 'interval',        'interval', false, false, false, 'time interval in milliseconds seconds that these stats apply to', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'server_reports', 'ao_server',       'fkey',     false, false, false, 'the pkey of the server that these stats are for', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'server_reports', 'failover_server', 'fkey',      true, false, false, 'the pkey of the outer server for this server at the time of this report', '1.0a100', '1.30');
