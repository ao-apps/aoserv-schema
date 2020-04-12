create table email."AttachmentType" (
  extension text
    primary key,
  description text
    not null,
  is_default_block boolean
    not null
);
grant all    on email."AttachmentType" to aoadmin;
grant select on email."AttachmentType" to aoserv_app;

