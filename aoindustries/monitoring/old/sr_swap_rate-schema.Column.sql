select "schema".add_column('monitoring', 'sr_swap_rate', 'server_report', 'fkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_swap_rate', 'in_min',        'float', false, false, false, 'minimum swap reads per second', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_swap_rate', 'in_avg',        'float', false, false, false, 'average swap reads per second', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_swap_rate', 'in_max',        'float', false, false, false, 'maximum swap reads per second', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_swap_rate', 'out_min',       'float', false, false, false, 'minimum swap writes per second', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_swap_rate', 'out_avg',       'float', false, false, false, 'average swap writes per second', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_swap_rate', 'out_max',       'float', false, false, false, 'maximum swap writes per second', '1.0a100', '1.30');
