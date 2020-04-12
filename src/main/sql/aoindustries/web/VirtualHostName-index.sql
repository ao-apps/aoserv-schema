create index "VirtualHostName_httpd_site_bind_fkey" on web."VirtualHostName" (
  httpd_site_bind
);
create unique index "VirtualHostName_is_primary_uni" on web."VirtualHostName" (
  httpd_site_bind
) where is_primary;
