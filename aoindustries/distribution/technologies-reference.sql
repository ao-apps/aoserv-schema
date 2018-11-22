alter table technologies
  add constraint name_fkey
  foreign key ("name")
  references technology_names ("name")
  on delete restrict
  on update cascade
;
alter table technologies
  add constraint class_fkey
  foreign key ("class")
  references distribution."SoftwareCategory" ("name")
  on delete restrict
  on update cascade
;
