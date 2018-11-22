create index "MajordomoServer_linux_server_account_fkey" on email."MajordomoServer" (
  linux_server_account
);
create index "MajordomoServer_linux_server_group_fkey" on email."MajordomoServer" (
  linux_server_group
);
create index "MajordomoServer_version_fkey" on email."MajordomoServer" (
  version
);
create index "MajordomoServer_majordomo_pipe_address_fkey" on email."MajordomoServer" (
  majordomo_pipe_address
);
create index "MajordomoServer_owner_majordomo_add_fkey" on email."MajordomoServer" (
  owner_majordomo_add
);
create index "MajordomoServer_majordomo_owner_add_fkey" on email."MajordomoServer" (
  majordomo_owner_add
);
