alter table net."TcpRedirect"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
