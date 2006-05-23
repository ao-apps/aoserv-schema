alter table file_paths
  add constraint parent_fkey
  foreign key (parent)
  references file_paths (pkey)
  on delete restrict
  on update cascade
;
