alter table web."RewriteRule"
  add constraint "virtualHost_fkey"
  foreign key ("virtualHost")
  references web."VirtualHost" (id)
  on delete cascade
  on update cascade
;
