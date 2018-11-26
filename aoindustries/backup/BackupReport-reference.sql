alter table backup."BackupReport"
  add constraint server_fkey
  foreign key (server)
  references server."Server" (id)
  on delete restrict
  on update cascade
;
alter table backup."BackupReport"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" (id)
  on delete restrict
  on update cascade
;
