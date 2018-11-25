create index "UserServer_ao_server_uid_idx" on linux."UserServer" (
  ao_server,
  uid
);
create index "UserServer_uid_idx" on linux."UserServer" (
  uid
);
create index "UserServer_autoresponder_from_fkey" on linux."UserServer" (
  autoresponder_from
);
create index "UserServer_disable_log_fkey" on linux."UserServer" (
  disable_log
);
create index "UserServer_sa_integration_mode_fkey" on linux."UserServer" (
  sa_integration_mode
);
