create sequence email_attachment_blocks_pkey_seq cycle;
grant all on email_attachment_blocks_pkey_seq to aoadmin;
grant select, update on email_attachment_blocks_pkey_seq to aoserv_app;

create table email_attachment_blocks (
  pkey integer
    default nextval('email_attachment_blocks_pkey_seq')
    constraint email_attachment_blocks_pkey primary key,
  email_inbox integer
    not null,
  extension text
    not null,
  unique(email_inbox, extension)
);
grant all on email_attachment_blocks to aoadmin;
grant select, insert, delete on email_attachment_blocks to aoserv_app;
