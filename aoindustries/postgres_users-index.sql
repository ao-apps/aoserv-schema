create unique index postgres_users_uni on postgres_users (
  username,
  postgres_server
);
create unique index postgres_users_accounting_super on postgres_users (
  accounting,
  ao_server_resource
);
create index postgres_users_accounting_idx on postgres_users (
  accounting,
  username
);
create unique index postgres_users_ao_server_super on postgres_users (
  ao_server,
  ao_server_resource
);
create index postgres_users_ao_server_idx on postgres_users (
  ao_server,
  postgres_server
);
create unique index postgres_users_super on postgres_users (
  postgres_server,
  ao_server_resource
);
