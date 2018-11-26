/* TODO
alter table net."IpSetEntry"
  add constraint set_fkey
  foreign key ("set")
  references net."IpSet" (id)
  on delete restrict
  on update cascade
;
alter table net."IpSetEntry"
  add constraint created_fkey
  foreign key (created_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
 */
