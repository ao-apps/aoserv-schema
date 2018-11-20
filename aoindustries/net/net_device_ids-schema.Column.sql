select "schema".add_column('net', 'net_device_ids', 'name', 0, 'string', false, true, true, 'the unique name of the device', '1.0a100', null);
select "schema".add_column('net', 'net_device_ids', 'is_loopback', 1, 'boolean', false, false, true, 'if the device is the loopback device', '1.0a100', null);
