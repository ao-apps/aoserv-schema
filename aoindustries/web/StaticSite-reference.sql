alter table web."StaticSite"
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references web."Site" (pkey)
  on delete restrict
  on update cascade
;
