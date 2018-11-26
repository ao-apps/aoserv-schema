alter table email."CyrusImapdServer"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table email."CyrusImapdServer"
  add constraint sieve_net_bind_fkey
  foreign key (sieve_net_bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
alter table email."CyrusImapdServer"
  add constraint certificate_fkey
  foreign key (certificate)
  references pki."Certificate" (id)
  on delete restrict
  on update cascade
;
