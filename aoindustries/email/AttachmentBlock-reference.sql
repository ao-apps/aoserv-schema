alter table email."AttachmentBlock"
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux."UserServer" (id)
  on delete restrict
  on update cascade
;
alter table email."AttachmentBlock"
  add constraint extension_fkey
  foreign key (extension)
  references email."AttachmentType" (extension)
  on delete restrict
  on update cascade
;
