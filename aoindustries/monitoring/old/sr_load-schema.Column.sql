select "schema".add_column('monitoring', 'sr_load', 'server_report', 'fkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_load', 'min',           'float', false, false, false, 'minimum load', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_load', 'avg',           'float', false, false, false, 'average load', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_load', 'max',           'float', false, false, false, 'maximum load', '1.0a100', '1.30');
