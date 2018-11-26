create sequence         email."AttachmentBlock_id_seq" cycle;
grant all            on email."AttachmentBlock_id_seq" to aoadmin;
grant select, update on email."AttachmentBlock_id_seq" to aoserv_app;

-- TODO: Rename to singular
create table email."AttachmentBlock" (
  id integer
    default nextval('email."AttachmentBlock_id_seq"')
    primary key,
  linux_server_account integer
    not null,
  extension text
    not null,
  unique(linux_server_account, extension)
);
grant all                    on email."AttachmentBlock" to aoadmin;
grant select, insert, delete on email."AttachmentBlock" to aoserv_app;
