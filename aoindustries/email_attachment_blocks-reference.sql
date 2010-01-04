alter table email_attachment_blocks
  add constraint email_inbox_fkey
  foreign key (email_inbox)
  references email_inboxes (linux_account)
  on delete restrict
  on update cascade
;
alter table email_attachment_blocks
  add constraint extension_fkey
  foreign key (extension)
  references email_attachment_types (extension)
  on delete restrict
  on update cascade
;
