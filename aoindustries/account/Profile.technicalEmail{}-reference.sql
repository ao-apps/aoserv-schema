alter table account."Profile.technicalEmail{}"
  add constraint id_fkey
  foreign key (id)
  references account."Profile" (id)
  on delete cascade
  on update cascade
;
