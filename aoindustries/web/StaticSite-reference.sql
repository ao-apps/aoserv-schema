alter table web."StaticSite"
  add constraint httpd_site_fkey
  foreign key (httpd_site)
  references web."Site" (id)
  on delete restrict
  on update cascade
;
