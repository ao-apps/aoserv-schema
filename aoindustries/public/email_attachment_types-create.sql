create table email_attachment_types (
  extension text
    constraint email_attachment_types_pkey primary key,
  description text
    not null,
  is_default_block bool
    not null
);
grant all on email_attachment_types to aoadmin;
grant select, update on email_attachment_types to aoserv_app;
