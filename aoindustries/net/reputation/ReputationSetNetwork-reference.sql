alter table "net/reputation"."ReputationSetNetwork"
  add constraint set_fkey
  foreign key ("set")
  references "net/reputation"."ReputationSet" (pkey)
  on delete restrict
  on update cascade
;
