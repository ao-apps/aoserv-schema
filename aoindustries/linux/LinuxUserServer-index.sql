create index "LinuxUserServer_ao_server_uid_idx" on linux."LinuxUserServer" (
  ao_server,
  uid
);
create index "LinuxUserServer_uid_idx" on linux."LinuxUserServer" (
  uid
);
create index "LinuxUserServer_autoresponder_from_fkey" on linux."LinuxUserServer" (
  autoresponder_from
);
create index "LinuxUserServer_disable_log_fkey" on linux."LinuxUserServer" (
  disable_log
);
create index "LinuxUserServer_sa_integration_mode_fkey" on linux."LinuxUserServer" (
  sa_integration_mode
);
