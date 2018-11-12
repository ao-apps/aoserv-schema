alter table majordomo_lists
  add constraint email_list_fkey
  foreign key (email_list)
  references email_lists (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_lists
  add constraint majordomo_server_fkey
  foreign key (majordomo_server)
  references majordomo_servers (domain)
  on delete restrict
  on update cascade
;
alter table majordomo_lists
  add constraint listname_pipe_add_fkey
  foreign key (listname_pipe_add)
  references email_pipe_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_lists
  add constraint listname_list_add_fkey
  foreign key (listname_list_add)
  references email_list_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_lists
  add constraint owner_listname_add_fkey
  foreign key (owner_listname_add)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_lists
  add constraint listname_owner_add_fkey
  foreign key (listname_owner_add)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_lists
  add constraint listname_approval_add_fkey
  foreign key (listname_approval_add)
  references email_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table majordomo_lists
  add constraint listname_request_pipe_add_fkey
  foreign key (listname_request_pipe_add)
  references email_pipe_addresses (pkey)
  on delete restrict
  on update cascade
;
