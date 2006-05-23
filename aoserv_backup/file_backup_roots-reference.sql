alter table file_backup_roots
  add constraint parent_fkey
  foreign key (parent)
  references file_paths (pkey)
  on delete restrict
  on update cascade
;
alter table file_backup_roots
  add constraint file_path_fkey
  foreign key (file_path)
  references file_paths (pkey)
  on delete restrict
  on update cascade
;
alter table file_backup_roots
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table file_backup_roots
  add constraint package_fkey
  foreign key (package)
  references packages (pkey)
  on delete restrict
  on update cascade
;
