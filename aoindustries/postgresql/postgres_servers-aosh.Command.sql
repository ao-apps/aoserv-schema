select aosh.add_command(
  'check_postgres_server_name',
  'postgresql',
  'postgres_servers',
  'checks the format of a PostgreSQL server name',
  '<i>name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_postgres_server_name_available',
  'postgresql',
  'postgres_servers',
  'determines if a PostgreSQL server name is available',
  '<i>server_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_postgresql',
  'postgresql',
  'postgres_servers',
  'restarts the PostgreSQL database server',
  '<i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_postgresql',
  'postgresql',
  'postgres_servers',
  'starts the PostgreSQL database server',
  '<i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_postgresql',
  'postgresql',
  'postgres_servers',
  'stops the PostgreSQL database server',
  '<i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'wait_for_postgres_server_rebuild',
  'postgresql',
  'postgres_servers',
  'waits for any pending or current database server config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
