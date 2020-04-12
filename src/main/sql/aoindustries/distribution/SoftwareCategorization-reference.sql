alter table distribution."SoftwareCategorization"
  add constraint name_fkey
  foreign key ("name")
  references distribution."Software" ("name")
  on delete restrict
  on update cascade
;
alter table distribution."SoftwareCategorization"
  add constraint class_fkey
  foreign key ("class")
  references distribution."SoftwareCategory" ("name")
  on delete restrict
  on update cascade
;
