create index "CyrusImapdBind_cyrus_imapd_server_fkey" on email."CyrusImapdBind" (
  cyrus_imapd_server
);
create index "CyrusImapdBind_certificate_fkey" on email."CyrusImapdBind" (
  certificate
);
