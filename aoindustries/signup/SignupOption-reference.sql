alter table signup."SignupOption"
  add constraint request_fkey
  foreign key (request)
  references signup."SignupRequest" (pkey)
  on delete cascade
  on update cascade
;
