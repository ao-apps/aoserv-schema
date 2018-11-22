create sequence         email."AttachmentBlock_pkey_seq" cycle;
grant all            on email."AttachmentBlock_pkey_seq" to aoadmin;
grant select, update on email."AttachmentBlock_pkey_seq" to aoserv_app;

create table email."AttachmentBlocks" (
  pkey integer
    default nextval('email."AttachmentBlock_pkey_seq"')
    primary key,
  linux_server_account integer
    not null,
  extension text
    not null,
  unique(linux_server_account, extension)
);
grant all                    on email."AttachmentBlocks" to aoadmin;
grant select, insert, delete on email."AttachmentBlocks" to aoserv_app;
